	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBKEYWORDINIT
SYMBKEYWORDINIT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0155:
mov dword ptr [ebp-4], 0
.L_0157:
mov eax, dword ptr [ebp-4]
sal eax, 4
cmp dword ptr [KWDTB+eax], 0
je .L_0158
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [KWDTB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [KWDTB+ebx+12]
and eax, 1
test eax, eax
je .L_015A
cmp dword ptr [ENV+136], 3
jne .L_015C
push 0
push -1
push 0
push dword ptr [ebp-8]
push 3
push offset Lt_015D
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0165
call fb_StrAssign
add esp, 20
mov eax, dword ptr [Lt_0165]
mov dword ptr [ebp-8], eax
.L_015C:
.L_015B:
.L_015A:
.L_0159:
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [KWDTB+eax+12]
and ebx, 4
test ebx, ebx
je .L_0160
cmp dword ptr [ENV+136], 3
je .L_0162
inc dword ptr [ebp-4]
jmp .L_0157
.L_0162:
.L_0161:
.L_0160:
.L_015F:
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [KWDTB+ebx+12]
and eax, 2
test eax, eax
je .L_0164
push 1048576
push 17
push 0
mov eax, dword ptr [ebp-4]
sal eax, 4
push dword ptr [KWDTB+eax+8]
mov eax, dword ptr [ebp-4]
sal eax, 4
push dword ptr [KWDTB+eax+4]
push dword ptr [ebp-8]
call SYMBADDKEYWORD
add esp, 24
jmp .L_0163
.L_0164:
push 0
push -2147483648
push 0
mov eax, dword ptr [ebp-4]
sal eax, 4
push dword ptr [KWDTB+eax+8]
mov eax, dword ptr [ebp-4]
sal eax, 4
push dword ptr [KWDTB+eax+4]
push dword ptr [ebp-8]
call SYMBADDKEYWORD
add esp, 24
.L_0163:
inc dword ptr [ebp-4]
jmp .L_0157
.L_0158:
.L_0156:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0165,12

.section .text
.balign 16

.globl SYMBADDKEYWORD
SYMBADDKEYWORD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0166:
push 0
push dword ptr [ebp+28]
push 0
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+8]
push 6
push dword ptr [ebp+20]
lea eax, [SYMB+98408]
push eax
push 0
push 33
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0169
mov dword ptr [ebp-4], 0
jmp .L_0167
.L_0169:
.L_0168:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0167:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBKEYWORDGETTEXT
SYMBKEYWORDGETTEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_016A:
mov dword ptr [ebp-8], 0
.L_016F:
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [KWDTB+eax+4], ebx
jne .L_0171
mov ebx, dword ptr [ebp-8]
sal ebx, 4
mov eax, dword ptr [KWDTB+ebx]
mov dword ptr [ebp-4], eax
jmp .L_016B
.L_0171:
.L_0170:
.L_016D:
inc dword ptr [ebp-8]
.L_016C:
cmp dword ptr [ebp-8], 262
jle .L_016F
.L_016E:
mov eax, offset Lt_0000
mov dword ptr [ebp-4], eax
.L_016B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBKEYWORDCONSTSINIT
SYMBKEYWORDCONSTSINIT:
push ebp
mov ebp, esp
sub esp, 28
.L_0172:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov word ptr [ebp-12], 0
mov byte ptr [ebp-10], 0
mov dword ptr [ebp-24], 3072
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+136], 3
jne .L_0175
push -1
push 3
push offset Lt_015D
push 11
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push -1
push 6
push offset KWDFALSE
push 11
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0174
.L_0175:
push -1
push 6
push offset KWDFALSE
push 11
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
.L_0174:
push dword ptr [ebp-24]
lea eax, [ebp-8]
push eax
push 0
push 1
lea eax, [ebp-20]
push eax
call SYMBADDCONST
add esp, 20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0177
mov eax, dword ptr [ebp-28]
or dword ptr [eax+12], 1048576
.L_0177:
.L_0176:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
cmp dword ptr [ENV+136], 3
jne .L_0179
push -1
push 3
push offset Lt_015D
push 11
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push -1
push 5
push offset KWDTRUE
push 11
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0178
.L_0179:
push -1
push 5
push offset KWDTRUE
push 11
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
.L_0178:
push dword ptr [ebp-24]
lea eax, [ebp-8]
push eax
push 0
push 1
lea eax, [ebp-20]
push eax
call SYMBADDCONST
add esp, 20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_017B
mov eax, dword ptr [ebp-28]
or dword ptr [eax+12], 1048576
.L_017B:
.L_017A:
.L_0173:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBKEYWORDTYPEINIT
SYMBKEYWORDTYPEINIT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_017C:
cmp dword ptr [ENV+136], 3
jne .L_0180
mov eax, offset Lt_0181
mov dword ptr [ebp-8], eax
jmp .L_017F
.L_0180:
mov eax, offset Lt_0182
mov dword ptr [ebp-8], eax
.L_017F:
call FBGETBACKENDVALISTTYPE
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 2
jne .L_0185
.L_0186:
mov dword ptr [ebp-12], 19922976
mov ebx, dword ptr [SYMB_DTYPETB+676]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call SYMBADDTYPEDEF
add esp, 20
jmp .L_0183
.L_0185:
cmp dword ptr [ebp-16], 3
jne .L_0187
.L_0188:
push 0
push 0
push 0
push 0
push 0
push offset Lt_0189
push offset Lt_0189
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push 0
push 0
push 12
push offset Lt_019A
push 0
push offset Lt_018A
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 12
push offset Lt_019A
push 0
push offset Lt_018B
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_019A
push 0
push offset Lt_018C
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_019A
push 0
push offset Lt_018D
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push dword ptr [ebp-4]
call SYMBSTRUCTEND
add esp, 8
mov eax, dword ptr [ebp-4]
or dword ptr [eax+116], 3145728
mov eax, dword ptr [ebp-4]
push dword ptr [eax+44]
push dword ptr [eax+40]
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, -32505857
or ebx, 19922944
push ebx
push dword ptr [ebp-8]
call SYMBADDTYPEDEF
add esp, 20
jmp .L_0183
.L_0187:
cmp dword ptr [ebp-16], 4
jne .L_018E
.L_018F:
push 0
push 0
push 0
push 0
push 0
push offset Lt_0190
push offset Lt_0190
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_019A
push 0
push offset Lt_0191
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_019A
push 0
push offset Lt_0192
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_019A
push 0
push offset Lt_0193
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 11
push offset Lt_019A
push 0
push offset Lt_0194
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 11
push offset Lt_019A
push 0
push offset Lt_0195
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push dword ptr [ebp-4]
call SYMBSTRUCTEND
add esp, 8
mov eax, dword ptr [ebp-4]
or dword ptr [eax+116], 4194304
mov eax, dword ptr [ebp-4]
push dword ptr [eax+44]
push dword ptr [eax+40]
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, -32505857
or ebx, 19922944
push ebx
push dword ptr [ebp-8]
call SYMBADDTYPEDEF
add esp, 20
jmp .L_0183
.L_018E:
cmp dword ptr [ebp-16], 5
jne .L_0196
.L_0197:
push 0
push 0
push 0
push 0
push 0
push offset Lt_0190
push offset Lt_0190
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_019A
push 0
push offset Lt_0198
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 40
push 0
push dword ptr [ebp-4]
call SYMBSTRUCTEND
add esp, 8
mov eax, dword ptr [ebp-4]
or dword ptr [eax+116], 5242880
mov eax, dword ptr [ebp-4]
push dword ptr [eax+44]
push dword ptr [eax+40]
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, -32505857
or ebx, 19922944
push ebx
push dword ptr [ebp-8]
call SYMBADDTYPEDEF
add esp, 20
jmp .L_0183
.L_0196:
mov dword ptr [ebp-12], 4194336
mov eax, dword ptr [SYMB_DTYPETB+676]
mov ebx, eax
sar ebx, 31
push ebx
push eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call SYMBADDTYPEDEF
add esp, 20
.L_0199:
.L_0183:
.L_017D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_019B,16

.section .data
.balign 4
Lt_019A:
.int Lt_019B
.int Lt_019B
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
fb_ctor__symbzkeyword:
.L_0002:
.L_0003:
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

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
KWDTB:
.int Lt_005D
.int 288
.int 5
.skip 4,0
.int Lt_005E
.int 289
.int 5
.skip 4,0
.int Lt_005F
.int 290
.int 5
.skip 4,0
.int Lt_0060
.int 291
.int 5
.skip 4,0
.int Lt_0061
.int 292
.int 5
.skip 4,0
.int Lt_0062
.int 293
.int 5
.skip 4,0
.int Lt_0063
.int 294
.int 5
.skip 4,0
.int Lt_0064
.int 295
.int 5
.skip 4,0
.int Lt_0065
.int 296
.int 5
.skip 4,0
.int Lt_0066
.int 297
.int 5
.int 1
.int Lt_0067
.int 298
.int 5
.int 1
.int Lt_0068
.int 389
.int 5
.int 1
.int Lt_0069
.int 390
.int 5
.int 1
.int Lt_006A
.int 260
.int 1
.skip 4,0
.int Lt_006B
.int 308
.int 1
.skip 4,0
.int Lt_006C
.int 448
.int 1
.skip 4,0
.int Lt_006D
.int 449
.int 1
.skip 4,0
.int Lt_006E
.int 450
.int 1
.skip 4,0
.int Lt_006F
.int 451
.int 1
.int 1
.int Lt_0070
.int 461
.int 1
.skip 4,0
.int Lt_0071
.int 307
.int 1
.skip 4,0
.int Lt_0072
.int 312
.int 1
.skip 4,0
.int Lt_0073
.int 356
.int 1
.int 1
.int Lt_0074
.int 357
.int 1
.int 1
.int Lt_0075
.int 358
.int 1
.int 1
.int Lt_0076
.int 359
.int 1
.int 1
.int Lt_0077
.int 360
.int 1
.int 1
.int Lt_0078
.int 361
.int 1
.skip 4,0
.int Lt_0079
.int 362
.int 1
.int 1
.int Lt_007A
.int 363
.int 1
.skip 4,0
.int Lt_007B
.int 364
.int 1
.int 1
.int Lt_007C
.int 365
.int 1
.int 1
.int Lt_007D
.int 366
.int 1
.int 1
.int Lt_007E
.int 367
.int 1
.skip 4,0
.int Lt_007F
.int 368
.int 1
.skip 4,0
.int Lt_0080
.int 369
.int 1
.int 2
.int Lt_0081
.int 370
.int 1
.int 1
.int Lt_0082
.int 371
.int 1
.int 1
.int Lt_0083
.int 375
.int 1
.int 1
.int Lt_0084
.int 372
.int 1
.skip 4,0
.int Lt_0085
.int 373
.int 1
.int 1
.int Lt_0086
.int 374
.int 1
.int 1
.int Lt_0087
.int 377
.int 1
.int 1
.int Lt_0088
.int 273
.int 1
.skip 4,0
.int Lt_0089
.int 274
.int 1
.skip 4,0
.int Lt_008A
.int 275
.int 1
.skip 4,0
.int Lt_008B
.int 276
.int 1
.int 1
.int Lt_008C
.int 401
.int 1
.int 1
.int Lt_008D
.int 402
.int 1
.int 1
.int Lt_008E
.int 404
.int 1
.int 1
.int Lt_008F
.int 406
.int 1
.skip 4,0
.int Lt_0090
.int 408
.int 1
.skip 4,0
.int Lt_0091
.int 410
.int 1
.int 1
.int Lt_0092
.int 403
.int 1
.int 1
.int Lt_0093
.int 405
.int 1
.int 1
.int Lt_0094
.int 407
.int 1
.int 1
.int Lt_0095
.int 409
.int 1
.int 1
.int Lt_0096
.int 411
.int 1
.int 1
.int Lt_0097
.int 412
.int 1
.skip 4,0
.int Lt_0098
.int 413
.int 1
.skip 4,0
.int Lt_0099
.int 414
.int 1
.int 1
.int Lt_009A
.int 415
.int 1
.int 1
.int Lt_009B
.int 416
.int 1
.int 1
.int Lt_009C
.int 417
.int 1
.int 1
.int Lt_009D
.int 395
.int 1
.skip 4,0
.int Lt_009E
.int 319
.int 1
.skip 4,0
.int Lt_009F
.int 320
.int 1
.skip 4,0
.int Lt_00A0
.int 376
.int 1
.skip 4,0
.int Lt_00A1
.int 334
.int 1
.skip 4,0
.int Lt_00A2
.int 393
.int 1
.skip 4,0
.int Lt_00A3
.int 335
.int 1
.skip 4,0
.int Lt_00A4
.int 281
.int 1
.skip 4,0
.int Lt_00A5
.int 282
.int 1
.skip 4,0
.int Lt_00A6
.int 283
.int 1
.skip 4,0
.int Lt_00A7
.int 284
.int 1
.skip 4,0
.int Lt_00A8
.int 336
.int 1
.skip 4,0
.int Lt_00A9
.int 337
.int 1
.int 1
.int Lt_00AA
.int 340
.int 1
.skip 4,0
.int Lt_00AB
.int 345
.int 1
.skip 4,0
.int Lt_00AC
.int 346
.int 1
.skip 4,0
.int Lt_00AD
.int 382
.int 1
.skip 4,0
.int Lt_00AE
.int 383
.int 1
.skip 4,0
.int Lt_00AF
.int 384
.int 1
.skip 4,0
.int Lt_00B0
.int 385
.int 1
.skip 4,0
.int Lt_00B1
.int 381
.int 1
.skip 4,0
.int Lt_00B2
.int 386
.int 1
.skip 4,0
.int Lt_00B3
.int 387
.int 1
.skip 4,0
.int Lt_00B4
.int 391
.int 1
.skip 4,0
.int Lt_00B5
.int 277
.int 1
.skip 4,0
.int Lt_00B6
.int 278
.int 1
.skip 4,0
.int Lt_00B7
.int 279
.int 1
.skip 4,0
.int Lt_00B8
.int 392
.int 1
.skip 4,0
.int Lt_00B9
.int 266
.int 1
.skip 4,0
.int Lt_00BA
.int 267
.int 1
.skip 4,0
.int Lt_00BB
.int 268
.int 1
.skip 4,0
.int Lt_00BC
.int 269
.int 1
.skip 4,0
.int Lt_00BD
.int 314
.int 1
.skip 4,0
.int Lt_00BE
.int 270
.int 1
.skip 4,0
.int Lt_00BF
.int 271
.int 1
.skip 4,0
.int Lt_00C0
.int 272
.int 1
.skip 4,0
.int Lt_00C1
.int 287
.int 1
.skip 4,0
.int Lt_00C2
.int 465
.int 2
.skip 4,0
.int Lt_00C3
.int 467
.int 1
.skip 4,0
.int Lt_00C4
.int 468
.int 1
.skip 4,0
.int Lt_00C5
.int 469
.int 1
.skip 4,0
.int Lt_00C6
.int 311
.int 1
.skip 4,0
.int Lt_00C7
.int 338
.int 1
.skip 4,0
.int Lt_00C8
.int 344
.int 1
.int 1
.int Lt_00C9
.int 306
.int 1
.int 1
.int Lt_00CA
.int 280
.int 1
.int 1
.int Lt_00CB
.int 285
.int 1
.int 1
.int Lt_00CC
.int 378
.int 1
.int 1
.int Lt_00CD
.int 379
.int 1
.int 1
.int Lt_00CE
.int 380
.int 1
.int 1
.int Lt_00CF
.int 398
.int 1
.int 1
.int Lt_00D0
.int 286
.int 1
.int 1
.int Lt_00D1
.int 341
.int 1
.int 1
.int Lt_00D2
.int 342
.int 1
.int 1
.int Lt_00D3
.int 388
.int 1
.int 1
.int Lt_00D4
.int 347
.int 1
.int 1
.int Lt_00D5
.int 348
.int 1
.int 1
.int Lt_00D6
.int 349
.int 1
.int 1
.int Lt_00D7
.int 350
.int 1
.int 1
.int Lt_00D8
.int 339
.int 1
.int 1
.int Lt_00D9
.int 351
.int 1
.int 1
.int Lt_00DA
.int 352
.int 1
.int 1
.int Lt_00DB
.int 353
.int 1
.int 1
.int Lt_00DC
.int 354
.int 1
.int 1
.int Lt_00DD
.int 355
.int 1
.int 1
.int Lt_00DE
.int 309
.int 1
.int 1
.int Lt_00DF
.int 503
.int 1
.int 1
.int Lt_00E0
.int 497
.int 1
.int 1
.int Lt_00E1
.int 447
.int 2
.skip 4,0
.int Lt_00E2
.int 493
.int 2
.skip 4,0
.int Lt_00E3
.int 500
.int 2
.skip 4,0
.int Lt_00E4
.int 315
.int 2
.skip 4,0
.int Lt_00E5
.int 466
.int 2
.int 1
.int Lt_00E6
.int 397
.int 2
.skip 4,0
.int Lt_00E7
.int 396
.int 2
.skip 4,0
.int Lt_00E8
.int 317
.int 2
.skip 4,0
.int Lt_00E9
.int 316
.int 2
.skip 4,0
.int Lt_00EA
.int 394
.int 2
.skip 4,0
.int Lt_00EB
.int 321
.int 2
.int 1
.int Lt_00EC
.int 322
.int 2
.int 1
.int Lt_00ED
.int 323
.int 2
.int 1
.int Lt_00EE
.int 324
.int 2
.int 1
.int Lt_00EF
.int 325
.int 2
.skip 4,0
.int Lt_00F0
.int 326
.int 2
.int 1
.int Lt_00F1
.int 327
.int 2
.skip 4,0
.int Lt_00F2
.int 328
.int 2
.int 1
.int Lt_00F3
.int 329
.int 2
.int 1
.int Lt_00F4
.int 330
.int 2
.int 1
.int Lt_00F5
.int 331
.int 2
.skip 4,0
.int Lt_00F6
.int 332
.int 2
.skip 4,0
.int Lt_00F7
.int 333
.int 2
.skip 4,0
.int Lt_00F8
.int 343
.int 2
.skip 4,0
.int Lt_00F9
.int 318
.int 2
.int 1
.int Lt_00FA
.int 399
.int 2
.skip 4,0
.int Lt_00FB
.int 498
.int 2
.skip 4,0
.int Lt_00FC
.int 499
.int 2
.skip 4,0
.int Lt_00FD
.int 452
.int 2
.skip 4,0
.int Lt_00FE
.int 453
.int 2
.int 1
.int Lt_00FF
.int 454
.int 2
.skip 4,0
.int Lt_0100
.int 455
.int 2
.int 1
.int Lt_0101
.int 456
.int 2
.skip 4,0
.int Lt_0102
.int 457
.int 2
.skip 4,0
.int Lt_0103
.int 458
.int 2
.skip 4,0
.int Lt_0104
.int 459
.int 2
.skip 4,0
.int Lt_0105
.int 460
.int 2
.skip 4,0
.int Lt_0106
.int 462
.int 2
.int 1
.int Lt_0107
.int 502
.int 2
.skip 4,0
.int Lt_0108
.int 501
.int 2
.skip 4,0
.int Lt_0109
.int 310
.int 2
.skip 4,0
.int Lt_010A
.int 494
.int 2
.skip 4,0
.int Lt_010B
.int 495
.int 2
.skip 4,0
.int Lt_010C
.int 496
.int 2
.skip 4,0
.int Lt_010D
.int 423
.int 2
.int 2
.int Lt_010E
.int 424
.int 2
.skip 4,0
.int Lt_010F
.int 425
.int 2
.skip 4,0
.int Lt_0110
.int 426
.int 2
.skip 4,0
.int Lt_0111
.int 427
.int 2
.skip 4,0
.int Lt_0112
.int 428
.int 2
.int 1
.int Lt_0113
.int 429
.int 2
.int 1
.int Lt_0114
.int 430
.int 2
.int 2
.int Lt_0115
.int 431
.int 2
.int 2
.int Lt_0116
.int 432
.int 2
.int 2
.int Lt_0117
.int 433
.int 2
.int 2
.int Lt_0118
.int 434
.int 2
.int 1
.int Lt_0119
.int 435
.int 2
.int 1
.int Lt_011A
.int 436
.int 2
.int 1
.int Lt_011B
.int 437
.int 2
.int 2
.int Lt_011C
.int 438
.int 2
.skip 4,0
.int Lt_011D
.int 439
.int 2
.int 1
.int Lt_011E
.int 440
.int 2
.int 1
.int Lt_011F
.int 441
.int 2
.int 2
.int Lt_0120
.int 442
.int 2
.int 2
.int Lt_0121
.int 443
.int 2
.int 2
.int Lt_0122
.int 444
.int 2
.int 2
.int Lt_0123
.int 445
.int 2
.skip 4,0
.int Lt_0124
.int 446
.int 2
.skip 4,0
.int Lt_0125
.int 463
.int 2
.skip 4,0
.int Lt_0126
.int 464
.int 2
.skip 4,0
.int Lt_0127
.int 470
.int 2
.skip 4,0
.int Lt_0128
.int 471
.int 2
.skip 4,0
.int Lt_0129
.int 472
.int 2
.skip 4,0
.int Lt_012A
.int 473
.int 2
.skip 4,0
.int Lt_012B
.int 474
.int 2
.skip 4,0
.int Lt_012C
.int 475
.int 2
.skip 4,0
.int Lt_012D
.int 476
.int 2
.skip 4,0
.int Lt_012E
.int 477
.int 2
.skip 4,0
.int Lt_012F
.int 478
.int 2
.skip 4,0
.int Lt_0130
.int 479
.int 2
.int 1
.int Lt_0131
.int 480
.int 2
.skip 4,0
.int Lt_0132
.int 481
.int 2
.skip 4,0
.int Lt_0133
.int 482
.int 2
.skip 4,0
.int Lt_0134
.int 483
.int 2
.skip 4,0
.int Lt_0135
.int 484
.int 2
.int 1
.int Lt_0136
.int 485
.int 2
.skip 4,0
.int Lt_0137
.int 491
.int 2
.skip 4,0
.int Lt_0138
.int 492
.int 2
.skip 4,0
.int Lt_0139
.int 313
.int 2
.skip 4,0
.int Lt_013A
.int 486
.int 2
.skip 4,0
.int Lt_013B
.int 487
.int 2
.skip 4,0
.int Lt_013C
.int 488
.int 2
.skip 4,0
.int Lt_013D
.int 489
.int 2
.skip 4,0
.int Lt_013E
.int 490
.int 2
.skip 4,0
.int Lt_013F
.int 421
.int 2
.int 2
.int Lt_0140
.int 422
.int 2
.int 1
.int Lt_0141
.int 420
.int 2
.skip 4,0
.int Lt_0142
.int 418
.int 2
.skip 4,0
.int Lt_0143
.int 419
.int 2
.skip 4,0
.int Lt_0144
.int 504
.int 2
.skip 4,0
.int Lt_0145
.int 505
.int 2
.skip 4,0
.int Lt_0146
.int 506
.int 2
.skip 4,0
.int Lt_0147
.int 507
.int 2
.skip 4,0
.int Lt_0148
.int 508
.int 2
.skip 4,0
.int Lt_0149
.int 509
.int 2
.skip 4,0
.int Lt_014A
.int 510
.int 2
.int 1
.int Lt_014A
.int 511
.int 2
.int 4
.int Lt_014B
.int 512
.int 2
.skip 4,0
.int Lt_014C
.int 513
.int 2
.skip 4,0
.int Lt_014D
.int 514
.int 2
.int 1
.int Lt_014E
.int 519
.int 2
.int 1
.int Lt_014F
.int 515
.int 1
.int 1
.int Lt_0150
.int 517
.int 1
.int 1
.int Lt_0151
.int 516
.int 1
.int 1
.int Lt_0152
.int 518
.int 1
.int 1
.long 0
.skip 12,0
.skip 240,0
.balign 4
Lt_005D:	.ascii	"AND\0"
.balign 4
Lt_005E:	.ascii	"OR\0"
.balign 4
Lt_005F:	.ascii	"ANDALSO\0"
.balign 4
Lt_0060:	.ascii	"ORELSE\0"
.balign 4
Lt_0061:	.ascii	"XOR\0"
.balign 4
Lt_0062:	.ascii	"EQV\0"
.balign 4
Lt_0063:	.ascii	"IMP\0"
.balign 4
Lt_0064:	.ascii	"NOT\0"
.balign 4
Lt_0065:	.ascii	"MOD\0"
.balign 4
Lt_0066:	.ascii	"SHL\0"
.balign 4
Lt_0067:	.ascii	"SHR\0"
.balign 4
Lt_0068:	.ascii	"NEW\0"
.balign 4
Lt_0069:	.ascii	"DELETE\0"
.balign 4
Lt_006A:	.ascii	"REM\0"
.balign 4
Lt_006B:	.ascii	"DIM\0"
.balign 4
Lt_006C:	.ascii	"ABS\0"
.balign 4
Lt_006D:	.ascii	"SGN\0"
.balign 4
Lt_006E:	.ascii	"FIX\0"
.balign 4
Lt_006F:	.ascii	"FRAC\0"
.balign 4
Lt_0070:	.ascii	"INT\0"
.balign 4
Lt_0071:	.ascii	"STATIC\0"
.balign 4
Lt_0072:	.ascii	"SHARED\0"
.balign 4
Lt_0073:	.ascii	"BOOLEAN\0"
.balign 4
Lt_0074:	.ascii	"BYTE\0"
.balign 4
Lt_0075:	.ascii	"UBYTE\0"
.balign 4
Lt_0076:	.ascii	"SHORT\0"
.balign 4
Lt_0077:	.ascii	"USHORT\0"
.balign 4
Lt_0078:	.ascii	"INTEGER\0"
.balign 4
Lt_0079:	.ascii	"UINTEGER\0"
.balign 4
Lt_007A:	.ascii	"LONG\0"
.balign 4
Lt_007B:	.ascii	"ULONG\0"
.balign 4
Lt_007C:	.ascii	"LONGINT\0"
.balign 4
Lt_007D:	.ascii	"ULONGINT\0"
.balign 4
Lt_007E:	.ascii	"SINGLE\0"
.balign 4
Lt_007F:	.ascii	"DOUBLE\0"
.balign 4
Lt_0080:	.ascii	"STRING\0"
.balign 4
Lt_0081:	.ascii	"ZSTRING\0"
.balign 4
Lt_0082:	.ascii	"WSTRING\0"
.balign 4
Lt_0083:	.ascii	"UNSIGNED\0"
.balign 4
Lt_0084:	.ascii	"ANY\0"
.balign 4
Lt_0085:	.ascii	"PTR\0"
.balign 4
Lt_0086:	.ascii	"POINTER\0"
.balign 4
Lt_0087:	.ascii	"TYPEOF\0"
.balign 4
Lt_0088:	.ascii	"WHILE\0"
.balign 4
Lt_0089:	.ascii	"UNTIL\0"
.balign 4
Lt_008A:	.ascii	"WEND\0"
.balign 4
Lt_008B:	.ascii	"CONTINUE\0"
.balign 4
Lt_008C:	.ascii	"CBOOL\0"
.balign 4
Lt_008D:	.ascii	"CBYTE\0"
.balign 4
Lt_008E:	.ascii	"CSHORT\0"
.balign 4
Lt_008F:	.ascii	"CINT\0"
.balign 4
Lt_0090:	.ascii	"CLNG\0"
.balign 4
Lt_0091:	.ascii	"CLNGINT\0"
.balign 4
Lt_0092:	.ascii	"CUBYTE\0"
.balign 4
Lt_0093:	.ascii	"CUSHORT\0"
.balign 4
Lt_0094:	.ascii	"CUINT\0"
.balign 4
Lt_0095:	.ascii	"CULNG\0"
.balign 4
Lt_0096:	.ascii	"CULNGINT\0"
.balign 4
Lt_0097:	.ascii	"CSNG\0"
.balign 4
Lt_0098:	.ascii	"CDBL\0"
.balign 4
Lt_0099:	.ascii	"CSIGN\0"
.balign 4
Lt_009A:	.ascii	"CUNSG\0"
.balign 4
Lt_009B:	.ascii	"CPTR\0"
.balign 4
Lt_009C:	.ascii	"CAST\0"
.balign 4
Lt_009D:	.ascii	"CALL\0"
.balign 4
Lt_009E:	.ascii	"BYVAL\0"
.balign 4
Lt_009F:	.ascii	"BYREF\0"
.balign 4
Lt_00A0:	.ascii	"AS\0"
.balign 4
Lt_00A1:	.ascii	"DECLARE\0"
.balign 4
Lt_00A2:	.ascii	"GOTO\0"
.balign 4
Lt_00A3:	.ascii	"CONST\0"
.balign 4
Lt_00A4:	.ascii	"FOR\0"
.balign 4
Lt_00A5:	.ascii	"STEP\0"
.balign 4
Lt_00A6:	.ascii	"NEXT\0"
.balign 4
Lt_00A7:	.ascii	"TO\0"
.balign 4
Lt_00A8:	.ascii	"TYPE\0"
.balign 4
Lt_00A9:	.ascii	"UNION\0"
.balign 4
Lt_00AA:	.ascii	"END\0"
.balign 4
Lt_00AB:	.ascii	"SUB\0"
.balign 4
Lt_00AC:	.ascii	"FUNCTION\0"
.balign 4
Lt_00AD:	.ascii	"CDECL\0"
.balign 4
Lt_00AE:	.ascii	"STDCALL\0"
.balign 4
Lt_00AF:	.ascii	"__THISCALL\0"
.balign 4
Lt_00B0:	.ascii	"__FASTCALL\0"
.balign 4
Lt_00B1:	.ascii	"PASCAL\0"
.balign 4
Lt_00B2:	.ascii	"ALIAS\0"
.balign 4
Lt_00B3:	.ascii	"LIB\0"
.balign 4
Lt_00B4:	.ascii	"LET\0"
.balign 4
Lt_00B5:	.ascii	"EXIT\0"
.balign 4
Lt_00B6:	.ascii	"DO\0"
.balign 4
Lt_00B7:	.ascii	"LOOP\0"
.balign 4
Lt_00B8:	.ascii	"RETURN\0"
.balign 4
Lt_00B9:	.ascii	"IF\0"
.balign 4
Lt_00BA:	.ascii	"THEN\0"
.balign 4
Lt_00BB:	.ascii	"ELSE\0"
.balign 4
Lt_00BC:	.ascii	"ELSEIF\0"
.balign 4
Lt_00BD:	.ascii	"ENDIF\0"
.balign 4
Lt_00BE:	.ascii	"SELECT\0"
.balign 4
Lt_00BF:	.ascii	"CASE\0"
.balign 4
Lt_00C0:	.ascii	"IS\0"
.balign 4
Lt_00C1:	.ascii	"USING\0"
.balign 4
Lt_00C2:	.ascii	"LEN\0"
.balign 4
Lt_00C3:	.ascii	"PEEK\0"
.balign 4
Lt_00C4:	.ascii	"POKE\0"
.balign 4
Lt_00C5:	.ascii	"SWAP\0"
.balign 4
Lt_00C6:	.ascii	"COMMON\0"
.balign 4
Lt_00C7:	.ascii	"ENUM\0"
.balign 4
Lt_00C8:	.ascii	"ASM\0"
.balign 4
Lt_00C9:	.ascii	"EXTERN\0"
.balign 4
Lt_00CA:	.ascii	"WITH\0"
.balign 4
Lt_00CB:	.ascii	"SCOPE\0"
.balign 4
Lt_00CC:	.ascii	"PUBLIC\0"
.balign 4
Lt_00CD:	.ascii	"PRIVATE\0"
.balign 4
Lt_00CE:	.ascii	"PROTECTED\0"
.balign 4
Lt_00CF:	.ascii	"PROCPTR\0"
.balign 4
Lt_00D0:	.ascii	"NAMESPACE\0"
.balign 4
Lt_00D1:	.ascii	"EXPORT\0"
.balign 4
Lt_00D2:	.ascii	"IMPORT\0"
.balign 4
Lt_00D3:	.ascii	"OVERLOAD\0"
.balign 4
Lt_00D4:	.ascii	"CONSTRUCTOR\0"
.balign 4
Lt_00D5:	.ascii	"DESTRUCTOR\0"
.balign 4
Lt_00D6:	.ascii	"OPERATOR\0"
.balign 4
Lt_00D7:	.ascii	"PROPERTY\0"
.balign 4
Lt_00D8:	.ascii	"CLASS\0"
.balign 4
Lt_00D9:	.ascii	"EXTENDS\0"
.balign 4
Lt_00DA:	.ascii	"IMPLEMENTS\0"
.balign 4
Lt_00DB:	.ascii	"BASE\0"
.balign 4
Lt_00DC:	.ascii	"VIRTUAL\0"
.balign 4
Lt_00DD:	.ascii	"ABSTRACT\0"
.balign 4
Lt_00DE:	.ascii	"VAR\0"
.balign 4
Lt_00DF:	.ascii	"IIF\0"
.balign 4
Lt_00E0:	.ascii	"VA_FIRST\0"
.balign 4
Lt_00E1:	.ascii	"DATA\0"
.balign 4
Lt_00E2:	.ascii	"FIELD\0"
.balign 4
Lt_00E3:	.ascii	"LOCAL\0"
.balign 4
Lt_00E4:	.ascii	"DEFINED\0"
.balign 4
Lt_00E5:	.ascii	"SIZEOF\0"
.balign 4
Lt_00E6:	.ascii	"STRPTR\0"
.balign 4
Lt_00E7:	.ascii	"VARPTR\0"
.balign 4
Lt_00E8:	.ascii	"DYNAMIC\0"
.balign 4
Lt_00E9:	.ascii	"INCLUDE\0"
.balign 4
Lt_00EA:	.ascii	"GOSUB\0"
.balign 4
Lt_00EB:	.ascii	"DEFBYTE\0"
.balign 4
Lt_00EC:	.ascii	"DEFUBYTE\0"
.balign 4
Lt_00ED:	.ascii	"DEFSHORT\0"
.balign 4
Lt_00EE:	.ascii	"DEFUSHORT\0"
.balign 4
Lt_00EF:	.ascii	"DEFINT\0"
.balign 4
Lt_00F0:	.ascii	"DEFUINT\0"
.balign 4
Lt_00F1:	.ascii	"DEFLNG\0"
.balign 4
Lt_00F2:	.ascii	"DEFULNG\0"
.balign 4
Lt_00F3:	.ascii	"DEFLONGINT\0"
.balign 4
Lt_00F4:	.ascii	"DEFULONGINT\0"
.balign 4
Lt_00F5:	.ascii	"DEFSNG\0"
.balign 4
Lt_00F6:	.ascii	"DEFDBL\0"
.balign 4
Lt_00F7:	.ascii	"DEFSTR\0"
.balign 4
Lt_00F8:	.ascii	"OPTION\0"
.balign 4
Lt_00F9:	.ascii	"EXPLICIT\0"
.balign 4
Lt_00FA:	.ascii	"SADD\0"
.balign 4
Lt_00FB:	.ascii	"ON\0"
.balign 4
Lt_00FC:	.ascii	"ERROR\0"
.balign 4
Lt_00FD:	.ascii	"SIN\0"
.balign 4
Lt_00FE:	.ascii	"ASIN\0"
.balign 4
Lt_00FF:	.ascii	"COS\0"
.balign 4
Lt_0100:	.ascii	"ACOS\0"
.balign 4
Lt_0101:	.ascii	"TAN\0"
.balign 4
Lt_0102:	.ascii	"ATN\0"
.balign 4
Lt_0103:	.ascii	"SQR\0"
.balign 4
Lt_0104:	.ascii	"LOG\0"
.balign 4
Lt_0105:	.ascii	"EXP\0"
.balign 4
Lt_0106:	.ascii	"ATAN2\0"
.balign 4
Lt_0107:	.ascii	"RESUME\0"
.balign 4
Lt_0108:	.ascii	"ERR\0"
.balign 4
Lt_0109:	.ascii	"REDIM\0"
.balign 4
Lt_010A:	.ascii	"ERASE\0"
.balign 4
Lt_010B:	.ascii	"LBOUND\0"
.balign 4
Lt_010C:	.ascii	"UBOUND\0"
.balign 4
Lt_010D:	.ascii	"STR\0"
.balign 4
Lt_010E:	.ascii	"CVD\0"
.balign 4
Lt_010F:	.ascii	"CVS\0"
.balign 4
Lt_0110:	.ascii	"CVI\0"
.balign 4
Lt_0111:	.ascii	"CVL\0"
.balign 4
Lt_0112:	.ascii	"CVSHORT\0"
.balign 4
Lt_0113:	.ascii	"CVLONGINT\0"
.balign 4
Lt_0114:	.ascii	"MKD\0"
.balign 4
Lt_0115:	.ascii	"MKS\0"
.balign 4
Lt_0116:	.ascii	"MKI\0"
.balign 4
Lt_0117:	.ascii	"MKL\0"
.balign 4
Lt_0118:	.ascii	"MKSHORT\0"
.balign 4
Lt_0119:	.ascii	"MKLONGINT\0"
.balign 4
Lt_011A:	.ascii	"WSTR\0"
.balign 4
Lt_011B:	.ascii	"MID\0"
.balign 4
Lt_011C:	.ascii	"INSTR\0"
.balign 4
Lt_011D:	.ascii	"INSTRREV\0"
.balign 4
Lt_011E:	.ascii	"TRIM\0"
.balign 4
Lt_011F:	.ascii	"RTRIM\0"
.balign 4
Lt_0120:	.ascii	"LTRIM\0"
.balign 4
Lt_0121:	.ascii	"LCASE\0"
.balign 4
Lt_0122:	.ascii	"UCASE\0"
.balign 4
Lt_0123:	.ascii	"RESTORE\0"
.balign 4
Lt_0124:	.ascii	"READ\0"
.balign 4
Lt_0125:	.ascii	"PRINT\0"
.balign 4
Lt_0126:	.ascii	"LPRINT\0"
.balign 4
Lt_0127:	.ascii	"OPEN\0"
.balign 4
Lt_0128:	.ascii	"CLOSE\0"
.balign 4
Lt_0129:	.ascii	"SEEK\0"
.balign 4
Lt_012A:	.ascii	"PUT\0"
.balign 4
Lt_012B:	.ascii	"GET\0"
.balign 4
Lt_012C:	.ascii	"ACCESS\0"
.balign 4
Lt_012D:	.ascii	"WRITE\0"
.balign 4
Lt_012E:	.ascii	"LOCK\0"
.balign 4
Lt_012F:	.ascii	"INPUT\0"
.balign 4
Lt_0130:	.ascii	"WINPUT\0"
.balign 4
Lt_0131:	.ascii	"OUTPUT\0"
.balign 4
Lt_0132:	.ascii	"BINARY\0"
.balign 4
Lt_0133:	.ascii	"RANDOM\0"
.balign 4
Lt_0134:	.ascii	"APPEND\0"
.balign 4
Lt_0135:	.ascii	"ENCODING\0"
.balign 4
Lt_0136:	.ascii	"NAME\0"
.balign 4
Lt_0137:	.ascii	"WIDTH\0"
.balign 4
Lt_0138:	.ascii	"COLOR\0"
.balign 4
Lt_0139:	.ascii	"PRESERVE\0"
.balign 4
Lt_013A:	.ascii	"SPC\0"
.balign 4
Lt_013B:	.ascii	"TAB\0"
.balign 4
Lt_013C:	.ascii	"LINE\0"
.balign 4
Lt_013D:	.ascii	"VIEW\0"
.balign 4
Lt_013E:	.ascii	"UNLOCK\0"
.balign 4
Lt_013F:	.ascii	"CHR\0"
.balign 4
Lt_0140:	.ascii	"WCHR\0"
.balign 4
Lt_0141:	.ascii	"ASC\0"
.balign 4
Lt_0142:	.ascii	"LSET\0"
.balign 4
Lt_0143:	.ascii	"RSET\0"
.balign 4
Lt_0144:	.ascii	"PSET\0"
.balign 4
Lt_0145:	.ascii	"PRESET\0"
.balign 4
Lt_0146:	.ascii	"POINT\0"
.balign 4
Lt_0147:	.ascii	"CIRCLE\0"
.balign 4
Lt_0148:	.ascii	"WINDOW\0"
.balign 4
Lt_0149:	.ascii	"PALETTE\0"
.balign 4
Lt_014A:	.ascii	"SCREEN\0"
.balign 4
Lt_014B:	.ascii	"PAINT\0"
.balign 4
Lt_014C:	.ascii	"DRAW\0"
.balign 4
Lt_014D:	.ascii	"IMAGECREATE\0"
.balign 4
Lt_014E:	.ascii	"THREADCALL\0"
.balign 4
Lt_014F:	.ascii	"CVA_START\0"
.balign 4
Lt_0150:	.ascii	"CVA_END\0"
.balign 4
Lt_0151:	.ascii	"CVA_ARG\0"
.balign 4
Lt_0152:	.ascii	"CVA_COPY\0"
.balign 4
KWDFALSE:
.ascii "FALSE\0"
.balign 4
KWDTRUE:
.ascii "TRUE\0"
.balign 4
Lt_015D:	.ascii	"__\0"
.balign 4
Lt_0181:	.ascii	"__cva_list\0"
.balign 4
Lt_0182:	.ascii	"cva_list\0"
.balign 4
Lt_0189:	.ascii	"__va_list_tag\0"
.balign 4
Lt_018A:	.ascii	"gp_offset\0"
.balign 4
Lt_018B:	.ascii	"fp_offset\0"
.balign 4
Lt_018C:	.ascii	"overflow_arg_area\0"
.balign 4
Lt_018D:	.ascii	"reg_save_area\0"
.balign 4
Lt_0190:	.ascii	"__va_list\0"
.balign 4
Lt_0191:	.ascii	"__stack\0"
.balign 4
Lt_0192:	.ascii	"__gr_top\0"
.balign 4
Lt_0193:	.ascii	"__vr_top\0"
.balign 4
Lt_0194:	.ascii	"__gr_offs\0"
.balign 4
Lt_0195:	.ascii	"__vr_offs\0"
.balign 4
Lt_0198:	.ascii	"__ap\0"

.section .ctors
.int fb_ctor__symbzkeyword
