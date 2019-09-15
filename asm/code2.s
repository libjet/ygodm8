    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8009228
sub_8009228: @ 0x08009228
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08009248
	ldr r5, _0800924C
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08009250
	ldrb r0, [r0]
	cmp r0, #2
	beq _08009268
	cmp r0, #2
	bgt _08009254
	cmp r0, #1
	beq _0800925E
	b _080092FC
	.align 2, 0
_08009248: .4byte 0x0808918C
_0800924C: .4byte 0x02000400
_08009250: .4byte 0x02021CF8
_08009254:
	cmp r0, #3
	beq _08009270
	cmp r0, #4
	beq _080092B8
	b _080092FC
_0800925E:
	ldr r4, _08009264
	b _08009272
	.align 2, 0
_08009264: .4byte 0x08DFA6B4
_08009268:
	ldr r4, _0800926C
	b _08009272
	.align 2, 0
_0800926C: .4byte 0x08DFAB54
_08009270:
	ldr r4, _080092B4
_08009272:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r2, #0x50
	bl CpuFastSet
	b _080092FC
	.align 2, 0
_080092B4: .4byte 0x08DFAFF4
_080092B8:
	ldr r4, _08009344
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r0, #0x94
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r0, r4, #0
	movs r2, #0x50
	bl CpuFastSet
_080092FC:
	movs r4, #0
_080092FE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08009348
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800934C
	adds r1, r1, r5
	ldr r2, _08009350
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _080092FE
	ldr r0, _08009354
	ldr r1, _08009358
	ldr r2, _0800935C
	bl CpuSet
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r2, _08009360
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009344: .4byte 0x08DFAFF4
_08009348: .4byte 0x0808B860
_0800934C: .4byte 0x02003C00
_08009350: .4byte 0x0400000F
_08009354: .4byte 0x0808C1C0
_08009358: .4byte 0x02000000
_0800935C: .4byte 0x04000020
_08009360: .4byte 0x01000010

	THUMB_FUNC_START sub_8009364
sub_8009364: @ 0x08009364
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
_0800936E:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08009428
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0800942C
	adds r1, r1, r4
	ldr r2, _08009430
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800936E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08009434
	adds r1, r4, r0
	ldr r2, _08009438
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #9
	movs r1, #9
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_080093B8:
	adds r4, r6, #0
	adds r4, #9
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800943C
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xb
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xe
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _080093B8
	ldr r0, _08009440
	ldr r1, _08009444
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009428: .4byte 0x0808C240
_0800942C: .4byte 0x02007C00
_08009430: .4byte 0x0400000F
_08009434: .4byte 0xFFFFC800
_08009438: .4byte 0x01000010
_0800943C: .4byte 0x08DF811C
_08009440: .4byte 0x02004420
_08009444: .4byte 0x080907E4

	THUMB_FUNC_START sub_8009448
sub_8009448: @ 0x08009448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
_08009456:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08009764
	adds r0, r0, r1
	lsls r1, r7, #6
	ldr r4, _08009768
	adds r1, r1, r4
	ldr r2, _0800976C
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x13
	bls _08009456
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08009770
	adds r1, r4, r0
	ldr r2, _08009774
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r7, #0
	adds r6, r4, #0
_080094B4:
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08009778
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x1d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x1f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _080094B4
	movs r7, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov sl, r0
_0800953C:
	adds r6, r7, #4
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _08009778
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x7d
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7f
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x8d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x8f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb1
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0x11
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb3
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0x12
	mov r2, sl
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _0800953C
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_080095CA:
	adds r4, r7, #0
	adds r4, #0xa
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #8
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #9
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080095CA
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800962A:
	adds r4, r7, #0
	adds r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0800962A
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0800965A:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08009778
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x29
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x2b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x49
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x4b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x69
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x6b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0800965A
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_080096E2:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08009778
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0xc1
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xc3
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x9d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x9f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _080096E2
	ldr r0, _0800977C
	ldr r1, _08009780
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009764: .4byte 0x0808C6F0
_08009768: .4byte 0x02007C00
_0800976C: .4byte 0x0400000F
_08009770: .4byte 0xFFFFC800
_08009774: .4byte 0x01000010
_08009778: .4byte 0x08DF811C
_0800977C: .4byte 0x02004420
_08009780: .4byte 0x08090920

	THUMB_FUNC_START sub_8009784
sub_8009784: @ 0x08009784
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _08009820
	ldr r2, _08009824
	adds r1, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r1, r4, r2
	ldr r2, _08009828
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0800982C
	ldr r2, _08009830
	bl sub_8020A3C
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, _08009834
	ldr r2, _08009838
	bl sub_8020A3C
	ldr r0, _0800983C
	adds r1, r4, r0
	ldr r0, _08009840
	strh r0, [r1]
	bl sub_801D718
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	ldr r0, _08009844
	adds r4, r4, r0
	ldr r7, _08009848
	ldr r6, _0800984C
	ldr r0, _08009850
	adds r5, r0, #0
	adds r3, r4, #0
_080097E8:
	adds r1, r2, r7
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r0, r2, r6
	ldrb r0, [r0]
	adds r0, r5, r0
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _080097E8
	ldr r2, _08009854
	adds r1, r3, r2
	ldr r0, _08009840
	strh r0, [r1]
	ldr r0, _08009858
	adds r1, r3, r0
	ldr r0, _0800985C
	strh r0, [r1]
	adds r2, #4
	adds r1, r3, r2
	subs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009820: .4byte 0x02008400
_08009824: .4byte 0x01000010
_08009828: .4byte 0x01000400
_0800982C: .4byte 0x08090B94
_08009830: .4byte 0x00000801
_08009834: .4byte 0x08090B98
_08009838: .4byte 0x00000901
_0800983C: .4byte 0x0000385E
_08009840: .4byte 0x00005001
_08009844: .4byte 0xFFFF8000
_08009848: .4byte 0x00005C30
_0800984C: .4byte 0x02021BD0
_08009850: .4byte 0x00005209
_08009854: .4byte 0x0000B870
_08009858: .4byte 0x0000B872
_0800985C: .4byte 0x0000520D

	THUMB_FUNC_START sub_8009860
sub_8009860: @ 0x08009860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08009928
	ldr r4, _0800992C
	ldr r5, _08009930
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009934
	subs r4, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009938
	ldr r4, _0800993C
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009940
	adds r1, r4, #0
	adds r1, #0x20
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009944
	adds r1, r4, #0
	adds r1, #0x40
	adds r2, r5, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r1, _08009948
	ldr r2, _0800994C
	bl sub_8020A3C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _08009950
	ldr r2, _08009954
	bl sub_8020A3C
	movs r5, #0
	ldr r4, _08009958
_080098C8:
	ldr r6, _0800995C
	lsls r1, r5, #2
	adds r0, r1, r5
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, #0x13
	lsls r1, r1, #5
	ldr r2, _08009960
	adds r1, r1, r2
	ldr r2, _08009964
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _080098C8
	movs r4, #0
	movs r5, #0
	ldr r7, _08009968
_080098F6:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08009970
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _08009960
	adds r1, r1, r2
	ldr r2, _0800996C
	bl CpuSet
	adds r0, r4, #0
	adds r0, #8
	b _08009990
	.align 2, 0
_08009928: .4byte 0x0808ECD0
_0800992C: .4byte 0x020000A0
_08009930: .4byte 0x04000008
_08009934: .4byte 0x0808ECF0
_08009938: .4byte 0x0808E310
_0800993C: .4byte 0x0200C420
_08009940: .4byte 0x0808E330
_08009944: .4byte 0x0808E350
_08009948: .4byte 0x08090C20
_0800994C: .4byte 0x00000801
_08009950: .4byte 0x08090C50
_08009954: .4byte 0x00001801
_08009958: .4byte 0x08DFA5B8
_0800995C: .4byte 0x02021CF8
_08009960: .4byte 0x0200C400
_08009964: .4byte 0x04000020
_08009968: .4byte 0x08DFA3A8
_0800996C: .4byte 0x04000040
_08009970:
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _08009A6C
	adds r1, r1, r2
	ldr r2, _08009A70
	bl CpuSet
	adds r0, r4, #4
_08009990:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _080098F6
	movs r5, #0
_080099A0:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08009A74
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r4, _08009A78
	adds r1, r1, r4
	ldr r2, _08009A7C
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080099A0
	movs r7, #0
	ldr r0, _08009A80
	adds r0, r0, r4
	mov r8, r0
_080099C8:
	movs r5, #0
	lsls r1, r7, #1
	lsls r0, r7, #2
	adds r2, r7, #1
	str r2, [sp]
	adds r1, r1, r7
	mov ip, r1
	adds r0, r0, r7
	lsls r0, r0, #3
	mov sb, r0
	ldr r0, _08009A84
	add r0, sb
	mov sl, r0
_080099E2:
	movs r6, #0
	cmp r7, #1
	bls _080099F0
	movs r6, #2
	cmp r7, #2
	bne _080099F0
	movs r6, #1
_080099F0:
	lsls r3, r5, #1
	adds r2, r6, #3
	add r2, ip
	lsls r2, r2, #5
	ldr r0, _08009A88
	adds r1, r2, r0
	adds r1, r3, r1
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #4]
	lsls r4, r5, #2
	ldr r1, _08009A84
	adds r0, r4, r1
	add r0, sb
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r0, _08009A8C
	adds r2, r2, r0
	adds r2, r3, r2
	lsls r2, r2, #1
	add r2, r8
	add r4, sl
	adds r0, r4, #1
	strh r0, [r2]
	adds r2, r6, #4
	add r2, ip
	lsls r2, r2, #5
	ldr r1, _08009A88
	adds r0, r2, r1
	adds r0, r3, r0
	lsls r0, r0, #1
	add r0, r8
	adds r1, r4, #2
	strh r1, [r0]
	ldr r0, _08009A8C
	adds r2, r2, r0
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	adds r4, #3
	strh r4, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _080099E2
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _080099C8
	ldr r0, _08009A90
	bl sub_8057418
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009A6C: .4byte 0x0200C400
_08009A70: .4byte 0x04000020
_08009A74: .4byte 0x0808E820
_08009A78: .4byte 0x0200FC00
_08009A7C: .4byte 0x0400000F
_08009A80: .4byte 0xFFFF0800
_08009A84: .4byte 0x000050F8
_08009A88: .4byte 0x00007C02
_08009A8C: .4byte 0x00007C03
_08009A90: .4byte 0x02000200

	THUMB_FUNC_START sub_8009A94
sub_8009A94: @ 0x08009A94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	movs r0, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x2c
	ldr r1, _08009B44
	ldr r2, _08009B48
	bl CpuSet
	movs r7, #0
_08009AB0:
	adds r0, r7, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r4, #0
	cmp r7, #1
	bls _08009ACC
	movs r4, #2
	cmp r7, #2
	bne _08009ACC
	movs r4, #1
_08009ACC:
	ldr r1, _08009B4C
	ldrh r0, [r1, #0x10]
	movs r1, #1
	bl sub_800DDA0
	movs r3, #0
	lsls r2, r7, #1
	mov r8, r2
	adds r0, r4, #2
	mov sb, r0
	lsls r1, r7, #2
	mov sl, r1
	adds r2, r4, #3
	str r2, [sp, #0x40]
	adds r4, #4
	str r4, [sp, #0x44]
	lsrs r4, r7, #2
	str r4, [sp, #0x34]
	lsls r0, r7, #3
	str r0, [sp, #0x30]
	lsls r1, r7, #5
	str r1, [sp, #0x38]
	adds r2, r7, #1
	str r2, [sp, #0x3c]
	ldr r6, _08009B50
	mov r4, r8
	adds r0, r4, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r1, _08009B54
	adds r2, r0, r1
	ldr r5, _08009B58
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_08009B12:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, #9
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08009B12
	ldr r2, _08009B4C
	ldr r5, [r2]
	adds r0, r5, #0
	bl sub_8020824
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
	movs r4, #0
	ldrb r0, [r5]
	b _08009BA8
	.align 2, 0
_08009B44: .4byte 0x0200E300
_08009B48: .4byte 0x05000640
_08009B4C: .4byte 0x02021AD0
_08009B50: .4byte 0x02000400
_08009B54: .4byte 0x00007C01
_08009B58: .4byte 0x02021BD0
_08009B5C:
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08009B7C
	cmp r6, #0x13
	bhi _08009B78
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08009B78:
	adds r0, r3, #1
	b _08009B9A
_08009B7C:
	cmp r6, #0x13
	bhi _08009B98
	mov r0, sp
	adds r0, r0, r4
	strb r1, [r0]
	adds r0, r4, #1
	add r0, sp
	mov ip, r0
	ldrb r0, [r2, #1]
	mov r1, ip
	strb r0, [r1]
	adds r0, r4, #2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08009B98:
	adds r0, r3, #2
_08009B9A:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, r3
	ldrb r0, [r0]
_08009BA8:
	cmp r0, #0
	beq _08009BB0
	cmp r0, #0x24
	bne _08009B5C
_08009BB0:
	mov r2, sp
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
	mov r4, sl
	adds r0, r4, r7
	lsls r0, r0, #8
	movs r1, #0xf8
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r4, _08009BF8
	adds r0, r0, r4
	mov r1, sp
	ldr r2, _08009BFC
	bl sub_8020A3C
	movs r3, #0
	ldr r2, _08009C00
	adds r4, r4, r2
	mov r1, r8
	adds r0, r1, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r1, _08009C04
	adds r2, r0, r1
	ldr r5, _08009C08
_08009BE4:
	ldr r0, _08009C0C
	ldrb r0, [r0, #0x18]
	cmp r3, r0
	bhs _08009C10
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r5, [r0]
	b _08009C1C
	.align 2, 0
_08009BF8: .4byte 0x0200C400
_08009BFC: .4byte 0x00000901
_08009C00: .4byte 0xFFFF4000
_08009C04: .4byte 0x00007C10
_08009C08: .4byte 0x00005001
_08009C0C: .4byte 0x02021AD0
_08009C10:
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #7
	strh r1, [r0]
_08009C1C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _08009BE4
	adds r0, r7, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_800A4B0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08009D10
	ldrh r0, [r1, #0x10]
	bl sub_8009060
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_800DDA0
	movs r3, #0
	ldr r6, _08009D14
	mov r2, r8
	adds r0, r2, r7
	ldr r1, [sp, #0x40]
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _08009D18
	adds r2, r0, r1
	ldr r5, _08009D1C
_08009C5E:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, #9
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08009C5E
	ldr r2, _08009D10
	ldrh r0, [r2, #0x10]
	bl sub_801DB88
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	ldr r6, _08009D14
	mov r4, r8
	adds r0, r4, r7
	ldr r1, [sp, #0x44]
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r4, _08009D18
	adds r2, r0, r4
	ldr r5, _08009D1C
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_08009CA4:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, #9
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08009CA4
	movs r0, #3
	ands r0, r7
	lsls r0, r0, #8
	ldr r2, [sp, #0x34]
	lsls r1, r2, #0xc
	movs r4, #0x82
	lsls r4, r4, #9
	adds r1, r1, r4
	orrs r0, r1
	ldr r1, _08009D14
	adds r0, r0, r1
	ldr r2, _08009D10
	ldrh r1, [r2, #0x10]
	bl sub_80573D0
	ldr r0, _08009D20
	ldr r4, [sp, #0x30]
	adds r3, r4, r0
	ldrb r1, [r3, #1]
	movs r0, #0x3f
	adds r2, r0, #0
	ands r2, r1
	strb r2, [r3, #1]
	ldrb r1, [r3, #3]
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	cmp r7, #2
	bne _08009D24
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r3, #1]
	b _08009D30
	.align 2, 0
_08009D10: .4byte 0x02021AD0
_08009D14: .4byte 0x02000400
_08009D18: .4byte 0x00007C17
_08009D1C: .4byte 0x02021BD0
_08009D20: .4byte 0x02018400
_08009D24:
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r1, r4, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #1]
_08009D30:
	ldrb r0, [r3, #1]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r3, #5]
	ldr r0, [sp, #0x38]
	adds r0, #0xc
	strb r0, [r3]
	ldrh r1, [r3, #2]
	ldr r4, _08009E1C
	adds r0, r4, #0
	ands r1, r0
	movs r0, #0xd2
	orrs r1, r0
	strh r1, [r3, #2]
	movs r0, #3
	ands r7, r0
	lsls r2, r7, #3
	adds r2, #0x20
	ldr r1, [sp, #0x34]
	lsls r0, r1, #7
	adds r2, r2, r0
	ldr r4, _08009E20
	adds r0, r4, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r4, _08009E24
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _08009D88
	b _08009AB0
_08009D88:
	bl sub_800A508
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_801DB58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	ldr r7, _08009E28
	ldr r6, _08009E2C
	ldr r5, _08009E30
	ldr r0, _08009E34
	adds r2, r0, #0
_08009DAA:
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, r2, r0
	adds r0, r4, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08009DAA
	bl sub_800A528
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	ldr r7, _08009E28
	ldr r6, _08009E38
	ldr r5, _08009E30
	ldr r1, _08009E34
	adds r2, r1, #0
_08009DE6:
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r3, #3
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, r2, r0
	adds r0, r4, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08009DE6
	bl sub_800907C
	bl sub_800A544
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009E1C: .4byte 0xFFFFFE00
_08009E20: .4byte 0x000003FF
_08009E24: .4byte 0xFFFFFC00
_08009E28: .4byte 0x02000400
_08009E2C: .4byte 0x00005C2A
_08009E30: .4byte 0x02021BD0
_08009E34: .4byte 0x00000209
_08009E38: .4byte 0x00005C36

	THUMB_FUNC_START sub_8009E3C
sub_8009E3C: @ 0x08009E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r4, #0
	movs r0, #0xa0
	lsls r0, r0, #7
	mov r8, r0
_08009E50:
	movs r1, #0
	cmp r4, #1
	bls _08009E5E
	movs r1, #2
	cmp r4, #2
	bne _08009E5E
	movs r1, #1
_08009E5E:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	ldr r7, _08009F48
	adds r0, r0, r4
	adds r1, r0, r3
	lsls r1, r1, #5
	ldr r2, _08009F4C
	adds r3, r1, r2
	adds r0, r0, r6
	lsls r0, r0, #5
	adds r1, r0, r2
_08009E78:
	adds r0, r5, r3
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r2, r8
	strh r2, [r0]
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08009E78
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08009E50
	movs r4, #0
_08009EA0:
	movs r1, #0
	cmp r4, #1
	bls _08009EAE
	movs r1, #2
	cmp r4, #2
	bne _08009EAE
	movs r1, #1
_08009EAE:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	adds r1, r4, #1
	str r1, [sp, #4]
	lsls r2, r4, #2
	ldr r7, _08009F48
	adds r1, r0, r4
	adds r0, r1, r3
	lsls r0, r0, #5
	mov r8, r0
	ldr r3, _08009F4C
	mov sb, r3
	ldr r0, _08009F50
	mov r3, r8
	adds r3, r3, r0
	str r3, [sp]
	adds r2, r2, r4
	lsls r2, r2, #3
	mov ip, r2
	ldr r2, _08009F54
	add r2, ip
	mov sl, r2
	adds r1, r1, r6
	lsls r4, r1, #5
	adds r0, r4, r0
	str r0, [sp, #8]
_08009EE6:
	lsls r2, r5, #1
	mov r1, r8
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r3, r5, #2
	ldr r6, _08009F54
	adds r0, r3, r6
	add r0, ip
	strh r0, [r1]
	ldr r1, [sp]
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	add r3, sl
	adds r1, r3, #1
	strh r1, [r0]
	mov r6, sb
	adds r0, r4, r6
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, #2
	strh r1, [r0]
	ldr r0, [sp, #8]
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r3, #3
	strh r3, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08009EE6
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08009EA0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009F48: .4byte 0x02000400
_08009F4C: .4byte 0x00007C10
_08009F50: .4byte 0x00007C11
_08009F54: .4byte 0x00005114

	THUMB_FUNC_START sub_8009F58
sub_8009F58: @ 0x08009F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0800A030
	mov sl, r0
_08009F68:
	adds r0, r6, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r7, #0
	cmp r6, #1
	bls _08009F84
	movs r7, #2
	cmp r6, #2
	bne _08009F84
	movs r7, #1
_08009F84:
	lsls r5, r6, #1
	adds r4, r5, r6
	adds r0, r7, #3
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r1, _0800A034
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800A038
	strh r1, [r0]
	ldr r0, _0800A03C
	ldrh r0, [r0, #0x12]
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	adds r3, r5, #0
	adds r5, r7, #4
	adds r7, r6, #1
	mov sb, r7
	ldr r0, _0800A030
	mov r8, r0
	ldr r1, _0800A040
	adds r4, r4, r1
	ldr r7, _0800A044
	mov ip, r7
_08009FBA:
	adds r0, r2, r4
	lsls r0, r0, #1
	add r0, r8
	mov r7, ip
	adds r1, r2, r7
	ldr r7, _0800A048
	ldrb r1, [r1]
	adds r1, r7, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08009FBA
	adds r4, r3, r6
	adds r4, r4, r5
	lsls r4, r4, #5
	ldr r1, _0800A034
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800A04C
	strh r1, [r0]
	ldr r0, _0800A03C
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	ldr r6, _0800A030
	ldr r7, _0800A040
	adds r4, r4, r7
	ldr r5, _0800A044
	ldr r0, _0800A050
	adds r3, r0, #0
_0800A000:
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r1, r2, r5
	ldrb r1, [r1]
	adds r1, r3, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800A000
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08009F68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A030: .4byte 0x02000400
_0800A034: .4byte 0x00007C10
_0800A038: .4byte 0x00005002
_0800A03C: .4byte 0x02021AD0
_0800A040: .4byte 0x00007C11
_0800A044: .4byte 0x02021BD0
_0800A048: .4byte 0x00002009
_0800A04C: .4byte 0x00005003
_0800A050: .4byte 0x00001009

	THUMB_FUNC_START sub_800A054
sub_800A054: @ 0x0800A054
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
_0800A064:
	mov r0, r8
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r4, #0
	mov r1, r8
	cmp r1, #1
	bls _0800A082
	movs r4, #2
	cmp r1, #2
	bne _0800A082
	movs r4, #1
_0800A082:
	ldr r7, _0800A1CC
	mov r2, r8
	lsls r3, r2, #1
	add r3, r8
	adds r0, r4, #3
	adds r0, r3, r0
	lsls r5, r0, #5
	ldr r2, _0800A1D0
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r6, #0xa0
	lsls r6, r6, #7
	strh r6, [r0]
	ldr r1, _0800A1D4
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r6, [r0]
	adds r0, r4, #4
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r0, r6, #0
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r2, r6, #0
	strh r2, [r1]
	ldr r6, _0800A1D8
	ldrb r0, [r6, #0x17]
	mov r4, r8
	adds r4, #0xb
	lsls r1, r4, #5
	ldr r2, _0800A1DC
	adds r1, r1, r2
	str r3, [sp, #8]
	bl sub_8008BC0
	ldr r1, _0800A1E0
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	lsls r4, r4, #0xc
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x13
	orrs r0, r4
	mov r2, sl
	strh r0, [r2]
	adds r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x14
	orrs r0, r4
	mov r2, sb
	strh r0, [r2]
	ldr r3, [sp, #8]
	ldr r2, _0800A1E0
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	str r0, [sp]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x15
	orrs r0, r4
	ldr r2, [sp]
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	str r1, [sp, #4]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x16
	orrs r4, r0
	strh r4, [r1]
	ldrb r0, [r6, #0x16]
	mov r4, r8
	adds r4, #6
	lsls r1, r4, #5
	ldr r2, _0800A1DC
	adds r1, r1, r2
	str r3, [sp, #8]
	bl sub_8008B44
	ldrb r0, [r6, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #8]
	cmp r0, #2
	bhi _0800A1EC
	ldr r0, _0800A1E4
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x11
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A1E8
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xf
	orrs r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xe
	orrs r0, r2
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0800A1E4
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xd
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A1E8
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xb
	orrs r0, r2
	ldr r1, [sp]
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xa
	orrs r2, r0
	ldr r6, [sp, #4]
	strh r2, [r6]
	b _0800A236
	.align 2, 0
_0800A1CC: .4byte 0x02000400
_0800A1D0: .4byte 0x00007C10
_0800A1D4: .4byte 0x00007C15
_0800A1D8: .4byte 0x02021AD0
_0800A1DC: .4byte 0x02000000
_0800A1E0: .4byte 0x00007C13
_0800A1E4: .4byte 0x00007C11
_0800A1E8: .4byte 0x00007C12
_0800A1EC:
	ldr r0, _0800A258
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x43
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A25C
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x44
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A258
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x45
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A25C
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x46
	orrs r2, r0
	strh r2, [r1]
_0800A236:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _0800A246
	b _0800A064
_0800A246:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A258: .4byte 0x00007C11
_0800A25C: .4byte 0x00007C12

	THUMB_FUNC_START sub_800A260
sub_800A260: @ 0x0800A260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r0, _0800A344
	mov r8, r0
	ldr r1, _0800A348
	mov sl, r1
	movs r0, #0xa0
	lsls r0, r0, #7
	mov sb, r0
_0800A27A:
	movs r3, #0
	cmp r5, #1
	bls _0800A288
	movs r3, #2
	cmp r5, #2
	bne _0800A288
	movs r3, #1
_0800A288:
	lsls r4, r5, #1
	adds r4, r4, r5
	adds r2, r3, #3
	adds r2, r4, r2
	lsls r2, r2, #5
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0800A34C
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A350
	strh r1, [r0]
	ldr r1, _0800A354
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A358
	strh r1, [r0]
	ldr r1, _0800A35C
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A360
	strh r1, [r0]
	ldr r1, _0800A364
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A368
	strh r1, [r0]
	ldr r0, _0800A36C
	adds r2, r2, r0
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _0800A370
	strh r0, [r2]
	adds r0, r3, #4
	adds r4, r4, r0
	lsls r4, r4, #5
	mov r1, sl
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	ldr r0, _0800A374
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	adds r5, #1
	ldr r7, _0800A344
	ldr r0, _0800A34C
	adds r2, r4, r0
	ldr r6, _0800A378
	ldr r1, _0800A37C
	adds r4, r1, #0
_0800A314:
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, r6
	ldrb r1, [r1]
	adds r1, r4, r1
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0800A314
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0800A27A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A344: .4byte 0x02000400
_0800A348: .4byte 0x00007C10
_0800A34C: .4byte 0x00007C11
_0800A350: .4byte 0x00005004
_0800A354: .4byte 0x00007C12
_0800A358: .4byte 0x00005005
_0800A35C: .4byte 0x00007C13
_0800A360: .4byte 0x00005006
_0800A364: .4byte 0x00007C14
_0800A368: .4byte 0x00005007
_0800A36C: .4byte 0x00007C15
_0800A370: .4byte 0x00005008
_0800A374: .4byte 0x02021AD0
_0800A378: .4byte 0x02021BD0
_0800A37C: .4byte 0x00005009

	THUMB_FUNC_START sub_800A380
sub_800A380: @ 0x0800A380
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r3, _0800A3BC
	lsrs r0, r0, #0x16
	ldr r2, _0800A3C0
	adds r1, r2, #0
	adds r1, r0, r1
	ldr r4, _0800A3C4
	adds r2, r3, r4
	strh r1, [r2]
	ldr r2, _0800A3C8
	adds r1, r2, #0
	adds r1, r0, r1
	adds r4, #2
	adds r2, r3, r4
	strh r1, [r2]
	ldr r1, _0800A3CC
	adds r2, r0, r1
	adds r4, #0x3e
	adds r1, r3, r4
	strh r2, [r1]
	ldr r1, _0800A3D0
	adds r0, r0, r1
	ldr r2, _0800A3D4
	adds r3, r3, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A3BC: .4byte 0x02000400
_0800A3C0: .4byte 0x00005002
_0800A3C4: .4byte 0x0000B838
_0800A3C8: .4byte 0x00005003
_0800A3CC: .4byte 0x00005004
_0800A3D0: .4byte 0x00005005
_0800A3D4: .4byte 0x0000B87A

	THUMB_FUNC_START sub_800A3D8
sub_800A3D8: @ 0x0800A3D8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0800A472
	lsls r0, r0, #2
	ldr r1, _0800A3EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A3EC: .4byte 0x0800A3F0
_0800A3F0: @ jump table
	.4byte _0800A410 @ case 0
	.4byte _0800A472 @ case 1
	.4byte _0800A418 @ case 2
	.4byte _0800A440 @ case 3
	.4byte _0800A45C @ case 4
	.4byte _0800A46C @ case 5
	.4byte _0800A472 @ case 6
	.4byte _0800A446 @ case 7
_0800A410:
	movs r0, #0
	bl sub_800A5F0
	b _0800A472
_0800A418:
	bl sub_8009228
	bl sub_8009784
	bl sub_8009860
	bl sub_8009A94
	bl sub_800A478
	ldr r0, _0800A43C
	ldrb r0, [r0, #2]
	bl sub_800A380
	movs r0, #1
	bl sub_800A5F0
	b _0800A472
	.align 2, 0
_0800A43C: .4byte gUnkStruct_2020E10
_0800A440:
	bl sub_8009A94
	b _0800A45C
_0800A446:
	bl sub_8009A94
	bl sub_800A478
	ldr r0, _0800A468
	ldrb r0, [r0, #2]
	bl sub_800A380
	movs r0, #3
	bl sub_800A5F0
_0800A45C:
	bl sub_800A478
	movs r0, #3
	bl sub_800A5F0
	b _0800A472
	.align 2, 0
_0800A468: .4byte gUnkStruct_2020E10
_0800A46C:
	movs r0, #3
	bl sub_800A5F0
_0800A472:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A478
sub_800A478: @ 0x0800A478
	push {lr}
	bl sub_8009010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0800A494
	cmp r0, #1
	ble _0800A4A6
	cmp r0, #2
	beq _0800A49A
	cmp r0, #3
	beq _0800A4A0
	b _0800A4A6
_0800A494:
	bl sub_8009F58
	b _0800A4AA
_0800A49A:
	bl sub_800A054
	b _0800A4AA
_0800A4A0:
	bl sub_800A260
	b _0800A4AA
_0800A4A6:
	bl sub_8009E3C
_0800A4AA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A4B0
sub_800A4B0: @ 0x0800A4B0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, r1, #0
	ldr r0, _0800A4F4
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A4FC
	adds r0, r1, #0
	bl sub_801F098
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0800A4FC
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	beq _0800A4FC
	adds r0, r4, #0
	bl SetCardData
	bl GetDuelistLevel
	ldr r1, _0800A4F8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _0800A4FC
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800A500
	.align 2, 0
_0800A4F4: .4byte gTrunk
_0800A4F8: .4byte 0x02021AD0
_0800A4FC:
	movs r0, #0x80
	lsls r0, r0, #7
_0800A500:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A508
sub_800A508: @ 0x0800A508
	push {r4, lr}
	bl sub_801DB58
	adds r4, r0, #0
	bl sub_801D718
	cmp r4, r0
	bhi _0800A51E
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800A522
_0800A51E:
	movs r0, #0x80
	lsls r0, r0, #7
_0800A522:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A528
sub_800A528: @ 0x0800A528
	push {lr}
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _0800A53C
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800A540
_0800A53C:
	movs r0, #0x80
	lsls r0, r0, #7
_0800A540:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A544
sub_800A544: @ 0x0800A544
	push {r4, r5, r6, lr}
	ldr r2, _0800A568
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	cmp r0, r1
	bhi _0800A56C
	cmp r1, #0
	beq _0800A56C
	adds r1, r0, #0
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r2, #2]
	bl sub_805AF28
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0800A56E
	.align 2, 0
_0800A568: .4byte 0x02021AB4
_0800A56C:
	movs r3, #0
_0800A56E:
	ldr r2, _0800A5D8
	ldr r1, _0800A5DC
	ldrh r0, [r1]
	strh r0, [r2, #0x28]
	ldrh r0, [r1, #2]
	strh r0, [r2, #0x2a]
	ldrh r0, [r1, #4]
	strh r0, [r2, #0x2c]
	adds r2, #0x28
	ldrb r0, [r2]
	adds r0, #0x19
	adds r0, r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r3, #0xd
	rsbs r3, r3, #0
	ands r0, r3
	movs r5, #4
	orrs r0, r5
	strb r0, [r2, #1]
	ldrh r4, [r2, #2]
	lsls r1, r4, #0x17
	lsrs r1, r1, #0x17
	ldr r0, _0800A5E0
	adds r1, r1, r0
	ands r1, r0
	ldr r0, _0800A5E4
	ands r0, r4
	orrs r0, r1
	strh r0, [r2, #2]
	ldrh r4, [r2, #4]
	lsls r1, r4, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x88
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r6, _0800A5E8
	adds r0, r6, #0
	ands r1, r0
	ldr r0, _0800A5EC
	ands r0, r4
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	orrs r3, r5
	strb r3, [r2, #5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A5D8: .4byte 0x02018400
_0800A5DC: .4byte 0x08DFB5FC
_0800A5E0: .4byte 0x000001FF
_0800A5E4: .4byte 0xFFFFFE00
_0800A5E8: .4byte 0x000003FF
_0800A5EC: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_800A5F0
sub_800A5F0: @ 0x0800A5F0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _0800A616
	cmp r0, #1
	bgt _0800A606
	cmp r0, #0
	beq _0800A610
	b _0800A62E
_0800A606:
	cmp r1, #2
	beq _0800A624
	cmp r1, #3
	beq _0800A62A
	b _0800A62E
_0800A610:
	bl sub_800A634
	b _0800A62E
_0800A616:
	bl sub_800A658
	bl sub_0800A6C8
	bl sub_0800A6CC
	b _0800A62E
_0800A624:
	bl sub_0800A6C8
	b _0800A62E
_0800A62A:
	bl sub_0800A6C8
_0800A62E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A634
sub_800A634: @ 0x0800A634
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800A650
	ldr r2, _0800A654
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800A650: .4byte 0x02018400
_0800A654: .4byte 0x01000200

	THUMB_FUNC_START sub_800A658
sub_800A658: @ 0x0800A658
	push {r4, r5, lr}
	ldr r0, _0800A6A4
	ldr r4, _0800A6A8
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0800A6AC
	ldr r5, _0800A6B0
	ldr r2, _0800A6B4
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _0800A6B8
	adds r4, #0x1e
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _0800A6BC
	ldr r0, _0800A6C0
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	ldr r0, _0800A6C4
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A6A4: .4byte 0x08091C68
_0800A6A8: .4byte 0x02000362
_0800A6AC: .4byte 0x08090C68
_0800A6B0: .4byte 0x02014800
_0800A6B4: .4byte 0x04000400
_0800A6B8: .4byte 0x08091D28
_0800A6BC: .4byte 0x08091CA8
_0800A6C0: .4byte 0xFFFFE000
_0800A6C4: .4byte 0xFFFFE400

	THUMB_FUNC_START sub_0800A6C8
sub_0800A6C8: @ 0x0800A6C8
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0800A6CC
sub_0800A6CC: @ 0x0800A6CC
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A6D0
sub_800A6D0: @ 0x0800A6D0
	push {r4, lr}
	ldr r0, _0800A710
	ldrb r1, [r0, #2]
	strb r1, [r0, #4]
	bl sub_8009448
	bl sub_800A8D8
	bl sub_8045658
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800A714
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0800A6F6:
	bl sub_80086D8
	cmp r0, #0x10
	beq _0800A744
	cmp r0, #0x10
	bgt _0800A71E
	cmp r0, #2
	beq _0800A752
	cmp r0, #2
	bgt _0800A718
	cmp r0, #1
	beq _0800A74A
	b _0800A75C
	.align 2, 0
_0800A710: .4byte gUnkStruct_2020E10
_0800A714: .4byte 0x0800A949
_0800A718:
	cmp r0, #8
	beq _0800A752
	b _0800A75C
_0800A71E:
	cmp r0, #0x40
	beq _0800A732
	cmp r0, #0x40
	bgt _0800A72C
	cmp r0, #0x20
	beq _0800A73E
	b _0800A75C
_0800A72C:
	cmp r0, #0x80
	beq _0800A738
	b _0800A75C
_0800A732:
	bl sub_800A778
	b _0800A760
_0800A738:
	bl sub_800A7C8
	b _0800A760
_0800A73E:
	bl sub_800A818
	b _0800A760
_0800A744:
	bl sub_800A868
	b _0800A760
_0800A74A:
	bl sub_800A8B8
	movs r4, #0
	b _0800A760
_0800A752:
	movs r0, #0x38
	bl sub_8034F60
	movs r4, #0
	b _0800A760
_0800A75C:
	bl sub_8008220
_0800A760:
	cmp r4, #1
	beq _0800A6F6
	movs r0, #7
	bl sub_800A3D8
	bl sub_800ABA8
	bl sub_800A934
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800A778
sub_800A778: @ 0x0800A778
	push {lr}
	ldr r2, _0800A798
	ldr r0, _0800A79C
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A7A0
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A7A6
	.align 2, 0
_0800A798: .4byte gUnkStruct_2020E10
_0800A79C: .4byte 0x08DFB610
_0800A7A0:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A7A6:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A7C4
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A7C4: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A7C8
sub_800A7C8: @ 0x0800A7C8
	push {lr}
	ldr r2, _0800A7E8
	ldr r0, _0800A7EC
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A7F0
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A7F6
	.align 2, 0
_0800A7E8: .4byte gUnkStruct_2020E10
_0800A7EC: .4byte 0x08DFB61B
_0800A7F0:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A7F6:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A814
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A814: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A818
sub_800A818: @ 0x0800A818
	push {lr}
	ldr r2, _0800A838
	ldr r0, _0800A83C
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A840
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A846
	.align 2, 0
_0800A838: .4byte gUnkStruct_2020E10
_0800A83C: .4byte 0x08DFB626
_0800A840:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A846:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A864
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A864: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A868
sub_800A868: @ 0x0800A868
	push {lr}
	ldr r2, _0800A888
	ldr r0, _0800A88C
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A890
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A896
	.align 2, 0
_0800A888: .4byte gUnkStruct_2020E10
_0800A88C: .4byte 0x08DFB631
_0800A890:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A896:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A8B4
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A8B4: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A8B8
sub_800A8B8: @ 0x0800A8B8
	push {lr}
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800A8D4
	ldrb r1, [r0, #4]
	cmp r1, #9
	bhi _0800A8D0
	strb r1, [r0, #2]
	ldrb r0, [r0, #2]
	bl sub_80091EC
_0800A8D0:
	pop {r0}
	bx r0
	.align 2, 0
_0800A8D4: .4byte gUnkStruct_2020E10

	THUMB_FUNC_START sub_800A8D8
sub_800A8D8: @ 0x0800A8D8
	push {r4, r5, lr}
	ldr r3, _0800A91C
	ldr r2, _0800A920
	ldr r5, _0800A924
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800A928
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800A92C
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800A930
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A91C: .4byte 0x02018430
_0800A920: .4byte 0x08DFB63C
_0800A924: .4byte gUnkStruct_2020E10
_0800A928: .4byte 0x08DFB647
_0800A92C: .4byte 0x0000C120
_0800A930: .4byte 0x40000800

	THUMB_FUNC_START sub_800A934
sub_800A934: @ 0x0800A934
	ldr r1, _0800A944
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0800A944: .4byte 0x02018430

	THUMB_FUNC_START sub_800A948
sub_800A948: @ 0x0800A948
	push {lr}
	bl sub_80454C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xbf
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x52
	movs r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _0800A974
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800A974: .4byte 0x04000050

	THUMB_FUNC_START sub_800A978
sub_800A978: @ 0x0800A978
	push {lr}
	bl sub_8045718
	ldr r1, _0800AA10
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0800AA14
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA18
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA1C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0800AA20
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0800AA24
	movs r3, #4
	strh r3, [r0]
	subs r1, #0x4a
	ldr r2, _0800AA28
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA2C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA30
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA34
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800AA38
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0800AA3C
	strh r2, [r0]
	ldr r1, _0800AA40
	movs r0, #0xf8
	strh r0, [r1]
	ldr r0, _0800AA44
	strh r2, [r0]
	ldr r1, _0800AA48
	movs r0, #0xfd
	strh r0, [r1]
	ldr r0, _0800AA4C
	strh r3, [r0]
	ldr r0, _0800AA50
	strh r2, [r0]
	ldr r0, _0800AA54
	strh r2, [r0]
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_0800AA10: .4byte 0x04000040
_0800AA14: .4byte 0x0000486F
_0800AA18: .4byte 0x00001E0E
_0800AA1C: .4byte 0x0000103F
_0800AA20: .4byte 0x000028D2
_0800AA24: .4byte 0x04000054
_0800AA28: .4byte 0x00000F04
_0800AA2C: .4byte 0x00001F0D
_0800AA30: .4byte 0x0000170A
_0800AA34: .4byte 0x00000703
_0800AA38: .4byte 0x02024240
_0800AA3C: .4byte 0x02024214
_0800AA40: .4byte 0x0202422C
_0800AA44: .4byte 0x02024248
_0800AA48: .4byte 0x0202420C
_0800AA4C: .4byte 0x0202424C
_0800AA50: .4byte 0x02024218
_0800AA54: .4byte 0x02024204

	THUMB_FUNC_START sub_800AA58
sub_800AA58: @ 0x0800AA58
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #8
	bhi _0800AAFE
	lsls r0, r0, #2
	ldr r1, _0800AA70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AA70: .4byte 0x0800AA74
_0800AA74: @ jump table
	.4byte _0800AA98 @ case 0
	.4byte _0800AAA4 @ case 1
	.4byte _0800AAB0 @ case 2
	.4byte _0800AABC @ case 3
	.4byte _0800AAD4 @ case 4
	.4byte _0800AAC8 @ case 5
	.4byte _0800AAE0 @ case 6
	.4byte _0800AAEC @ case 7
	.4byte _0800AAF8 @ case 8
_0800AA98:
	ldr r0, _0800AAA0
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAA0: .4byte 0x0800A979
_0800AAA4:
	ldr r0, _0800AAAC
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAAC: .4byte 0x0800AB0D
_0800AAB0:
	ldr r0, _0800AAB8
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAB8: .4byte 0x0800AB11
_0800AABC:
	ldr r0, _0800AAC4
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAC4: .4byte 0x0800AB2D
_0800AAC8:
	ldr r0, _0800AAD0
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAD0: .4byte 0x0800AB31
_0800AAD4:
	ldr r0, _0800AADC
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AADC: .4byte 0x0800AB35
_0800AAE0:
	ldr r0, _0800AAE8
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAE8: .4byte 0x0800AB39
_0800AAEC:
	ldr r0, _0800AAF4
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAF4: .4byte 0x0800AB75
_0800AAF8:
	ldr r0, _0800AB08
	bl sub_80081DC
_0800AAFE:
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0800AB08: .4byte 0x0800AB65
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_800AB10
sub_800AB10: @ 0x0800AB10
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfc
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_800AB38
sub_800AB38: @ 0x0800AB38
	push {lr}
	bl sub_80454C8
	bl sub_800ABF8
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0800AB60
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800AB60: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_800AB64
sub_800AB64: @ 0x0800AB64
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AB74
sub_800AB74: @ 0x0800AB74
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	bl sub_800ABF8
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0800ABA0
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800ABA0: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_0800ABA4
sub_0800ABA4: @ 0x0800ABA4
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABA8
sub_800ABA8: @ 0x0800ABA8
	push {lr}
	bl sub_80454F8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABB4
sub_800ABB4: @ 0x0800ABB4
	push {lr}
	bl sub_80454E0
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABD0
sub_800ABD0: @ 0x0800ABD0
	push {lr}
	bl sub_8045674
	bl sub_8045690
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0800ABE0
sub_0800ABE0: @ 0x0800ABE0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABE4
sub_800ABE4: @ 0x0800ABE4
	push {lr}
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABF8
sub_800ABF8: @ 0x0800ABF8
	ldr r1, _0800AC3C
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0800AC40
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AC44
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AC48
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0800AC4C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #2
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800AC3C: .4byte 0x04000040
_0800AC40: .4byte 0x0000486F
_0800AC44: .4byte 0x00001E0E
_0800AC48: .4byte 0x0000103F
_0800AC4C: .4byte 0x000028D2

	THUMB_FUNC_START sub_800AC50
sub_800AC50: @ 0x0800AC50
	push {lr}
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AC64
sub_800AC64: @ 0x0800AC64
	push {r4, lr}
	movs r4, #0xff
	bl sub_800B194
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800AC76
_0800AC72:
	movs r0, #0
	b _0800ACE2
_0800AC76:
	bl sub_800B088
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0800AC9E
	lsls r4, r0, #2
	movs r0, #0xc
	ands r4, r0
	bl sub_800B0E4
	lsls r0, r0, #1
	movs r1, #2
	ands r0, r1
	orrs r4, r0
	bl sub_800B10C
	movs r1, #1
	ands r1, r0
	orrs r4, r1
_0800AC9E:
	cmp r4, #6
	beq _0800AC72
	cmp r4, #6
	bgt _0800ACC4
	cmp r4, #2
	beq _0800ACD8
	cmp r4, #2
	bgt _0800ACB8
	cmp r4, #0
	beq _0800AC72
	cmp r4, #1
	beq _0800ACDC
	b _0800ACE0
_0800ACB8:
	cmp r4, #4
	beq _0800AC72
	cmp r4, #4
	bgt _0800ACDC
	movs r0, #1
	b _0800ACE2
_0800ACC4:
	cmp r4, #9
	bgt _0800ACCE
	cmp r4, #8
	bge _0800AC72
	b _0800ACDC
_0800ACCE:
	cmp r4, #0xb
	ble _0800ACD8
	cmp r4, #0xff
	beq _0800AC72
	b _0800ACE0
_0800ACD8:
	movs r0, #2
	b _0800ACE2
_0800ACDC:
	movs r0, #3
	b _0800ACE2
_0800ACE0:
	movs r0, #0
_0800ACE2:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800ACE8
sub_800ACE8: @ 0x0800ACE8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _0800AD1E
	cmp r0, #1
	bgt _0800ACFE
	cmp r0, #0
	beq _0800AD14
	b _0800AD1A
_0800ACFE:
	cmp r1, #2
	beq _0800AD08
	cmp r1, #3
	beq _0800AD0E
	b _0800AD1A
_0800AD08:
	bl sub_800AE1C
	b _0800AD1E
_0800AD0E:
	bl sub_800AE70
	b _0800AD1E
_0800AD14:
	bl sub_800AED0
	b _0800AD1E
_0800AD1A:
	bl sub_800AED0
_0800AD1E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AD24
sub_800AD24: @ 0x0800AD24
	push {lr}
	bl sub_800AC64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0800AD3C
	cmp r0, #2
	ble _0800AD46
	cmp r0, #3
	beq _0800AD42
	b _0800AD46
_0800AD3C:
	bl sub_800AE1C
	b _0800AD46
_0800AD42:
	bl sub_800AE70
_0800AD46:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AD4C
sub_800AD4C: @ 0x0800AD4C
	push {r4, lr}
	bl sub_80351F8
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B050
	bl sub_800AD84
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B06C
	bl sub_800ADA4
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B034
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AD84
sub_800AD84: @ 0x0800AD84
	push {lr}
	ldr r1, _0800AD98
	ldr r0, _0800AD9C
	ldr r0, [r0]
	ldr r2, _0800ADA0
	bl sub_80588C4
	pop {r1}
	bx r1
	.align 2, 0
_0800AD98: .4byte 0x0E000040
_0800AD9C: .4byte 0x08E0CD10
_0800ADA0: .4byte 0x00000747

	THUMB_FUNC_START sub_800ADA4
sub_800ADA4: @ 0x0800ADA4
	push {lr}
	ldr r1, _0800ADB8
	ldr r0, _0800ADBC
	ldr r0, [r0]
	ldr r2, _0800ADC0
	bl sub_80588C4
	pop {r1}
	bx r1
	.align 2, 0
_0800ADB8: .4byte 0x0E004020
_0800ADBC: .4byte 0x08E0CD10
_0800ADC0: .4byte 0x00000747

	THUMB_FUNC_START sub_800ADC4
sub_800ADC4: @ 0x0800ADC4
	push {lr}
	ldr r0, _0800ADE0
	ldr r1, [r0]
	ldr r0, _0800ADE4
	ldr r3, _0800ADE8
	ldr r2, _0800ADEC
	ldr r3, [r3]
	bl sub_805AAC4
	bl sub_803519C
	pop {r0}
	bx r0
	.align 2, 0
_0800ADE0: .4byte 0x08E0CD10
_0800ADE4: .4byte 0x0E000040
_0800ADE8: .4byte 0x020245AC
_0800ADEC: .4byte 0x00000747

	THUMB_FUNC_START sub_800ADF0
sub_800ADF0: @ 0x0800ADF0
	push {lr}
	ldr r0, _0800AE0C
	ldr r1, [r0]
	ldr r0, _0800AE10
	ldr r3, _0800AE14
	ldr r2, _0800AE18
	ldr r3, [r3]
	bl sub_805AAC4
	bl sub_803519C
	pop {r0}
	bx r0
	.align 2, 0
_0800AE0C: .4byte 0x08E0CD10
_0800AE10: .4byte 0x0E004020
_0800AE14: .4byte 0x020245AC
_0800AE18: .4byte 0x00000747

	THUMB_FUNC_START sub_800AE1C
sub_800AE1C: @ 0x0800AE1C
	push {r4, r5, lr}
	ldr r5, _0800AE5C
	ldr r1, [r5]
	ldr r0, _0800AE60
	ldr r3, [r0]
	ldr r0, _0800AE64
	ldr r2, _0800AE68
	bl sub_805AAC4
	bl sub_803519C
	bl sub_800B134
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B06C
	ldr r0, [r5]
	ldr r1, _0800AE6C
	ldr r2, _0800AE68
	bl sub_80588C4
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B034
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AE5C: .4byte 0x08E0CD10
_0800AE60: .4byte 0x020245AC
_0800AE64: .4byte 0x0E000040
_0800AE68: .4byte 0x00000747
_0800AE6C: .4byte 0x0E004020

	THUMB_FUNC_START sub_800AE70
sub_800AE70: @ 0x0800AE70
	push {r4, r5, lr}
	ldr r5, _0800AEB0
	ldr r1, [r5]
	ldr r0, _0800AEB4
	ldr r3, [r0]
	ldr r0, _0800AEB8
	ldr r2, _0800AEBC
	bl sub_805AAC4
	bl sub_803519C
	bl sub_800B158
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B050
	ldr r0, [r5]
	ldr r1, _0800AEC0
	ldr r2, _0800AEBC
	bl sub_80588C4
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B034
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AEB0: .4byte 0x08E0CD10
_0800AEB4: .4byte 0x020245AC
_0800AEB8: .4byte 0x0E004020
_0800AEBC: .4byte 0x00000747
_0800AEC0: .4byte 0x0E000040

	THUMB_FUNC_START sub_800AEC4
sub_800AEC4: @ 0x0800AEC4
	push {lr}
	bl sub_805882C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AED0
sub_800AED0: @ 0x0800AED0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800AF60
	ldr r6, [r0]
	movs r5, #0xe0
	lsls r5, r5, #0x14
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800AF64
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	bl sub_800AFF0
	bl sub_80351F8
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B050
	bl sub_800AD84
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B06C
	bl sub_800ADA4
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B1E4
	bl sub_800B17C
	bl sub_800B034
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF60: .4byte 0x08E0CD10
_0800AF64: .4byte 0x01001000

	THUMB_FUNC_START sub_800AF68
sub_800AF68: @ 0x0800AF68
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800AFE4
	ldr r6, [r0]
	movs r5, #0xe0
	lsls r5, r5, #0x14
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800AFE8
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	bl sub_800AFF0
	bl sub_800B050
	ldr r4, _0800AFEC
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B06C
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B1E4
	bl sub_800B17C
	bl sub_800B034
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFE4: .4byte 0x08E0CD10
_0800AFE8: .4byte 0x01001000
_0800AFEC: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_800AFF0
sub_800AFF0: @ 0x0800AFF0
	push {lr}
	bl sub_800759C
	bl InitTrunkCards
	bl sub_801DA58
	bl sub_801D6C0
	bl sub_801D724
	bl sub_8020168
	bl sub_802712C
	bl sub_802D9F0
	bl sub_8026F3C
	bl sub_80561FC
	bl sub_80554EC
	bl sub_8055FD0
	ldr r0, _0800B030
	bl sub_801FB44
	bl sub_8048CB8
	pop {r0}
	bx r0
	.align 2, 0
_0800B030: .4byte 0x02021C8C

	THUMB_FUNC_START sub_800B034
sub_800B034: @ 0x0800B034
	push {lr}
	sub sp, #4
	movs r1, #0
	mov r0, sp
	strb r1, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	movs r2, #1
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800B050
sub_800B050: @ 0x0800B050
	push {lr}
	sub sp, #4
	movs r1, #1
	mov r0, sp
	strb r1, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	movs r2, #1
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800B06C
sub_800B06C: @ 0x0800B06C
	push {lr}
	sub sp, #4
	movs r1, #2
	mov r0, sp
	strb r1, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	movs r2, #1
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800B088
sub_800B088: @ 0x0800B088
	push {lr}
	sub sp, #4
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r1, _0800B0A8
	ldr r3, [r1]
	mov r1, sp
	movs r2, #1
	bl sub_805AAC4
	mov r0, sp
	ldrb r0, [r0]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B0A8: .4byte 0x020245AC

	THUMB_FUNC_START sub_800B0AC
sub_800B0AC: @ 0x0800B0AC
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r1, _0800B0C4
	mov r0, sp
	movs r2, #2
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B0C4: .4byte 0x0E00401E

	THUMB_FUNC_START sub_800B0C8
sub_800B0C8: @ 0x0800B0C8
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r1, _0800B0E0
	mov r0, sp
	movs r2, #2
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B0E0: .4byte 0x0E007FFE

	THUMB_FUNC_START sub_800B0E4
sub_800B0E4: @ 0x0800B0E4
	push {r4, r5, lr}
	movs r5, #0
	bl sub_800ADC4
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B134
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _0800B104
	movs r5, #1
_0800B104:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B10C
sub_800B10C: @ 0x0800B10C
	push {r4, r5, lr}
	movs r5, #0
	bl sub_800ADF0
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B158
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _0800B12C
	movs r5, #1
_0800B12C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B134
sub_800B134: @ 0x0800B134
	push {lr}
	sub sp, #4
	ldr r0, _0800B150
	ldr r1, _0800B154
	ldr r3, [r1]
	mov r1, sp
	movs r2, #2
	bl sub_805AAC4
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B150: .4byte 0x0E00401E
_0800B154: .4byte 0x020245AC

	THUMB_FUNC_START sub_800B158
sub_800B158: @ 0x0800B158
	push {lr}
	sub sp, #4
	ldr r0, _0800B174
	ldr r1, _0800B178
	ldr r3, [r1]
	mov r1, sp
	movs r2, #2
	bl sub_805AAC4
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B174: .4byte 0x0E007FFE
_0800B178: .4byte 0x020245AC

	THUMB_FUNC_START sub_800B17C
sub_800B17C: @ 0x0800B17C
	push {lr}
	ldr r0, _0800B18C
	ldr r1, _0800B190
	movs r2, #0xf
	bl sub_80588C4
	pop {r1}
	bx r1
	.align 2, 0
_0800B18C: .4byte 0x080D2CF0
_0800B190: .4byte 0x0E000001

	THUMB_FUNC_START sub_800B194
sub_800B194: @ 0x0800B194
	push {r4, lr}
	sub sp, #0x10
	movs r4, #1
	ldr r0, _0800B1B0
	ldr r1, _0800B1B4
	ldr r3, [r1]
	mov r1, sp
	movs r2, #0xf
	bl sub_805AAC4
	movs r2, #0
	mov r0, sp
	ldr r1, _0800B1B8
	b _0800B1CA
	.align 2, 0
_0800B1B0: .4byte 0x0E000001
_0800B1B4: .4byte 0x020245AC
_0800B1B8: .4byte 0x080D2CF0
_0800B1BC:
	adds r2, #1
	cmp r2, #0xe
	bhi _0800B1D4
	mov r1, sp
	adds r0, r1, r2
	ldr r1, _0800B1E0
	adds r1, r2, r1
_0800B1CA:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800B1BC
	movs r4, #0
_0800B1D4:
	adds r0, r4, #0
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800B1E0: .4byte 0x080D2CF0

	THUMB_FUNC_START sub_800B1E4
sub_800B1E4: @ 0x0800B1E4
	push {lr}
	sub sp, #4
	movs r1, #3
	mov r0, sp
	strb r1, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	movs r2, #1
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800B200
sub_800B200: @ 0x0800B200
	push {r4, r5, r6, r7, lr}
	bl sub_80267B8
	movs r4, #0
	ldr r5, _0800B268
_0800B20A:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0800B26C
	adds r1, r1, r2
	ldr r2, _0800B270
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x12
	bls _0800B20A
	movs r4, #0x40
	ldr r6, _0800B274
	ldr r7, _0800B278
	ldr r5, _0800B27C
	movs r3, #0x80
	ldr r2, _0800B280
_0800B236:
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r2
	bls _0800B236
	ldr r0, [r6]
	adds r1, r7, #0
	movs r2, #0x80
	bl CpuSet
	ldr r0, _0800B27C
	ldr r0, [r0]
	ldr r1, _0800B284
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuSet
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B268: .4byte 0x08E0136C
_0800B26C: .4byte 0x0200FC62
_0800B270: .4byte 0x04000007
_0800B274: .4byte 0x08E01368
_0800B278: .4byte 0x02000100
_0800B27C: .4byte 0x08E01364
_0800B280: .4byte 0x00003FFF
_0800B284: .4byte 0x02004400

	THUMB_FUNC_START sub_800B288
sub_800B288: @ 0x0800B288
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0800B296
	cmp r4, #2
	bne _0800B29A
_0800B296:
	bl sub_800B200
_0800B29A:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0800B2A8
	bl sub_800B2B0
_0800B2A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800B2B0
sub_800B2B0: @ 0x0800B2B0
	push {r4, r5, r6, lr}
	bl sub_80267B8
	movs r4, #0
	ldr r6, _0800B2FC
_0800B2BA:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800B300
	adds r1, r1, r5
	ldr r2, _0800B304
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x12
	bls _0800B2BA
	ldr r0, _0800B308
	ldr r0, [r0]
	ldr r1, _0800B30C
	movs r2, #0x80
	bl CpuSet
	ldr r0, _0800B310
	ldr r0, [r0]
	ldr r2, _0800B314
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B2FC: .4byte 0x08E0136C
_0800B300: .4byte 0x0200F440
_0800B304: .4byte 0x04000007
_0800B308: .4byte 0x08E01368
_0800B30C: .4byte 0x02000000
_0800B310: .4byte 0x08E01364
_0800B314: .4byte 0xFFFF0FC0

	THUMB_FUNC_START sub_800B318
sub_800B318: @ 0x0800B318
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6]
	bl SetCardData
	ldr r5, _0800B37C
	ldrb r0, [r5, #0x1a]
	cmp r0, #2
	bne _0800B374
	ldrh r0, [r5, #0x12]
	ldr r4, _0800B380
	ldrb r2, [r6, #2]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldrb r2, [r5, #0x16]
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_800B594
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x14]
	ldrb r2, [r6, #2]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldrb r2, [r5, #0x16]
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_800B594
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x12]
	movs r1, #3
	ldrsb r1, [r6, r1]
	bl sub_800B560
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x14]
	movs r1, #3
	ldrsb r1, [r6, r1]
	bl sub_800B560
	strh r0, [r5, #0x14]
_0800B374:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B37C: .4byte 0x02021AD0
_0800B380: .4byte 0x08094FE4

	THUMB_FUNC_START sub_800B384
sub_800B384: @ 0x0800B384
	push {r4, lr}
	movs r0, #0
	bl sub_800BD14
	ldr r4, _0800B3D0
	str r0, [r4]
	movs r0, #0
	bl sub_800BD14
	str r0, [r4, #4]
	ldr r0, _0800B3D4
	ldr r0, [r0]
	str r0, [r4, #8]
	movs r1, #0
	str r1, [r4, #0xc]
	movs r0, #0
	strh r1, [r4, #0x10]
	ldr r1, _0800B3D8
	strh r1, [r4, #0x12]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r4, #0x14]
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
	strb r0, [r4, #0x1a]
	strb r0, [r4, #0x1b]
	strb r0, [r4, #0x1c]
	strb r0, [r4, #0x1d]
	strb r0, [r4, #0x1e]
	ldr r1, _0800B3DC
	strb r0, [r1]
	ldr r1, _0800B3E0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B3D0: .4byte 0x02021AD0
_0800B3D4: .4byte 0x08F985E0
_0800B3D8: .4byte 0x0000FFFF
_0800B3DC: .4byte 0x0201CB38
_0800B3E0: .4byte 0x0201CB39

	THUMB_FUNC_START SetCardData
SetCardData: @ 0x0800B3E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _0800B474
	strh r4, [r5, #0x10]
	ldr r0, _0800B478
	lsls r1, r4, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x12]
	ldr r0, _0800B47C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5, #0x14]
	ldr r0, _0800B480
	lsls r6, r4, #2
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r5, #0xc]
	ldr r0, _0800B484
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x17]
	ldr r0, _0800B488
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x18]
	ldr r0, _0800B48C
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x16]
	ldr r0, _0800B490
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x19]
	ldr r0, _0800B494
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r0, _0800B498
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x1b]
	ldr r0, _0800B49C
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x1c]
	ldr r1, _0800B4A0
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x1d]
	ldr r0, _0800B4A4
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x1e]
	adds r0, r4, #0
	bl sub_800BD14
	str r0, [r5]
	adds r0, r4, #0
	bl sub_800BD14
	str r0, [r5, #4]
	ldr r0, _0800B4A8
	adds r6, r6, r0
	ldr r0, [r6]
	str r0, [r5, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B474: .4byte 0x02021AD0
_0800B478: .4byte gCardAtks
_0800B47C: .4byte gCardDefs
_0800B480: .4byte gCardCosts
_0800B484: .4byte gCardAttr
_0800B488: .4byte gCardLevels
_0800B48C: .4byte gCardTypes
_0800B490: .4byte gCardColors
_0800B494: .4byte 0x080945F5
_0800B498: .4byte 0x080942D4
_0800B49C: .4byte 0x08094916
_0800B4A0: .4byte 0x08094C37
_0800B4A4: .4byte 0x08094CC3
_0800B4A8: .4byte 0x08F985E0

	THUMB_FUNC_START sub_800B4AC
sub_800B4AC: @ 0x0800B4AC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	ldr r6, _0800B514
	ldrb r0, [r6, #0x1a]
	cmp r0, #2
	bne _0800B50C
	ldrh r0, [r6, #0x12]
	ldr r5, _0800B518
	ldr r4, _0800B51C
	ldrb r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldrb r2, [r6, #0x16]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1]
	bl sub_800B594
	strh r0, [r6, #0x12]
	ldrh r0, [r6, #0x14]
	ldrb r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldrb r2, [r6, #0x16]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1]
	bl sub_800B594
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x12]
	ldr r4, _0800B520
	movs r1, #0
	ldrsb r1, [r4, r1]
	bl sub_800B560
	strh r0, [r6, #0x12]
	ldrh r0, [r6, #0x14]
	movs r1, #0
	ldrsb r1, [r4, r1]
	bl sub_800B560
	strh r0, [r6, #0x14]
_0800B50C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B514: .4byte 0x02021AD0
_0800B518: .4byte 0x08094FE4
_0800B51C: .4byte 0x0201CB38
_0800B520: .4byte 0x0201CB39

	THUMB_FUNC_START sub_800B524
sub_800B524: @ 0x0800B524
	ldr r2, _0800B530
	strb r0, [r2]
	ldr r0, _0800B534
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800B530: .4byte 0x0201CB38
_0800B534: .4byte 0x0201CB39

	THUMB_FUNC_START sub_800B538
sub_800B538: @ 0x0800B538
	push {r4, lr}
	ldrh r0, [r0]
	bl SetCardData
	ldr r4, _0800B558
	bl GetDuelistLevel
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bls _0800B550
	ldr r0, _0800B55C
	str r0, [r4, #8]
_0800B550:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B558: .4byte 0x02021AD0
_0800B55C: .4byte 0x08DFB654

	THUMB_FUNC_START sub_800B560
sub_800B560: @ 0x0800B560
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	cmp r0, #0
	bgt _0800B57C
	movs r2, #0
	b _0800B590
_0800B57C:
	ldr r1, _0800B588
	cmp r0, r1
	ble _0800B58C
	adds r2, r1, #0
	b _0800B590
	.align 2, 0
_0800B588: .4byte 0x0000FFFE
_0800B58C:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800B590:
	adds r0, r2, #0
	bx lr

	THUMB_FUNC_START sub_800B594
sub_800B594: @ 0x0800B594
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #4
	bhi _0800B602
	lsls r0, r0, #2
	ldr r1, _0800B5AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B5AC: .4byte 0x0800B5B0
_0800B5B0: @ jump table
	.4byte _0800B602 @ case 0
	.4byte _0800B5C4 @ case 1
	.4byte _0800B602 @ case 2
	.4byte _0800B5E4 @ case 3
	.4byte _0800B602 @ case 4
_0800B5C4:
	adds r0, r2, #0
	bl sub_805C618
	ldr r3, _0800B5E0
	ldr r2, _0800B5DC
	bl sub_805BEF4
	bl sub_805AFC0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0800B602
	.align 2, 0
_0800B5DC: .4byte 0x3FE66666
_0800B5E0: .4byte 0x66666666
_0800B5E4:
	adds r0, r2, #0
	bl sub_805C618
	ldr r3, _0800B60C
	ldr r2, _0800B608
	bl sub_805BEF4
	bl sub_805AFC0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0800B610
	cmp r2, r0
	bls _0800B602
	ldr r2, _0800B614
_0800B602:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800B608: .4byte 0x3FF4CCCC
_0800B60C: .4byte 0xCCCCCCCD
_0800B610: .4byte 0x0000FFFD
_0800B614: .4byte 0x0000FFFE

	THUMB_FUNC_START sub_800B618
sub_800B618: @ 0x0800B618
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
_0800B61E:
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #1
	ldr r1, _0800B65C
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800B660
	adds r1, r1, r5
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800B61E
	ldr r0, _0800B664
	ldr r2, _0800B668
	adds r1, r5, r2
	bl LZ77UnCompWram
	ldr r0, _0800B66C
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800B6BC
	cmp r0, #2
	bgt _0800B670
	cmp r0, #1
	beq _0800B67A
	b _0800B7A8
	.align 2, 0
_0800B65C: .4byte 0x08097D94
_0800B660: .4byte 0x0200FC00
_0800B664: .4byte 0x0809553C
_0800B668: .4byte 0xFFFF8800
_0800B66C: .4byte 0x02021CF8
_0800B670:
	cmp r0, #3
	beq _0800B6C4
	cmp r0, #4
	beq _0800B73C
	b _0800B7A8
_0800B67A:
	ldr r4, _0800B6AC
	ldr r0, _0800B6B0
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x30
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r2, _0800B6B4
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, _0800B6B8
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xf0
	lsls r1, r1, #1
	b _0800B712
	.align 2, 0
_0800B6AC: .4byte 0x08DFB8A8
_0800B6B0: .4byte 0xFFFF9D60
_0800B6B4: .4byte 0xFFFFA140
_0800B6B8: .4byte 0xFFFFA520
_0800B6BC:
	ldr r4, _0800B6C0
	b _0800B6C6
	.align 2, 0
_0800B6C0: .4byte 0x08DFBAE8
_0800B6C4:
	ldr r4, _0800B720
_0800B6C6:
	ldr r0, _0800B724
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x18
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r2, _0800B728
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r2, _0800B72C
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, _0800B730
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B734
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xa8
	lsls r1, r1, #2
_0800B712:
	adds r0, r4, r1
	ldr r2, _0800B738
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	b _0800B7A8
	.align 2, 0
_0800B720: .4byte 0x08DFBDE8
_0800B724: .4byte 0xFFFF95A0
_0800B728: .4byte 0xFFFF9980
_0800B72C: .4byte 0xFFFF9D60
_0800B730: .4byte 0xFFFFA140
_0800B734: .4byte 0xFFFFA520
_0800B738: .4byte 0xFFFFA900
_0800B73C:
	ldr r4, _0800B834
	ldr r0, _0800B838
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x18
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r2, _0800B83C
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B840
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B844
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B848
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B84C
	adds r1, r5, r2
	movs r2, #0x10
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r2, _0800B850
	adds r1, r5, r2
	movs r2, #8
	bl CpuFastSet
_0800B7A8:
	ldr r0, _0800B854
	ldr r1, _0800B858
	ldr r2, _0800B85C
	bl CpuSet
	movs r4, #0
_0800B7B4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800B860
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0800B864
	adds r1, r1, r2
	ldr r2, _0800B868
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800B7B4
	bl sub_800BA04
	bl sub_800BC24
	bl sub_800BCEC
	bl sub_800BCC4
	adds r0, r6, #0
	bl sub_800BCB0
	bl sub_80267B8
	movs r4, #0
	ldr r6, _0800B86C
_0800B7F2:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800B870
	adds r1, r1, r5
	movs r2, #0xe
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x12
	bls _0800B7F2
	ldr r0, _0800B874
	ldr r0, [r0]
	ldr r1, _0800B878
	movs r2, #0x80
	bl CpuSet
	ldr r0, _0800B87C
	ldr r0, [r0]
	ldr r2, _0800B880
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B834: .4byte 0x08DFBDE8
_0800B838: .4byte 0xFFFF95A0
_0800B83C: .4byte 0xFFFF9980
_0800B840: .4byte 0xFFFF9D60
_0800B844: .4byte 0xFFFFA140
_0800B848: .4byte 0xFFFFA520
_0800B84C: .4byte 0xFFFFA900
_0800B850: .4byte 0xFFFFA940
_0800B854: .4byte 0x08097C94
_0800B858: .4byte 0x02000100
_0800B85C: .4byte 0x04000040
_0800B860: .4byte 0x0809508C
_0800B864: .4byte 0x0200F400
_0800B868: .4byte 0x0400000F
_0800B86C: .4byte 0x08E0136C
_0800B870: .4byte 0x0200EC40
_0800B874: .4byte 0x08E01368
_0800B878: .4byte 0x02000000
_0800B87C: .4byte 0x08E01364
_0800B880: .4byte 0xFFFF17C0

	THUMB_FUNC_START sub_800B884
sub_800B884: @ 0x0800B884
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800B954
	ldrh r6, [r0, #0x10]
	ldr r0, _0800B958
	cmp r6, r0
	bne _0800B896
	b _0800B9F4
_0800B896:
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r6, r0
	bls _0800B8A0
	adds r6, r0, #0
_0800B8A0:
	movs r4, #0xfa
	lsls r4, r4, #2
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r6, r0
	adds r1, r4, #0
	bl sub_805AF28
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0x64
	adds r0, r6, #0
	movs r1, #0x64
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r6, r0
	movs r1, #0x64
	bl sub_805AF28
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r7, #0
	muls r0, r5, r0
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r6, r0
	movs r1, #0xa
	bl sub_805AF28
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	subs r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #4
	cmp r4, #0
	bne _0800B92C
	movs r6, #3
	cmp r7, #0
	bne _0800B92C
	movs r6, #1
	cmp r5, #0
	beq _0800B92C
	movs r6, #2
_0800B92C:
	ldr r4, _0800B95C
	cmp r6, #2
	bls _0800B968
	ldr r0, _0800B960
	adds r1, r7, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	ldr r2, _0800B960
	adds r0, r7, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	ldr r2, _0800B964
	adds r0, r4, #0
	bl sub_8020968
	b _0800B974
	.align 2, 0
_0800B954: .4byte 0x02021AD0
_0800B958: .4byte 0x0000FFFF
_0800B95C: .4byte 0x02004420
_0800B960: .4byte 0x0000824F
_0800B964: .4byte 0x00000901
_0800B968:
	ldr r1, _0800B99C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_8020968
_0800B974:
	adds r4, #0x20
	cmp r6, #1
	bls _0800B9A8
	ldr r0, _0800B9A0
	adds r1, r5, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	ldr r2, _0800B9A0
	adds r0, r5, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	ldr r2, _0800B9A4
	adds r0, r4, #0
	bl sub_8020968
	b _0800B9B4
	.align 2, 0
_0800B99C: .4byte 0x00004081
_0800B9A0: .4byte 0x0000824F
_0800B9A4: .4byte 0x00000901
_0800B9A8:
	ldr r1, _0800B9DC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_8020968
_0800B9B4:
	adds r4, #0x60
	cmp r6, #0
	beq _0800B9E8
	ldr r1, _0800B9E0
	add r1, r8
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, _0800B9E0
	add r0, r8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	ldr r2, _0800B9E4
	adds r0, r4, #0
	bl sub_8020968
	b _0800B9F4
	.align 2, 0
_0800B9DC: .4byte 0x00004081
_0800B9E0: .4byte 0x0000824F
_0800B9E4: .4byte 0x00000901
_0800B9E8:
	ldr r1, _0800BA00
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_8020968
_0800B9F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA00: .4byte 0x00004081

	THUMB_FUNC_START sub_800BA04
sub_800BA04: @ 0x0800BA04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	ldr r0, _0800BA60
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_8020824
	adds r6, r0, #0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	movs r2, #0
	adds r3, r6, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800BA9A
	cmp r0, #0x24
	beq _0800BA9A
	movs r4, #0x40
	movs r1, #0x80
_0800BA34:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0800BA40
	adds r3, r6, r5
	mov sl, ip
_0800BA40:
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800BA72
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0800BA64
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800BA64
	movs r0, #0xbf
	ands r2, r0
	b _0800BA6A
	.align 2, 0
_0800BA60: .4byte 0x02021AD0
_0800BA64:
	orrs r2, r4
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_0800BA6A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _0800BA7E
_0800BA72:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	orrs r2, r4
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_0800BA7E:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #0x1e
	bls _0800BA8E
	orrs r2, r1
_0800BA8E:
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800BA9A
	cmp r0, #0x24
	bne _0800BA34
_0800BA9A:
	movs r7, #0
	mov r1, ip
	cmp r1, #0x1e
	bls _0800BAB4
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x80
	orrs r7, r0
	movs r4, #0x1e
	mov ip, r4
	b _0800BAB6
_0800BAB4:
	mov sl, ip
_0800BAB6:
	movs r2, #0
	movs r5, #0
	cmp r2, ip
	blo _0800BAC0
	b _0800BBDA
_0800BAC0:
	movs r0, #0x20
	mov r8, r0
_0800BAC4:
	movs r0, #3
	ands r0, r5
	adds r1, r5, #1
	mov sb, r1
	cmp r0, #2
	bne _0800BB30
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0800BB30
	movs r4, #0
_0800BADA:
	movs r0, #0x7f
	ands r0, r7
	cmp r0, #0
	beq _0800BB18
	ldrb r0, [r3]
	add r1, sp, #0x7c
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0800BB00
	mov r0, sp
	adds r0, r0, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
_0800BB00:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _0800BB26
_0800BB18:
	mov r1, sp
	adds r0, r1, r2
	mov r1, r8
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800BB26:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0800BADA
_0800BB30:
	cmp r5, sl
	bhs _0800BB5E
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0800BB4C
	mov r4, sp
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, #1
_0800BB4C:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r6]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, #1
	b _0800BB6C
_0800BB5E:
	mov r1, sp
	adds r0, r1, r2
	mov r4, r8
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800BB6C:
	movs r0, #3
	ands r5, r0
	cmp r5, #3
	bne _0800BBCE
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0800BBCE
	movs r4, #0
_0800BB7E:
	movs r0, #0x7f
	ands r0, r7
	cmp r0, #0
	beq _0800BBB6
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0800BB9E
	mov r5, sp
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
_0800BB9E:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _0800BBC4
_0800BBB6:
	mov r1, sp
	adds r0, r1, r2
	mov r5, r8
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800BBC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0800BB7E
_0800BBCE:
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, ip
	bhs _0800BBDA
	b _0800BAC4
_0800BBDA:
	mov r4, sp
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x80
	ands r7, r0
	cmp r7, #0
	beq _0800BC00
	ldr r2, _0800BBF8
	ldr r0, _0800BBFC
	mov r1, sp
	bl sub_8020A3C
	b _0800BC0A
	.align 2, 0
_0800BBF8: .4byte 0x00000801
_0800BBFC: .4byte 0x02004420
_0800BC00:
	ldr r2, _0800BC1C
	ldr r0, _0800BC20
	mov r1, sp
	bl sub_8020A3C
_0800BC0A:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BC1C: .4byte 0x00000901
_0800BC20: .4byte 0x02004420

	THUMB_FUNC_START sub_800BC24
sub_800BC24: @ 0x0800BC24
	push {r4, r5, lr}
	ldr r0, _0800BC50
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
	ldr r5, _0800BC54
	movs r4, #0
_0800BC34:
	ldr r0, _0800BC58
	subs r1, r4, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _0800BC44
	cmp r4, #4
	bhi _0800BC64
_0800BC44:
	adds r0, r5, #0
	ldr r1, _0800BC5C
	ldr r2, _0800BC60
	bl sub_8020968
	b _0800BC86
	.align 2, 0
_0800BC50: .4byte 0x02021AD0
_0800BC54: .4byte 0x02005400
_0800BC58: .4byte 0x02021BD0
_0800BC5C: .4byte 0x00004081
_0800BC60: .4byte 0x00000101
_0800BC64:
	ldrb r0, [r1]
	ldr r2, _0800BC94
	adds r1, r0, r2
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #8
	ldr r2, _0800BC94
	adds r0, r0, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	adds r0, r5, #0
	ldr r2, _0800BC98
	bl sub_8020968
_0800BC86:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800BC9C
	adds r5, #0x60
	b _0800BC9E
	.align 2, 0
_0800BC94: .4byte 0x0000824F
_0800BC98: .4byte 0x00000101
_0800BC9C:
	adds r5, #0x20
_0800BC9E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0800BC34
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BCB0
sub_800BCB0: @ 0x0800BCB0
	push {lr}
	ldr r1, _0800BCC0
	movs r2, #0x8c
	lsls r2, r2, #3
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0800BCC0: .4byte 0x02005680

	THUMB_FUNC_START sub_800BCC4
sub_800BCC4: @ 0x0800BCC4
	push {r4, lr}
	ldr r4, _0800BCE0
	ldr r0, _0800BCE4
	ldrb r0, [r0, #0x17]
	bl sub_802BF50
	adds r1, r0, #0
	ldr r2, _0800BCE8
	adds r0, r4, #0
	bl sub_8020A3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCE0: .4byte 0x02005000
_0800BCE4: .4byte 0x02021AD0
_0800BCE8: .4byte 0x00000901

	THUMB_FUNC_START sub_800BCEC
sub_800BCEC: @ 0x0800BCEC
	push {r4, lr}
	ldr r4, _0800BD08
	ldr r0, _0800BD0C
	ldrb r0, [r0, #0x16]
	bl sub_803F02C
	adds r1, r0, #0
	ldr r2, _0800BD10
	adds r0, r4, #0
	bl sub_8020A3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD08: .4byte 0x02004C80
_0800BD0C: .4byte 0x02021AD0
_0800BD10: .4byte 0x00000901

	THUMB_FUNC_START sub_800BD14
sub_800BD14: @ 0x0800BD14
	lsls r0, r0, #0x10
	ldr r1, _0800BD20
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800BD20: .4byte 0x08DFC288

	THUMB_FUNC_START sub_800BD24
sub_800BD24: @ 0x0800BD24
	lsls r0, r0, #0x10
	ldr r1, _0800BD30
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800BD30: .4byte 0x08DFCF0C

	THUMB_FUNC_START sub_800BD34
sub_800BD34: @ 0x0800BD34
	push {lr}
	bl sub_800BD44
	bl sub_800BDA0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BD44
sub_800BD44: @ 0x0800BD44
	push {r4, lr}
	ldr r4, _0800BD88
	ldrb r0, [r4, #0x12]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf9
	bhi _0800BD90
	ldr r1, _0800BD8C
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x12]
	movs r2, #0xfb
	subs r2, r2, r1
	asrs r3, r2, #0x1f
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl sub_805B0D4
	movs r2, #0xfa
	movs r3, #0
	bl sub_805B144
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0800BD98
	movs r0, #1
	movs r1, #0
	b _0800BD94
	.align 2, 0
_0800BD88: .4byte 0x02021AF0
_0800BD8C: .4byte 0x08DFDB90
_0800BD90:
	movs r0, #0
	movs r1, #0
_0800BD94:
	str r0, [r4]
	str r1, [r4, #4]
_0800BD98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BDA0
sub_800BDA0: @ 0x0800BDA0
	push {r4, lr}
	ldr r0, _0800BDC8
	ldrb r1, [r0, #0x12]
	adds r4, r0, #0
	cmp r1, #0xf9
	bhi _0800BDD0
	ldr r1, _0800BDCC
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x12]
	movs r2, #0xfa
	subs r2, r2, r1
	asrs r3, r2, #0x1f
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl sub_805B0D4
	b _0800BDDC
	.align 2, 0
_0800BDC8: .4byte 0x02021AF0
_0800BDCC: .4byte 0x08DFDB90
_0800BDD0:
	ldr r1, _0800BE00
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
_0800BDDC:
	ldr r2, _0800BE04
	ldr r3, _0800BE08
	bl sub_805B144
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	orrs r0, r1
	cmp r0, #0
	bne _0800BDFA
	movs r0, #1
	movs r1, #0
	str r0, [r4, #8]
	str r1, [r4, #0xc]
_0800BDFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BE00: .4byte 0x08DFDB90
_0800BE04: .4byte 0x00001388
_0800BE08: .4byte 0x00000000

	THUMB_FUNC_START sub_800BE0C
sub_800BE0C: @ 0x0800BE0C
	push {r4, lr}
	movs r0, #2
	bl sub_8035038
	movs r0, #0xd5
	bl sub_8034F60
	bl sub_8021B80
	bl sub_8008F24
	bl sub_801DA20
	bl sub_80090B8
	movs r0, #0x8f
	bl sub_8034F60
	bl sub_800BF28
	movs r4, #1
_0800BE36:
	bl sub_8008644
	adds r1, r0, #0
	cmp r1, #0x40
	beq _0800BE7E
	cmp r1, #0x40
	bgt _0800BE5C
	cmp r1, #2
	beq _0800BEAC
	cmp r1, #2
	bgt _0800BE52
	cmp r1, #1
	beq _0800BEA6
	b _0800BF00
_0800BE52:
	cmp r1, #4
	beq _0800BEE8
	cmp r1, #8
	beq _0800BED6
	b _0800BF00
_0800BE5C:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800BE88
	cmp r1, r0
	bgt _0800BE6E
	cmp r1, #0x80
	beq _0800BE92
	b _0800BF00
_0800BE6E:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800BE9C
	adds r0, #0x80
	cmp r1, r0
	beq _0800BEBE
	b _0800BF00
_0800BE7E:
	movs r0, #3
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BE88:
	movs r0, #5
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BE92:
	movs r0, #2
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BE9C:
	movs r0, #4
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BEA6:
	bl sub_800BF54
	b _0800BEB0
_0800BEAC:
	bl sub_800C558
_0800BEB0:
	cmp r0, #0
	bne _0800BEB6
	movs r4, #0
_0800BEB6:
	movs r0, #7
	bl sub_800AA58
	b _0800BF0A
_0800BEBE:
	movs r0, #6
	bl sub_8008F88
	movs r0, #4
_0800BEC6:
	bl sub_800D904
	bl sub_800ABB4
	movs r0, #4
	bl sub_800AA58
	b _0800BF0A
_0800BED6:
	bl sub_800DAA4
	movs r0, #8
	bl sub_800D904
	movs r0, #8
	bl sub_800AA58
	b _0800BF0A
_0800BEE8:
	movs r0, #0xa
	bl sub_8008F88
	movs r0, #7
	bl sub_800D904
	movs r0, #9
	bl sub_800AA58
	bl sub_800ABE4
	b _0800BF0A
_0800BF00:
	bl sub_0800ABE0
	movs r0, #5
	bl sub_800AA58
_0800BF0A:
	cmp r4, #0
	bne _0800BE36
	movs r0, #2
	bl sub_8035020
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BF1C
sub_800BF1C: @ 0x0800BF1C
	ldr r1, _0800BF24
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800BF24: .4byte 0x02021B04

	THUMB_FUNC_START sub_800BF28
sub_800BF28: @ 0x0800BF28
	push {lr}
	ldr r1, _0800BF50
	movs r0, #0
	strh r0, [r1]
	bl sub_800D904
	movs r0, #2
	bl sub_800D904
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	movs r0, #3
	bl sub_800AA58
	pop {r0}
	bx r0
	.align 2, 0
_0800BF50: .4byte 0x02021B04

	THUMB_FUNC_START sub_800BF54
sub_800BF54: @ 0x0800BF54
	push {r4, r5, r6, lr}
	movs r5, #1
	ldr r4, _0800BF8C
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_800C0D8
	bl sub_800C208
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800BF90
	bl sub_80081DC
	bl sub_8008220
	movs r6, #1
_0800BF78:
	bl sub_80086D8
	cmp r0, #2
	beq _0800C002
	cmp r0, #2
	bgt _0800BF94
	cmp r0, #1
	beq _0800BFD0
	b _0800C00A
	.align 2, 0
_0800BF8C: .4byte gUnkStruct_2020E10
_0800BF90: .4byte 0x0800C4F9
_0800BF94:
	cmp r0, #0x40
	beq _0800BF9E
	cmp r0, #0x80
	beq _0800BFA8
	b _0800C00A
_0800BF9E:
	ldr r0, _0800BFA4
	b _0800BFAA
	.align 2, 0
_0800BFA4: .4byte 0x08DFF498
_0800BFA8:
	ldr r0, _0800BFC8
_0800BFAA:
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #4]
	bl sub_800C208
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800BFCC
	bl sub_80081DC
_0800BFC2:
	bl sub_8008220
	b _0800C00E
	.align 2, 0
_0800BFC8: .4byte 0x08DFF49B
_0800BFCC: .4byte 0x080454C9
_0800BFD0:
	ldrb r0, [r4, #4]
	cmp r0, #1
	beq _0800BFEC
	cmp r0, #1
	bgt _0800BFE0
	cmp r0, #0
	beq _0800BFE6
	b _0800BFC2
_0800BFE0:
	cmp r0, #2
	beq _0800BFFA
	b _0800BFC2
_0800BFE6:
	bl sub_800C1BC
	b _0800C00E
_0800BFEC:
	bl sub_800C2C0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800C012
	movs r5, #0
	b _0800C012
_0800BFFA:
	movs r0, #0x37
	bl sub_8034F60
	b _0800C012
_0800C002:
	movs r0, #0x38
	bl sub_8034F60
	b _0800C012
_0800C00A:
	bl sub_8008220
_0800C00E:
	cmp r6, #0
	bne _0800BF78
_0800C012:
	bl sub_8008A48
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C020
sub_800C020: @ 0x0800C020
	push {r4, r5, r6, lr}
	movs r5, #1
	ldr r4, _0800C058
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_800C3C4
	bl sub_800C264
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800C05C
	bl sub_80081DC
	bl sub_8008220
	movs r6, #1
_0800C044:
	bl sub_80086D8
	cmp r0, #2
	beq _0800C0BE
	cmp r0, #2
	bgt _0800C060
	cmp r0, #1
	beq _0800C09C
	b _0800C0C6
	.align 2, 0
_0800C058: .4byte gUnkStruct_2020E10
_0800C05C: .4byte 0x0800C4F9
_0800C060:
	cmp r0, #0x40
	beq _0800C06A
	cmp r0, #0x80
	beq _0800C074
	b _0800C0C6
_0800C06A:
	ldr r0, _0800C070
	b _0800C076
	.align 2, 0
_0800C070: .4byte 0x08DFF4A4
_0800C074:
	ldr r0, _0800C094
_0800C076:
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #4]
	bl sub_800C264
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800C098
	bl sub_80081DC
	bl sub_8008220
	b _0800C0CA
	.align 2, 0
_0800C094: .4byte 0x08DFF4A6
_0800C098: .4byte 0x080454C9
_0800C09C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800C0AC
	cmp r0, #1
	beq _0800C0B4
	bl sub_8008220
	b _0800C0CA
_0800C0AC:
	movs r0, #0x37
	bl sub_8034F60
	b _0800C0CE
_0800C0B4:
	movs r0, #0xde
	bl sub_8034F60
	movs r5, #0
	b _0800C0CE
_0800C0BE:
	movs r0, #0x38
	bl sub_8034F60
	b _0800C0CE
_0800C0C6:
	bl sub_8008220
_0800C0CA:
	cmp r6, #0
	bne _0800C044
_0800C0CE:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C0D8
sub_800C0D8: @ 0x0800C0D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
_0800C0E2:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0800C19C
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0800C1A0
	adds r1, r1, r4
	ldr r2, _0800C1A4
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800C0E2
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800C1A8
	adds r1, r4, r0
	ldr r2, _0800C1AC
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #9
	movs r1, #9
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0800C12C:
	adds r4, r6, #0
	adds r4, #9
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800C1B0
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xb
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xe
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800C12C
	ldr r0, _0800C1B4
	ldr r1, _0800C1B8
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C19C: .4byte 0x0808CBA0
_0800C1A0: .4byte 0x02007C00
_0800C1A4: .4byte 0x0400000F
_0800C1A8: .4byte 0xFFFFC800
_0800C1AC: .4byte 0x01000010
_0800C1B0: .4byte 0x08DF811C
_0800C1B4: .4byte 0x02004420
_0800C1B8: .4byte 0x080ADEFC

	THUMB_FUNC_START sub_800C1BC
sub_800C1BC: @ 0x0800C1BC
	push {lr}
	movs r0, #2
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801F6B0
	movs r0, #0
	bl sub_800D904
	movs r0, #2
	bl sub_800D904
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	bl sub_800C0D8
	bl sub_800C208
	ldr r0, _0800C204
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0800C204: .4byte 0x0800C4F9

	THUMB_FUNC_START sub_800C208
sub_800C208: @ 0x0800C208
	push {r4, r5, lr}
	ldr r3, _0800C24C
	ldr r2, _0800C250
	ldr r5, _0800C254
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800C258
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800C25C
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800C260
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C24C: .4byte 0x02018430
_0800C250: .4byte 0x08DFF49E
_0800C254: .4byte gUnkStruct_2020E10
_0800C258: .4byte 0x08DFF4A1
_0800C25C: .4byte 0x0000C120
_0800C260: .4byte 0x40000800

	THUMB_FUNC_START sub_800C264
sub_800C264: @ 0x0800C264
	push {r4, r5, lr}
	ldr r3, _0800C2A8
	ldr r2, _0800C2AC
	ldr r5, _0800C2B0
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800C2B4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800C2B8
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800C2BC
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C2A8: .4byte 0x02018430
_0800C2AC: .4byte 0x08DFF4A8
_0800C2B0: .4byte gUnkStruct_2020E10
_0800C2B4: .4byte 0x08DFF4AA
_0800C2B8: .4byte 0x0000C120
_0800C2BC: .4byte 0x40000800

	THUMB_FUNC_START sub_800C2C0
sub_800C2C0: @ 0x0800C2C0
	push {r4, r5, r6, lr}
	movs r6, #1
	movs r0, #2
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	adds r0, r4, #0
	bl GetTrunkCardQty
	cmp r0, #1
	bgt _0800C2E0
	bl sub_800C32C
	b _0800C31C
_0800C2E0:
	adds r0, r4, #0
	bl sub_802607C
	cmp r0, #1
	bne _0800C2F0
	bl sub_800C378
	b _0800C31C
_0800C2F0:
	adds r0, r4, #0
	bl sub_8025568
	cmp r0, #0
	bne _0800C310
	bl sub_800C020
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800C31C
	movs r6, #0
	ldr r0, _0800C30C
	strh r4, [r0]
	b _0800C31C
	.align 2, 0
_0800C30C: .4byte 0x02021B04
_0800C310:
	movs r6, #0
	ldr r0, _0800C328
	strh r5, [r0]
	movs r0, #0xde
	bl sub_8034F60
_0800C31C:
	bl sub_8008220
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800C328: .4byte 0x02021B04

	THUMB_FUNC_START sub_800C32C
sub_800C32C: @ 0x0800C32C
	push {lr}
	ldr r0, _0800C350
	movs r1, #0
	strb r1, [r0, #4]
	bl sub_800C430
	movs r0, #0x39
	bl sub_8034F60
	bl sub_800C530
	ldr r0, _0800C354
	bl sub_80081DC
	bl sub_8008220
	b _0800C35C
	.align 2, 0
_0800C350: .4byte gUnkStruct_2020E10
_0800C354: .4byte 0x0800C4F9
_0800C358:
	bl sub_8008220
_0800C35C:
	bl sub_80086D8
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0800C358
	movs r0, #0x38
	bl sub_8034F60
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C378
sub_800C378: @ 0x0800C378
	push {lr}
	ldr r0, _0800C39C
	movs r1, #0
	strb r1, [r0, #4]
	bl sub_800C494
	movs r0, #0x39
	bl sub_8034F60
	bl sub_800C530
	ldr r0, _0800C3A0
	bl sub_80081DC
	bl sub_8008220
	b _0800C3A8
	.align 2, 0
_0800C39C: .4byte gUnkStruct_2020E10
_0800C3A0: .4byte 0x0800C4F9
_0800C3A4:
	bl sub_8008220
_0800C3A8:
	bl sub_80086D8
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0800C3A4
	movs r0, #0x38
	bl sub_8034F60
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C3C4
sub_800C3C4: @ 0x0800C3C4
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
_0800C3CA:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800C414
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800C418
	adds r1, r1, r5
	ldr r2, _0800C41C
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800C3CA
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800C420
	adds r1, r5, r0
	ldr r2, _0800C424
	mov r0, sp
	bl CpuSet
	ldr r1, _0800C428
	adds r0, r5, r1
	ldr r1, _0800C42C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C414: .4byte 0x0808D050
_0800C418: .4byte 0x02007C00
_0800C41C: .4byte 0x0400000F
_0800C420: .4byte 0xFFFFC800
_0800C424: .4byte 0x01000010
_0800C428: .4byte 0xFFFFC820
_0800C42C: .4byte 0x080AE02C

	THUMB_FUNC_START sub_800C430
sub_800C430: @ 0x0800C430
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	movs r5, #0
_0800C438:
	ldr r0, _0800C478
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _0800C47C
	adds r1, r1, r6
	ldr r2, _0800C480
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0800C438
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	ldr r0, _0800C484
	adds r1, r6, r0
	ldr r2, _0800C488
	mov r0, sp
	bl CpuSet
	ldr r1, _0800C48C
	adds r0, r6, r1
	ldr r1, _0800C490
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C478: .4byte 0x0808D050
_0800C47C: .4byte 0x02007C00
_0800C480: .4byte 0x0400000F
_0800C484: .4byte 0xFFFFC800
_0800C488: .4byte 0x01000010
_0800C48C: .4byte 0xFFFFC820
_0800C490: .4byte 0x080AE1A8

	THUMB_FUNC_START sub_800C494
sub_800C494: @ 0x0800C494
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	movs r5, #0
_0800C49C:
	ldr r0, _0800C4DC
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _0800C4E0
	adds r1, r1, r6
	ldr r2, _0800C4E4
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0800C49C
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	ldr r0, _0800C4E8
	adds r1, r6, r0
	ldr r2, _0800C4EC
	mov r0, sp
	bl CpuSet
	ldr r1, _0800C4F0
	adds r0, r6, r1
	ldr r1, _0800C4F4
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C4DC: .4byte 0x0808D050
_0800C4E0: .4byte 0x02007C00
_0800C4E4: .4byte 0x0400000F
_0800C4E8: .4byte 0xFFFFC800
_0800C4EC: .4byte 0x01000010
_0800C4F0: .4byte 0xFFFFC820
_0800C4F4: .4byte 0x080AE370

	THUMB_FUNC_START sub_800C4F8
sub_800C4F8: @ 0x0800C4F8
	push {lr}
	bl sub_80454E0
	bl sub_80454C8
	bl sub_8045658
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xbf
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x52
	movs r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _0800C52C
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800C52C: .4byte 0x04000050

	THUMB_FUNC_START sub_800C530
sub_800C530: @ 0x0800C530
	ldr r1, _0800C548
	ldr r0, _0800C54C
	str r0, [r1]
	ldr r0, _0800C550
	str r0, [r1, #4]
	ldr r0, _0800C554
	str r0, [r1, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0800C548: .4byte 0x02018430
_0800C54C: .4byte 0x40F000A0
_0800C550: .4byte 0x0000C120
_0800C554: .4byte 0x40F008A0

	THUMB_FUNC_START sub_800C558
sub_800C558: @ 0x0800C558
	push {r4, r5, r6, lr}
	ldr r4, _0800C590
	movs r0, #0
	strb r0, [r4, #4]
	movs r5, #1
	bl sub_800C608
	bl sub_800C7A0
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800C594
	bl sub_80081DC
	bl sub_8008220
	movs r6, #1
_0800C57C:
	bl sub_80086D8
	cmp r0, #2
	beq _0800C5EC
	cmp r0, #2
	bgt _0800C598
	cmp r0, #1
	beq _0800C5D4
	b _0800C5F4
	.align 2, 0
_0800C590: .4byte gUnkStruct_2020E10
_0800C594: .4byte 0x0800C7FD
_0800C598:
	cmp r0, #0x40
	beq _0800C5A2
	cmp r0, #0x80
	beq _0800C5AC
	b _0800C5F4
_0800C5A2:
	ldr r0, _0800C5A8
	b _0800C5AE
	.align 2, 0
_0800C5A8: .4byte 0x08DFF4AC
_0800C5AC:
	ldr r0, _0800C5CC
_0800C5AE:
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #4]
	movs r0, #0x36
	bl sub_8034F60
	bl sub_800C7A0
	ldr r0, _0800C5D0
	bl sub_80081DC
	bl sub_8008220
	b _0800C5F8
	.align 2, 0
_0800C5CC: .4byte 0x08DFF4AE
_0800C5D0: .4byte 0x080454C9
_0800C5D4:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _0800C5E4
	movs r5, #0
	movs r0, #0xde
	bl sub_8034F60
	b _0800C5FC
_0800C5E4:
	movs r0, #0x37
	bl sub_8034F60
	b _0800C5FC
_0800C5EC:
	movs r0, #0x38
	bl sub_8034F60
	b _0800C5FC
_0800C5F4:
	bl sub_8008220
_0800C5F8:
	cmp r6, #0
	bne _0800C57C
_0800C5FC:
	bl sub_8008A48
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C608
sub_800C608: @ 0x0800C608
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r6, #0
_0800C614:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0800C780
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0800C784
	adds r1, r1, r4
	ldr r2, _0800C788
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800C614
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800C78C
	adds r1, r4, r0
	ldr r2, _0800C790
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #0
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #3
	movs r1, #7
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0800C66E:
	adds r4, r6, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800C794
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #1
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #7
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #3
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #8
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x39
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #9
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3b
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xa
	mov r2, r8
	bl sub_800800C
	adds r6, r4, #0
	cmp r6, #0x1b
	bls _0800C66E
	movs r6, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov r8, r0
_0800C6C6:
	adds r4, r6, #0
	adds r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800C794
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x71
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x73
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x79
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xe
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7b
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xf
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800C6C6
	movs r6, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800C722:
	adds r4, r6, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0800C722
	ldr r0, _0800C798
	ldr r1, _0800C79C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C780: .4byte 0x0808D050
_0800C784: .4byte 0x02007C00
_0800C788: .4byte 0x0400000F
_0800C78C: .4byte 0xFFFFC800
_0800C790: .4byte 0x01000010
_0800C794: .4byte 0x08DF811C
_0800C798: .4byte 0x02004420
_0800C79C: .4byte 0x080AE544

	THUMB_FUNC_START sub_800C7A0
sub_800C7A0: @ 0x0800C7A0
	push {r4, r5, lr}
	ldr r3, _0800C7E4
	ldr r2, _0800C7E8
	ldr r5, _0800C7EC
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800C7F0
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800C7F4
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800C7F8
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C7E4: .4byte 0x02018430
_0800C7E8: .4byte 0x08DFF4B0
_0800C7EC: .4byte gUnkStruct_2020E10
_0800C7F0: .4byte 0x08DFF4B2
_0800C7F4: .4byte 0x0000C120
_0800C7F8: .4byte 0x40000800

	THUMB_FUNC_START sub_800C7FC
sub_800C7FC: @ 0x0800C7FC
	push {lr}
	bl sub_80454E0
	bl sub_80454C8
	bl sub_8045658
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xbf
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x52
	movs r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _0800C830
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800C830: .4byte 0x04000050

	THUMB_FUNC_START sub_800C834
sub_800C834: @ 0x0800C834
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0800C854
	ldr r5, _0800C858
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _0800C85C
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800C874
	cmp r0, #2
	bgt _0800C860
	cmp r0, #1
	beq _0800C86A
	b _0800C908
	.align 2, 0
_0800C854: .4byte 0x0808918C
_0800C858: .4byte 0x02000400
_0800C85C: .4byte 0x02021CF8
_0800C860:
	cmp r0, #3
	beq _0800C87C
	cmp r0, #4
	beq _0800C8C4
	b _0800C908
_0800C86A:
	ldr r4, _0800C870
	b _0800C87E
	.align 2, 0
_0800C870: .4byte 0x08DFA6B4
_0800C874:
	ldr r4, _0800C878
	b _0800C87E
	.align 2, 0
_0800C878: .4byte 0x08DFAB54
_0800C87C:
	ldr r4, _0800C8C0
_0800C87E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r2, #0x50
	bl CpuFastSet
	b _0800C908
	.align 2, 0
_0800C8C0: .4byte 0x08DFAFF4
_0800C8C4:
	ldr r4, _0800C950
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r0, #0x94
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r0, r4, #0
	movs r2, #0x50
	bl CpuFastSet
_0800C908:
	movs r4, #0
_0800C90A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800C954
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800C958
	adds r1, r1, r5
	ldr r2, _0800C95C
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800C90A
	ldr r0, _0800C960
	ldr r1, _0800C964
	ldr r2, _0800C968
	bl CpuSet
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r2, _0800C96C
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C950: .4byte 0x08DFAFF4
_0800C954: .4byte 0x0808B860
_0800C958: .4byte 0x02003C00
_0800C95C: .4byte 0x0400000F
_0800C960: .4byte 0x0808C1C0
_0800C964: .4byte 0x02000000
_0800C968: .4byte 0x04000020
_0800C96C: .4byte 0x01000010

	THUMB_FUNC_START sub_800C970
sub_800C970: @ 0x0800C970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
_0800C97E:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _0800CC8C
	adds r0, r0, r1
	lsls r1, r7, #6
	ldr r4, _0800CC90
	adds r1, r1, r4
	ldr r2, _0800CC94
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x13
	bls _0800C97E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800CC98
	adds r1, r4, r0
	ldr r2, _0800CC9C
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r7, #0
	adds r6, r4, #0
_0800C9DC:
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x1d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x1f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0800C9DC
	movs r7, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov sl, r0
_0800CA64:
	adds r6, r7, #4
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x7d
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7f
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x8d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x8f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb1
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0x11
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb3
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0x12
	mov r2, sl
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _0800CA64
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800CAF2:
	adds r4, r7, #0
	adds r4, #0xa
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #8
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #9
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0800CAF2
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800CB52:
	adds r4, r7, #0
	adds r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0800CB52
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0800CB82:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x29
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x2b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x49
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x4b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x69
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x6b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0800CB82
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0800CC0A:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0xc1
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xc3
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x9d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x9f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0800CC0A
	ldr r0, _0800CCA4
	ldr r1, _0800CCA8
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC8C: .4byte 0x0808C6F0
_0800CC90: .4byte 0x02007C00
_0800CC94: .4byte 0x0400000F
_0800CC98: .4byte 0xFFFFC800
_0800CC9C: .4byte 0x01000010
_0800CCA0: .4byte 0x08DF811C
_0800CCA4: .4byte 0x02004420
_0800CCA8: .4byte 0x080AE800

	THUMB_FUNC_START sub_800CCAC
sub_800CCAC: @ 0x0800CCAC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800CD48
	ldr r2, _0800CD4C
	adds r1, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r1, r4, r2
	ldr r2, _0800CD50
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0800CD54
	ldr r2, _0800CD58
	bl sub_8020A3C
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, _0800CD5C
	ldr r2, _0800CD60
	bl sub_8020A3C
	ldr r0, _0800CD64
	adds r1, r4, r0
	ldr r0, _0800CD68
	strh r0, [r1]
	bl sub_801D718
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	ldr r0, _0800CD6C
	adds r4, r4, r0
	ldr r7, _0800CD70
	ldr r6, _0800CD74
	ldr r0, _0800CD78
	adds r5, r0, #0
	adds r3, r4, #0
_0800CD10:
	adds r1, r2, r7
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r0, r2, r6
	ldrb r0, [r0]
	adds r0, r5, r0
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800CD10
	ldr r2, _0800CD7C
	adds r1, r3, r2
	ldr r0, _0800CD68
	strh r0, [r1]
	ldr r0, _0800CD80
	adds r1, r3, r0
	ldr r0, _0800CD84
	strh r0, [r1]
	adds r2, #4
	adds r1, r3, r2
	subs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CD48: .4byte 0x02008400
_0800CD4C: .4byte 0x01000010
_0800CD50: .4byte 0x01000400
_0800CD54: .4byte 0x080AEA74
_0800CD58: .4byte 0x00000801
_0800CD5C: .4byte 0x080AEA78
_0800CD60: .4byte 0x00000901
_0800CD64: .4byte 0x0000385E
_0800CD68: .4byte 0x00005001
_0800CD6C: .4byte 0xFFFF8000
_0800CD70: .4byte 0x00005C30
_0800CD74: .4byte 0x02021BD0
_0800CD78: .4byte 0x00005209
_0800CD7C: .4byte 0x0000B870
_0800CD80: .4byte 0x0000B872
_0800CD84: .4byte 0x0000520D

	THUMB_FUNC_START sub_800CD88
sub_800CD88: @ 0x0800CD88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0800CE50
	ldr r4, _0800CE54
	ldr r5, _0800CE58
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE5C
	subs r4, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE60
	ldr r4, _0800CE64
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE68
	adds r1, r4, #0
	adds r1, #0x20
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE6C
	adds r1, r4, #0
	adds r1, #0x40
	adds r2, r5, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r1, _0800CE70
	ldr r2, _0800CE74
	bl sub_8020A3C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0800CE78
	ldr r2, _0800CE7C
	bl sub_8020A3C
	movs r5, #0
	ldr r4, _0800CE80
_0800CDF0:
	ldr r6, _0800CE84
	lsls r1, r5, #2
	adds r0, r1, r5
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, #0x13
	lsls r1, r1, #5
	ldr r2, _0800CE88
	adds r1, r1, r2
	ldr r2, _0800CE8C
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _0800CDF0
	movs r4, #0
	movs r5, #0
	ldr r7, _0800CE90
_0800CE1E:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0800CE98
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0800CE88
	adds r1, r1, r2
	ldr r2, _0800CE94
	bl CpuSet
	adds r0, r4, #0
	adds r0, #8
	b _0800CEB8
	.align 2, 0
_0800CE50: .4byte 0x0808ECD0
_0800CE54: .4byte 0x020000A0
_0800CE58: .4byte 0x04000008
_0800CE5C: .4byte 0x0808ECF0
_0800CE60: .4byte 0x0808E310
_0800CE64: .4byte 0x0200C420
_0800CE68: .4byte 0x0808E330
_0800CE6C: .4byte 0x0808E350
_0800CE70: .4byte 0x080AEB00
_0800CE74: .4byte 0x00000801
_0800CE78: .4byte 0x080AEB30
_0800CE7C: .4byte 0x00001801
_0800CE80: .4byte 0x08DFA5B8
_0800CE84: .4byte 0x02021CF8
_0800CE88: .4byte 0x0200C400
_0800CE8C: .4byte 0x04000020
_0800CE90: .4byte 0x08DFA3A8
_0800CE94: .4byte 0x04000040
_0800CE98:
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0800CFA4
	adds r1, r1, r2
	ldr r2, _0800CFA8
	bl CpuSet
	adds r0, r4, #4
_0800CEB8:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _0800CE1E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800CFAC
	ldr r2, _0800CFB0
	mov r0, sp
	bl CpuSet
	movs r5, #0
_0800CED8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0800CFB4
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r4, _0800CFAC
	adds r1, r1, r4
	ldr r2, _0800CFB8
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _0800CED8
	movs r7, #0
	ldr r0, _0800CFBC
	adds r0, r0, r4
	mov r8, r0
_0800CF00:
	movs r5, #0
	lsls r1, r7, #1
	lsls r0, r7, #2
	adds r2, r7, #1
	str r2, [sp, #4]
	adds r1, r1, r7
	mov ip, r1
	adds r0, r0, r7
	lsls r0, r0, #3
	mov sb, r0
	ldr r0, _0800CFC0
	add r0, sb
	mov sl, r0
_0800CF1A:
	movs r6, #0
	cmp r7, #1
	bls _0800CF28
	movs r6, #2
	cmp r7, #2
	bne _0800CF28
	movs r6, #1
_0800CF28:
	lsls r3, r5, #1
	adds r2, r6, #3
	add r2, ip
	lsls r2, r2, #5
	ldr r0, _0800CFC4
	adds r1, r2, r0
	adds r1, r3, r1
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #8]
	lsls r4, r5, #2
	ldr r1, _0800CFC0
	adds r0, r4, r1
	add r0, sb
	ldr r1, [sp, #8]
	strh r0, [r1]
	ldr r0, _0800CFC8
	adds r2, r2, r0
	adds r2, r3, r2
	lsls r2, r2, #1
	add r2, r8
	add r4, sl
	adds r0, r4, #1
	strh r0, [r2]
	adds r2, r6, #4
	add r2, ip
	lsls r2, r2, #5
	ldr r1, _0800CFC4
	adds r0, r2, r1
	adds r0, r3, r0
	lsls r0, r0, #1
	add r0, r8
	adds r1, r4, #2
	strh r1, [r0]
	ldr r0, _0800CFC8
	adds r2, r2, r0
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	adds r4, #3
	strh r4, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0800CF1A
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _0800CF00
	ldr r0, _0800CFCC
	bl sub_8057418
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CFA4: .4byte 0x0200C400
_0800CFA8: .4byte 0x04000020
_0800CFAC: .4byte 0x0200FC00
_0800CFB0: .4byte 0x01000400
_0800CFB4: .4byte 0x0808E820
_0800CFB8: .4byte 0x0400000F
_0800CFBC: .4byte 0xFFFF0800
_0800CFC0: .4byte 0x000050F8
_0800CFC4: .4byte 0x00007C02
_0800CFC8: .4byte 0x00007C03
_0800CFCC: .4byte 0x02000200

	THUMB_FUNC_START sub_800CFD0
sub_800CFD0: @ 0x0800CFD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	movs r0, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x2c
	ldr r1, _0800D094
	ldr r2, _0800D098
	bl CpuSet
	movs r7, #0
_0800CFEC:
	adds r0, r7, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_800DA48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	adds r0, r7, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r4, #0
	cmp r7, #1
	bls _0800D01C
	movs r4, #2
	cmp r7, #2
	bne _0800D01C
	movs r4, #1
_0800D01C:
	ldr r1, _0800D09C
	ldrh r0, [r1, #0x10]
	movs r1, #1
	bl sub_800DDA0
	movs r3, #0
	lsls r2, r7, #1
	mov r8, r2
	adds r6, r4, #2
	mov sb, r6
	lsls r0, r7, #2
	mov sl, r0
	adds r1, r4, #3
	str r1, [sp, #0x38]
	adds r4, #4
	str r4, [sp, #0x3c]
	lsrs r2, r7, #2
	str r2, [sp, #0x44]
	lsls r4, r7, #3
	str r4, [sp, #0x40]
	lsls r6, r7, #5
	str r6, [sp, #0x48]
	adds r0, r7, #1
	str r0, [sp, #0x34]
	ldr r6, _0800D0A0
	mov r1, r8
	adds r0, r1, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r4, _0800D0A4
	adds r2, r0, r4
	ldr r5, _0800D0A8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0800D062:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, #9
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800D062
	ldr r2, _0800D09C
	ldr r5, [r2]
	adds r0, r5, #0
	bl sub_8020824
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
	movs r4, #0
	ldrb r0, [r5]
	b _0800D0F8
	.align 2, 0
_0800D094: .4byte 0x0200E300
_0800D098: .4byte 0x05000640
_0800D09C: .4byte 0x02021AD0
_0800D0A0: .4byte 0x02000400
_0800D0A4: .4byte 0x00007C01
_0800D0A8: .4byte 0x02021BD0
_0800D0AC:
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _0800D0CC
	cmp r6, #0x13
	bhi _0800D0C8
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800D0C8:
	adds r0, r3, #1
	b _0800D0EA
_0800D0CC:
	cmp r6, #0x13
	bhi _0800D0E8
	mov r0, sp
	adds r0, r0, r4
	strb r1, [r0]
	adds r0, r4, #1
	add r0, sp
	mov ip, r0
	ldrb r0, [r2, #1]
	mov r1, ip
	strb r0, [r1]
	adds r0, r4, #2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800D0E8:
	adds r0, r3, #2
_0800D0EA:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, r3
	ldrb r0, [r0]
_0800D0F8:
	cmp r0, #0
	beq _0800D100
	cmp r0, #0x24
	bne _0800D0AC
_0800D100:
	mov r2, sp
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
	mov r4, sl
	adds r0, r4, r7
	lsls r0, r0, #8
	movs r6, #0xf8
	lsls r6, r6, #5
	adds r0, r0, r6
	ldr r4, _0800D148
	adds r0, r0, r4
	mov r1, sp
	ldr r2, _0800D14C
	bl sub_8020A3C
	movs r3, #0
	ldr r0, _0800D150
	adds r4, r4, r0
	mov r1, r8
	adds r0, r1, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r6, _0800D154
	adds r2, r0, r6
	ldr r5, _0800D158
_0800D134:
	ldr r0, _0800D15C
	ldrb r0, [r0, #0x18]
	cmp r3, r0
	bhs _0800D160
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r5, [r0]
	b _0800D16C
	.align 2, 0
_0800D148: .4byte 0x0200C400
_0800D14C: .4byte 0x00000901
_0800D150: .4byte 0xFFFF4000
_0800D154: .4byte 0x00007C10
_0800D158: .4byte 0x00005001
_0800D15C: .4byte 0x02021AD0
_0800D160:
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #7
	strh r1, [r0]
_0800D16C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _0800D134
	ldr r1, _0800D250
	ldrh r0, [r1, #0x10]
	bl sub_8009060
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_800DDA0
	movs r3, #0
	ldr r5, _0800D254
	mov r2, r8
	adds r0, r2, r7
	ldr r4, [sp, #0x38]
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r6, _0800D258
	adds r2, r0, r6
	ldr r4, _0800D25C
_0800D19C:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r5
	adds r0, r3, r4
	ldrb r0, [r0]
	adds r0, #9
	ldr r6, [sp, #0x30]
	orrs r0, r6
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0800D19C
	ldr r1, _0800D250
	ldrh r0, [r1, #0x10]
	bl sub_801DB88
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	ldr r6, _0800D254
	mov r2, r8
	adds r0, r2, r7
	ldr r4, [sp, #0x3c]
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r1, _0800D258
	adds r2, r0, r1
	ldr r5, _0800D25C
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0800D1E4:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, #9
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0800D1E4
	movs r0, #3
	ands r0, r7
	lsls r0, r0, #8
	ldr r2, [sp, #0x44]
	lsls r1, r2, #0xc
	movs r4, #0x82
	lsls r4, r4, #9
	adds r1, r1, r4
	orrs r0, r1
	ldr r1, _0800D254
	adds r0, r0, r1
	ldr r6, _0800D250
	ldrh r1, [r6, #0x10]
	bl sub_80573D0
	ldr r0, _0800D260
	ldr r1, [sp, #0x40]
	adds r3, r1, r0
	ldrb r1, [r3, #1]
	movs r0, #0x3f
	adds r2, r0, #0
	ands r2, r1
	strb r2, [r3, #1]
	ldrb r1, [r3, #3]
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	cmp r7, #2
	bne _0800D264
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r0, r4, #0
	adds r1, r2, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r3, #1]
	b _0800D270
	.align 2, 0
_0800D250: .4byte 0x02021AD0
_0800D254: .4byte 0x02000400
_0800D258: .4byte 0x00007C17
_0800D25C: .4byte 0x02021BD0
_0800D260: .4byte 0x02018400
_0800D264:
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r1, r6, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #1]
_0800D270:
	ldrb r0, [r3, #1]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r3, #5]
	ldr r0, [sp, #0x48]
	adds r0, #0xc
	strb r0, [r3]
	ldrh r1, [r3, #2]
	ldr r4, _0800D348
	adds r0, r4, #0
	ands r1, r0
	movs r0, #0xd2
	orrs r1, r0
	strh r1, [r3, #2]
	movs r0, #3
	ands r7, r0
	lsls r2, r7, #3
	adds r2, #0x20
	ldr r6, [sp, #0x44]
	lsls r0, r6, #7
	adds r2, r2, r0
	ldr r1, _0800D34C
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r4, _0800D350
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r6, [sp, #0x34]
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _0800D2C8
	b _0800CFEC
_0800D2C8:
	bl sub_801DB58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	ldr r6, _0800D354
	ldr r5, _0800D358
	ldr r4, _0800D35C
	ldr r0, _0800D360
	adds r2, r0, #0
_0800D2E2:
	adds r1, r3, r5
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r4
	ldrb r0, [r0]
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0800D2E2
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	ldr r6, _0800D354
	ldr r5, _0800D364
	ldr r4, _0800D35C
	ldr r1, _0800D360
	adds r2, r1, #0
_0800D314:
	adds r1, r3, r5
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #3
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0800D314
	bl sub_800907C
	bl sub_800A544
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D348: .4byte 0xFFFFFE00
_0800D34C: .4byte 0x000003FF
_0800D350: .4byte 0xFFFFFC00
_0800D354: .4byte 0x02000400
_0800D358: .4byte 0x00005C2A
_0800D35C: .4byte 0x02021BD0
_0800D360: .4byte 0x00005209
_0800D364: .4byte 0x00005C36

	THUMB_FUNC_START sub_800D368
sub_800D368: @ 0x0800D368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r4, #0
	movs r0, #0xa0
	lsls r0, r0, #7
	mov r8, r0
_0800D37C:
	movs r1, #0
	cmp r4, #1
	bls _0800D38A
	movs r1, #2
	cmp r4, #2
	bne _0800D38A
	movs r1, #1
_0800D38A:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	ldr r7, _0800D474
	adds r0, r0, r4
	adds r1, r0, r3
	lsls r1, r1, #5
	ldr r2, _0800D478
	adds r3, r1, r2
	adds r0, r0, r6
	lsls r0, r0, #5
	adds r1, r0, r2
_0800D3A4:
	adds r0, r5, r3
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r2, r8
	strh r2, [r0]
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0800D3A4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800D37C
	movs r4, #0
_0800D3CC:
	movs r1, #0
	cmp r4, #1
	bls _0800D3DA
	movs r1, #2
	cmp r4, #2
	bne _0800D3DA
	movs r1, #1
_0800D3DA:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	adds r1, r4, #1
	str r1, [sp, #4]
	lsls r2, r4, #2
	ldr r7, _0800D474
	adds r1, r0, r4
	adds r0, r1, r3
	lsls r0, r0, #5
	mov r8, r0
	ldr r3, _0800D478
	mov sb, r3
	ldr r0, _0800D47C
	mov r3, r8
	adds r3, r3, r0
	str r3, [sp]
	adds r2, r2, r4
	lsls r2, r2, #3
	mov ip, r2
	ldr r2, _0800D480
	add r2, ip
	mov sl, r2
	adds r1, r1, r6
	lsls r4, r1, #5
	adds r0, r4, r0
	str r0, [sp, #8]
_0800D412:
	lsls r2, r5, #1
	mov r1, r8
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r3, r5, #2
	ldr r6, _0800D480
	adds r0, r3, r6
	add r0, ip
	strh r0, [r1]
	ldr r1, [sp]
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	add r3, sl
	adds r1, r3, #1
	strh r1, [r0]
	mov r6, sb
	adds r0, r4, r6
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, #2
	strh r1, [r0]
	ldr r0, [sp, #8]
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r3, #3
	strh r3, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0800D412
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800D3CC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D474: .4byte 0x02000400
_0800D478: .4byte 0x00007C10
_0800D47C: .4byte 0x00007C11
_0800D480: .4byte 0x00005114

	THUMB_FUNC_START sub_800D484
sub_800D484: @ 0x0800D484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0800D55C
	mov sl, r0
_0800D494:
	adds r0, r6, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r7, #0
	cmp r6, #1
	bls _0800D4B0
	movs r7, #2
	cmp r6, #2
	bne _0800D4B0
	movs r7, #1
_0800D4B0:
	lsls r5, r6, #1
	adds r4, r5, r6
	adds r0, r7, #3
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r1, _0800D560
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800D564
	strh r1, [r0]
	ldr r0, _0800D568
	ldrh r0, [r0, #0x12]
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	adds r3, r5, #0
	adds r5, r7, #4
	adds r7, r6, #1
	mov sb, r7
	ldr r0, _0800D55C
	mov r8, r0
	ldr r1, _0800D56C
	adds r4, r4, r1
	ldr r7, _0800D570
	mov ip, r7
_0800D4E6:
	adds r0, r2, r4
	lsls r0, r0, #1
	add r0, r8
	mov r7, ip
	adds r1, r2, r7
	ldr r7, _0800D574
	ldrb r1, [r1]
	adds r1, r7, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800D4E6
	adds r4, r3, r6
	adds r4, r4, r5
	lsls r4, r4, #5
	ldr r1, _0800D560
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800D578
	strh r1, [r0]
	ldr r0, _0800D568
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	ldr r6, _0800D55C
	ldr r7, _0800D56C
	adds r4, r4, r7
	ldr r5, _0800D570
	ldr r0, _0800D57C
	adds r3, r0, #0
_0800D52C:
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r1, r2, r5
	ldrb r1, [r1]
	adds r1, r3, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800D52C
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0800D494
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D55C: .4byte 0x02000400
_0800D560: .4byte 0x00007C10
_0800D564: .4byte 0x00005002
_0800D568: .4byte 0x02021AD0
_0800D56C: .4byte 0x00007C11
_0800D570: .4byte 0x02021BD0
_0800D574: .4byte 0x00002009
_0800D578: .4byte 0x00005003
_0800D57C: .4byte 0x00001009

	THUMB_FUNC_START sub_800D580
sub_800D580: @ 0x0800D580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
_0800D590:
	mov r0, r8
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r4, #0
	mov r1, r8
	cmp r1, #1
	bls _0800D5AE
	movs r4, #2
	cmp r1, #2
	bne _0800D5AE
	movs r4, #1
_0800D5AE:
	ldr r7, _0800D6F8
	mov r2, r8
	lsls r3, r2, #1
	add r3, r8
	adds r0, r4, #3
	adds r0, r3, r0
	lsls r5, r0, #5
	ldr r2, _0800D6FC
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r6, #0xa0
	lsls r6, r6, #7
	strh r6, [r0]
	ldr r1, _0800D700
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r6, [r0]
	adds r0, r4, #4
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r0, r6, #0
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r2, r6, #0
	strh r2, [r1]
	ldr r6, _0800D704
	ldrb r0, [r6, #0x17]
	mov r4, r8
	adds r4, #0xb
	lsls r1, r4, #5
	ldr r2, _0800D708
	adds r1, r1, r2
	str r3, [sp, #8]
	bl sub_8008BC0
	ldr r1, _0800D70C
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	lsls r4, r4, #0xc
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x13
	orrs r0, r4
	mov r2, sl
	strh r0, [r2]
	adds r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x14
	orrs r0, r4
	mov r2, sb
	strh r0, [r2]
	ldr r3, [sp, #8]
	ldr r2, _0800D70C
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	str r0, [sp]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x15
	orrs r0, r4
	ldr r2, [sp]
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	str r1, [sp, #4]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x16
	orrs r4, r0
	strh r4, [r1]
	ldrb r0, [r6, #0x16]
	mov r4, r8
	adds r4, #6
	lsls r1, r4, #5
	ldr r2, _0800D708
	adds r1, r1, r2
	str r3, [sp, #8]
	bl sub_8008B44
	ldrb r0, [r6, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #8]
	cmp r0, #2
	bhi _0800D718
	ldr r0, _0800D710
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x11
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D714
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xf
	orrs r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xe
	orrs r0, r2
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0800D710
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xd
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D714
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xb
	orrs r0, r2
	ldr r1, [sp]
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xa
	orrs r2, r0
	ldr r6, [sp, #4]
	strh r2, [r6]
	b _0800D762
	.align 2, 0
_0800D6F8: .4byte 0x02000400
_0800D6FC: .4byte 0x00007C10
_0800D700: .4byte 0x00007C15
_0800D704: .4byte 0x02021AD0
_0800D708: .4byte 0x02000000
_0800D70C: .4byte 0x00007C13
_0800D710: .4byte 0x00007C11
_0800D714: .4byte 0x00007C12
_0800D718:
	ldr r0, _0800D784
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x43
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D788
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x44
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D784
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x45
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D788
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x46
	orrs r2, r0
	strh r2, [r1]
_0800D762:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _0800D772
	b _0800D590
_0800D772:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D784: .4byte 0x00007C11
_0800D788: .4byte 0x00007C12

	THUMB_FUNC_START sub_800D78C
sub_800D78C: @ 0x0800D78C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r0, _0800D870
	mov r8, r0
	ldr r1, _0800D874
	mov sl, r1
	movs r0, #0xa0
	lsls r0, r0, #7
	mov sb, r0
_0800D7A6:
	movs r3, #0
	cmp r5, #1
	bls _0800D7B4
	movs r3, #2
	cmp r5, #2
	bne _0800D7B4
	movs r3, #1
_0800D7B4:
	lsls r4, r5, #1
	adds r4, r4, r5
	adds r2, r3, #3
	adds r2, r4, r2
	lsls r2, r2, #5
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0800D878
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D87C
	strh r1, [r0]
	ldr r1, _0800D880
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D884
	strh r1, [r0]
	ldr r1, _0800D888
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D88C
	strh r1, [r0]
	ldr r1, _0800D890
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D894
	strh r1, [r0]
	ldr r0, _0800D898
	adds r2, r2, r0
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _0800D89C
	strh r0, [r2]
	adds r0, r3, #4
	adds r4, r4, r0
	lsls r4, r4, #5
	mov r1, sl
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	ldr r0, _0800D8A0
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	adds r5, #1
	ldr r7, _0800D870
	ldr r0, _0800D878
	adds r2, r4, r0
	ldr r6, _0800D8A4
	ldr r1, _0800D8A8
	adds r4, r1, #0
_0800D840:
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, r6
	ldrb r1, [r1]
	adds r1, r4, r1
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0800D840
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0800D7A6
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D870: .4byte 0x02000400
_0800D874: .4byte 0x00007C10
_0800D878: .4byte 0x00007C11
_0800D87C: .4byte 0x00005004
_0800D880: .4byte 0x00007C12
_0800D884: .4byte 0x00005005
_0800D888: .4byte 0x00007C13
_0800D88C: .4byte 0x00005006
_0800D890: .4byte 0x00007C14
_0800D894: .4byte 0x00005007
_0800D898: .4byte 0x00007C15
_0800D89C: .4byte 0x00005008
_0800D8A0: .4byte 0x02021AD0
_0800D8A4: .4byte 0x02021BD0
_0800D8A8: .4byte 0x00005009

	THUMB_FUNC_START sub_800D8AC
sub_800D8AC: @ 0x0800D8AC
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r3, _0800D8E8
	lsrs r0, r0, #0x16
	ldr r2, _0800D8EC
	adds r1, r2, #0
	adds r1, r0, r1
	ldr r4, _0800D8F0
	adds r2, r3, r4
	strh r1, [r2]
	ldr r2, _0800D8F4
	adds r1, r2, #0
	adds r1, r0, r1
	adds r4, #2
	adds r2, r3, r4
	strh r1, [r2]
	ldr r1, _0800D8F8
	adds r2, r0, r1
	adds r4, #0x3e
	adds r1, r3, r4
	strh r2, [r1]
	ldr r1, _0800D8FC
	adds r0, r0, r1
	ldr r2, _0800D900
	adds r3, r3, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D8E8: .4byte 0x02000400
_0800D8EC: .4byte 0x00005002
_0800D8F0: .4byte 0x0000B838
_0800D8F4: .4byte 0x00005003
_0800D8F8: .4byte 0x00005004
_0800D8FC: .4byte 0x00005005
_0800D900: .4byte 0x0000B87A

	THUMB_FUNC_START sub_800D904
sub_800D904: @ 0x0800D904
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0800D99E
	lsls r0, r0, #2
	ldr r1, _0800D918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D918: .4byte 0x0800D91C
_0800D91C: @ jump table
	.4byte _0800D93C @ case 0
	.4byte _0800D99E @ case 1
	.4byte _0800D944 @ case 2
	.4byte _0800D96C @ case 3
	.4byte _0800D988 @ case 4
	.4byte _0800D998 @ case 5
	.4byte _0800D99E @ case 6
	.4byte _0800D972 @ case 7
_0800D93C:
	movs r0, #0
	bl sub_800A5F0
	b _0800D99E
_0800D944:
	bl sub_800C834
	bl sub_800CCAC
	bl sub_800CD88
	bl sub_800CFD0
	bl sub_800DA10
	ldr r0, _0800D968
	ldrb r0, [r0, #2]
	bl sub_800D8AC
	movs r0, #1
	bl sub_800A5F0
	b _0800D99E
	.align 2, 0
_0800D968: .4byte gUnkStruct_2020E10
_0800D96C:
	bl sub_800CFD0
	b _0800D988
_0800D972:
	bl sub_800CFD0
	bl sub_800DA10
	ldr r0, _0800D994
	ldrb r0, [r0, #2]
	bl sub_800D8AC
	movs r0, #3
	bl sub_800A5F0
_0800D988:
	bl sub_800DA10
	movs r0, #3
	bl sub_800A5F0
	b _0800D99E
	.align 2, 0
_0800D994: .4byte gUnkStruct_2020E10
_0800D998:
	movs r0, #3
	bl sub_800A5F0
_0800D99E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800D9A4
sub_800D9A4: @ 0x0800D9A4
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
_0800D9AA:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800D9F4
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800D9F8
	adds r1, r1, r5
	ldr r2, _0800D9FC
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800D9AA
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800DA00
	adds r1, r5, r0
	ldr r2, _0800DA04
	mov r0, sp
	bl CpuSet
	ldr r1, _0800DA08
	adds r0, r5, r1
	ldr r1, _0800DA0C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D9F4: .4byte 0x0808C240
_0800D9F8: .4byte 0x02007C00
_0800D9FC: .4byte 0x0400000F
_0800DA00: .4byte 0xFFFFC800
_0800DA04: .4byte 0x01000010
_0800DA08: .4byte 0xFFFFC820
_0800DA0C: .4byte 0x080AE6D0

	THUMB_FUNC_START sub_800DA10
sub_800DA10: @ 0x0800DA10
	push {lr}
	bl sub_8009010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0800DA2C
	cmp r0, #1
	ble _0800DA3E
	cmp r0, #2
	beq _0800DA32
	cmp r0, #3
	beq _0800DA38
	b _0800DA3E
_0800DA2C:
	bl sub_800D484
	b _0800DA42
_0800DA32:
	bl sub_800D580
	b _0800DA42
_0800DA38:
	bl sub_800D78C
	b _0800DA42
_0800DA3E:
	bl sub_800D368
_0800DA42:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DA48
sub_800DA48: @ 0x0800DA48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800DA5C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DA60
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800DA64
	.align 2, 0
_0800DA5C: .4byte gTrunk
_0800DA60:
	movs r0, #0x80
	lsls r0, r0, #7
_0800DA64:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DA68
sub_800DA68: @ 0x0800DA68
	push {r4, lr}
	bl sub_801DB58
	adds r4, r0, #0
	bl sub_801D718
	cmp r4, r0
	bhi _0800DA7E
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800DA82
_0800DA7E:
	movs r0, #0x80
	lsls r0, r0, #7
_0800DA82:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800DA88
sub_800DA88: @ 0x0800DA88
	push {lr}
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _0800DA9C
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800DAA0
_0800DA9C:
	movs r0, #0x80
	lsls r0, r0, #7
_0800DAA0:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800DAA4
sub_800DAA4: @ 0x0800DAA4
	push {r4, lr}
	ldr r0, _0800DAE4
	ldrb r1, [r0, #2]
	strb r1, [r0, #4]
	bl sub_8009448
	bl sub_800DCAC
	bl sub_8045658
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800DAE8
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0800DACA:
	bl sub_80086D8
	cmp r0, #0x10
	beq _0800DB18
	cmp r0, #0x10
	bgt _0800DAF2
	cmp r0, #2
	beq _0800DB26
	cmp r0, #2
	bgt _0800DAEC
	cmp r0, #1
	beq _0800DB1E
	b _0800DB30
	.align 2, 0
_0800DAE4: .4byte gUnkStruct_2020E10
_0800DAE8: .4byte 0x0800DD1D
_0800DAEC:
	cmp r0, #8
	beq _0800DB26
	b _0800DB30
_0800DAF2:
	cmp r0, #0x40
	beq _0800DB06
	cmp r0, #0x40
	bgt _0800DB00
	cmp r0, #0x20
	beq _0800DB12
	b _0800DB30
_0800DB00:
	cmp r0, #0x80
	beq _0800DB0C
	b _0800DB30
_0800DB06:
	bl sub_800DB4C
	b _0800DB34
_0800DB0C:
	bl sub_800DB9C
	b _0800DB34
_0800DB12:
	bl sub_800DBEC
	b _0800DB34
_0800DB18:
	bl sub_800DC3C
	b _0800DB34
_0800DB1E:
	bl sub_800DC8C
	movs r4, #0
	b _0800DB34
_0800DB26:
	movs r0, #0x38
	bl sub_8034F60
	movs r4, #0
	b _0800DB34
_0800DB30:
	bl sub_8008220
_0800DB34:
	cmp r4, #1
	beq _0800DACA
	movs r0, #7
	bl sub_800D904
	bl sub_800ABA8
	bl sub_800DD08
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800DB4C
sub_800DB4C: @ 0x0800DB4C
	push {lr}
	ldr r2, _0800DB6C
	ldr r0, _0800DB70
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DB74
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DB7A
	.align 2, 0
_0800DB6C: .4byte gUnkStruct_2020E10
_0800DB70: .4byte 0x08DFF4B4
_0800DB74:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DB7A:
	bl sub_800DCAC
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800DB98
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DB98: .4byte 0x080454C9

	THUMB_FUNC_START sub_800DB9C
sub_800DB9C: @ 0x0800DB9C
	push {lr}
	ldr r2, _0800DBBC
	ldr r0, _0800DBC0
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DBC4
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DBCA
	.align 2, 0
_0800DBBC: .4byte gUnkStruct_2020E10
_0800DBC0: .4byte 0x08DFF4BF
_0800DBC4:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DBCA:
	bl sub_800DCAC
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800DBE8
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DBE8: .4byte 0x080454C9

	THUMB_FUNC_START sub_800DBEC
sub_800DBEC: @ 0x0800DBEC
	push {lr}
	ldr r2, _0800DC0C
	ldr r0, _0800DC10
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DC14
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DC1A
	.align 2, 0
_0800DC0C: .4byte gUnkStruct_2020E10
_0800DC10: .4byte 0x08DFF4CA
_0800DC14:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DC1A:
	bl sub_800DCAC
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800DC38
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DC38: .4byte 0x080454C9

	THUMB_FUNC_START sub_800DC3C
sub_800DC3C: @ 0x0800DC3C
	push {lr}
	ldr r2, _0800DC5C
	ldr r0, _0800DC60
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DC64
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DC6A
	.align 2, 0
_0800DC5C: .4byte gUnkStruct_2020E10
_0800DC60: .4byte 0x08DFF4D5
_0800DC64:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DC6A:
	bl sub_800DCAC
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800DC88
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DC88: .4byte 0x080454C9

	THUMB_FUNC_START sub_800DC8C
sub_800DC8C: @ 0x0800DC8C
	push {lr}
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800DCA8
	ldrb r1, [r0, #4]
	cmp r1, #9
	bhi _0800DCA4
	strb r1, [r0, #2]
	ldrb r0, [r0, #2]
	bl sub_80091EC
_0800DCA4:
	pop {r0}
	bx r0
	.align 2, 0
_0800DCA8: .4byte gUnkStruct_2020E10

	THUMB_FUNC_START sub_800DCAC
sub_800DCAC: @ 0x0800DCAC
	push {r4, r5, lr}
	ldr r3, _0800DCF0
	ldr r2, _0800DCF4
	ldr r5, _0800DCF8
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800DCFC
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800DD00
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800DD04
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCF0: .4byte 0x02018430
_0800DCF4: .4byte 0x08DFF4E0
_0800DCF8: .4byte gUnkStruct_2020E10
_0800DCFC: .4byte 0x08DFF4EB
_0800DD00: .4byte 0x0000C120
_0800DD04: .4byte 0x40000800

	THUMB_FUNC_START sub_800DD08
sub_800DD08: @ 0x0800DD08
	ldr r1, _0800DD18
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0800DD18: .4byte 0x02018430

	THUMB_FUNC_START sub_800DD1C
sub_800DD1C: @ 0x0800DD1C
	push {lr}
	bl sub_80454C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xbf
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x52
	movs r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _0800DD48
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800DD48: .4byte 0x04000050

	THUMB_FUNC_START sub_800DD4C
sub_800DD4C: @ 0x0800DD4C
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _0800DD68
	ldr r3, _0800DD6C
	ldr r4, _0800DD70
_0800DD56:
	adds r0, r2, r5
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800DD74
	adds r0, r2, r3
	adds r1, r2, r4
	ldrb r1, [r1]
	b _0800DD76
	.align 2, 0
_0800DD68: .4byte 0x02021B50
_0800DD6C: .4byte 0x02021B90
_0800DD70: .4byte 0x02021B10
_0800DD74:
	adds r0, r2, r3
_0800DD76:
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x3f
	bls _0800DD56
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800DD88
sub_800DD88: @ 0x0800DD88
	movs r3, #0
_0800DD8A:
	ldrb r2, [r0]
	cmp r2, #0
	beq _0800DD92
	strb r2, [r1]
_0800DD92:
	adds r0, #1
	adds r1, #1
	adds r3, #1
	cmp r3, #0x3f
	bls _0800DD8A
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DDA0
sub_800DDA0: @ 0x0800DDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r4, #0
	ldr r7, _0800DE14
	movs r2, #0
	ldr r6, _0800DE18
	adds r3, r6, #0
	movs r1, #0xa
_0800DDC4:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800DDC4
	ldr r0, _0800DE1C
	cmp r5, r0
	beq _0800DE74
	movs r1, #1
	mov r0, sl
	ands r1, r0
	cmp r1, #0
	beq _0800DDE6
	movs r0, #0
	strb r0, [r6]
_0800DDE6:
	mov r0, sb
	cmp r0, #4
	bhi _0800DE74
	mov r8, r1
_0800DDEE:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0800DE0C
	cmp r4, #0
	beq _0800DE26
	subs r0, r4, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0800DE20
_0800DE0C:
	adds r0, r4, r6
	strb r1, [r0]
	b _0800DE26
	.align 2, 0
_0800DE14: .4byte 0x00002710
_0800DE18: .4byte 0x02021BD0
_0800DE1C: .4byte 0x0000FFFF
_0800DE20:
	cmp r4, #4
	bne _0800DE26
	strb r1, [r6, #4]
_0800DE26:
	cmp r1, #0
	bne _0800DE48
	cmp r4, #0
	bne _0800DE38
	mov r0, r8
	cmp r0, #0
	bne _0800DE4E
	movs r4, #1
	b _0800DE4E
_0800DE38:
	subs r0, r4, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0800DE48
	mov r0, r8
	cmp r0, #0
	bne _0800DE4E
_0800DE48:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800DE4E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r1, #0
	muls r0, r7, r0
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, sb
	cmp r1, #4
	bls _0800DDEE
_0800DE74:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0800DE98
	movs r2, #0
	ldr r4, _0800DEA8
	movs r3, #0
_0800DE84:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0800DE8E
	strb r3, [r1]
_0800DE8E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800DE84
_0800DE98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DEA8: .4byte 0x02021BD0

	THUMB_FUNC_START sub_800DEAC
sub_800DEAC: @ 0x0800DEAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r2, #0
	ldr r7, _0800DF24
	adds r3, r7, #0
	movs r1, #0xa
_0800DED0:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x12
	bls _0800DED0
	movs r1, #1
	mov r2, sl
	ands r1, r2
	cmp r1, #0
	beq _0800DEEC
	movs r0, #0
	strb r0, [r7]
_0800DEEC:
	ldr r5, _0800DF28
	ldr r6, _0800DF2C
	mov r3, sb
	cmp r3, #0x12
	bhi _0800DF9A
	mov r8, r1
_0800DEF8:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r3, r6, #0
	adds r2, r5, #0
	bl sub_805B144
	adds r2, r1, #0
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0800DF1E
	cmp r4, #0
	beq _0800DF36
	subs r0, r4, #1
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0800DF30
_0800DF1E:
	adds r0, r4, r7
	strb r1, [r0]
	b _0800DF36
	.align 2, 0
_0800DF24: .4byte 0x02021BE0
_0800DF28: .4byte 0xA7640000
_0800DF2C: .4byte 0x0DE0B6B3
_0800DF30:
	cmp r4, #0x12
	bne _0800DF36
	strb r1, [r7, #0x12]
_0800DF36:
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0800DF5C
	cmp r4, #0
	bne _0800DF4C
	mov r0, r8
	cmp r0, #0
	bne _0800DF62
	movs r4, #1
	b _0800DF62
_0800DF4C:
	subs r0, r4, #1
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0800DF5C
	mov r3, r8
	cmp r3, #0
	bne _0800DF62
_0800DF5C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800DF62:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r3, r6, #0
	adds r2, r5, #0
	bl sub_805B0D4
	ldr r2, [sp]
	ldr r3, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
	str r2, [sp]
	str r3, [sp, #4]
	adds r1, r6, #0
	adds r0, r5, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_805B144
	adds r6, r1, #0
	adds r5, r0, #0
	mov r3, sb
	cmp r3, #0x12
	bls _0800DEF8
_0800DF9A:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0800DFBE
	movs r2, #0
	ldr r4, _0800DFD0
	movs r3, #0
_0800DFAA:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0800DFB4
	strb r3, [r1]
_0800DFB4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x12
	bls _0800DFAA
_0800DFBE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DFD0: .4byte 0x02021BE0

	THUMB_FUNC_START sub_800DFD4
sub_800DFD4: @ 0x0800DFD4
	movs r3, #0
	adds r2, r0, #0
	cmp r1, #0
	beq _0800DFEC
_0800DFDC:
	ldrb r0, [r2]
	adds r0, r3, r0
	strb r0, [r2]
	ldrb r3, [r2]
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0800DFDC
_0800DFEC:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DFF0
sub_800DFF0: @ 0x0800DFF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _0800E06C
	mov r0, sp
	movs r2, #8
	bl sub_805D150
	add r7, sp, #8
	ldr r1, _0800E070
	adds r0, r7, #0
	movs r2, #0x10
	bl sub_805D150
	movs r2, #0
	lsls r4, r4, #3
	cmp r2, r4
	bhs _0800E05E
	lsls r6, r6, #3
	mov ip, r4
	mov r8, r7
_0800E028:
	movs r3, #0
	movs r1, #0
	adds r7, r2, #1
	cmp r1, r6
	bhs _0800E04C
	movs r4, #7
_0800E034:
	ldrb r0, [r5]
	adds r0, r3, r0
	strb r0, [r5]
	ldrb r3, [r5]
	adds r0, r1, #0
	ands r0, r4
	add r0, sp
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r6
	blo _0800E034
_0800E04C:
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	subs r5, r5, r0
	adds r2, r7, #0
	cmp r2, ip
	blo _0800E028
_0800E05E:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E06C: .4byte 0x080AED3C
_0800E070: .4byte 0x080AED44

	THUMB_FUNC_START sub_800E074
sub_800E074: @ 0x0800E074
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl HuffUnComp
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800DFD4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E08C
sub_800E08C: @ 0x0800E08C
	push {r4, lr}
	adds r4, r1, #0
	bl HuffUnComp
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0xa
	bl sub_800DFF0
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E0A4
sub_800E0A4: @ 0x0800E0A4
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800DFD4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E0BC
sub_800E0BC: @ 0x0800E0BC
	push {r4, lr}
	adds r4, r1, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0xa
	bl sub_800DFF0
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E0D4
sub_800E0D4: @ 0x0800E0D4
	push {lr}
	bl sub_803FD14
	ldr r1, _0800E0F0
	ldr r0, _0800E0F4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_0800E0F0: .4byte 0x08DFF600
_0800E0F4: .4byte 0x02021C00

	THUMB_FUNC_START sub_800E0F8
sub_800E0F8: @ 0x0800E0F8
	push {lr}
	bl sub_803FD14
	ldr r1, _0800E114
	ldr r0, _0800E118
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_0800E114: .4byte 0x08DFF55C
_0800E118: .4byte 0x02021C00

	THUMB_FUNC_START sub_800E11C
sub_800E11C: @ 0x0800E11C
	push {r4, r5, r6, lr}
	ldr r2, _0800E168
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E16C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E168: .4byte 0x02021C00
_0800E16C: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E170
sub_800E170: @ 0x0800E170
	push {r4, r5, r6, lr}
	ldr r2, _0800E1BC
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E1C0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E1BC: .4byte 0x02021C00
_0800E1C0: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E1C4
sub_800E1C4: @ 0x0800E1C4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E224
	ldrb r1, [r2, #2]
	lsrs r0, r1, #4
	mov r8, r0
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r2, r1, #4
	ands r0, r1
	ldr r6, _0800E228
	lsls r4, r2, #2
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
	ldr r0, [r4]
	mov r1, r8
	lsls r4, r1, #2
	add r4, r8
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E224: .4byte 0x02021C00
_0800E228: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E22C
sub_800E22C: @ 0x0800E22C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E28C
	ldrb r1, [r2, #2]
	lsrs r0, r1, #4
	mov r8, r0
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r2, r1, #4
	ands r0, r1
	ldr r6, _0800E290
	lsls r4, r2, #2
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
	ldr r0, [r4]
	mov r1, r8
	lsls r4, r1, #2
	add r4, r8
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E28C: .4byte 0x02021C00
_0800E290: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E294
sub_800E294: @ 0x0800E294
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r2, _0800E31C
	ldrb r0, [r2, #2]
	lsrs r1, r0, #4
	mov sl, r1
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sb, r3
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r6, _0800E320
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r0, sb
	lsls r4, r0, #2
	add r4, sb
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
	ldr r0, [r4]
	mov r1, sl
	lsls r4, r1, #2
	add r4, sl
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E31C: .4byte 0x02021C00
_0800E320: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E324
sub_800E324: @ 0x0800E324
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r2, _0800E3AC
	ldrb r0, [r2, #2]
	lsrs r1, r0, #4
	mov sl, r1
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sb, r3
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r6, _0800E3B0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r0, sb
	lsls r4, r0, #2
	add r4, sb
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
	ldr r0, [r4]
	mov r1, sl
	lsls r4, r1, #2
	add r4, sl
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3AC: .4byte 0x02021C00
_0800E3B0: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E3B4
sub_800E3B4: @ 0x0800E3B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800E458
	ldrb r0, [r2, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sl, r3
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r3, r0, #4
	mov sb, r3
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E45C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r3, sl
	lsls r4, r3, #2
	add r4, sl
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
	ldr r0, [r4]
	lsls r4, r7, #2
	adds r4, r4, r7
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E458: .4byte 0x02021C00
_0800E45C: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E460
sub_800E460: @ 0x0800E460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800E504
	ldrb r0, [r2, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sl, r3
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r3, r0, #4
	mov sb, r3
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E508
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r3, sl
	lsls r4, r3, #2
	add r4, sl
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
	ldr r0, [r4]
	lsls r4, r7, #2
	adds r4, r4, r7
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E504: .4byte 0x02021C00
_0800E508: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E50C
sub_800E50C: @ 0x0800E50C
	ldr r0, _0800E544
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r3, _0800E548
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E544: .4byte 0x02021C00
_0800E548: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E54C
sub_800E54C: @ 0x0800E54C
	ldr r0, _0800E584
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r3, _0800E588
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E584: .4byte 0x02021C00
_0800E588: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E58C
sub_800E58C: @ 0x0800E58C
	push {r4, lr}
	ldr r0, _0800E5DC
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E5E0
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	movs r0, #4
	subs r0, r0, r4
	bl sub_803F8E0
	bl sub_803F29C
	bl sub_803F224
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5DC: .4byte 0x02021C00
_0800E5E0: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E5E4
sub_800E5E4: @ 0x0800E5E4
	push {r4, lr}
	ldr r0, _0800E634
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E638
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	movs r0, #4
	subs r0, r0, r4
	bl sub_803F8E0
	bl sub_803F29C
	bl sub_803F224
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E634: .4byte 0x02021C00
_0800E638: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E63C
sub_800E63C: @ 0x0800E63C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E6B0
	ldrb r1, [r2, #2]
	lsrs r3, r1, #4
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r6, r1, #4
	ands r0, r1
	ldr r1, _0800E6B4
	mov r8, r1
	lsls r2, r3, #2
	adds r2, r2, r3
	adds r2, r2, r5
	lsls r2, r2, #2
	add r2, r8
	ldr r4, [r2]
	ldrb r3, [r4, #5]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r4, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r4, #0x10
	orrs r1, r4
	strb r1, [r3, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #5]
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldr r2, [r1]
	ldrb r1, [r2, #5]
	orrs r1, r4
	strb r1, [r2, #5]
	movs r1, #4
	subs r1, r1, r5
	bl sub_803F908
	bl sub_803F29C
	bl sub_803F224
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6B0: .4byte 0x02021C00
_0800E6B4: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E6B8
sub_800E6B8: @ 0x0800E6B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E72C
	ldrb r1, [r2, #2]
	lsrs r3, r1, #4
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r6, r1, #4
	ands r0, r1
	ldr r1, _0800E730
	mov r8, r1
	lsls r2, r3, #2
	adds r2, r2, r3
	adds r2, r2, r5
	lsls r2, r2, #2
	add r2, r8
	ldr r4, [r2]
	ldrb r3, [r4, #5]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r4, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r4, #0x10
	orrs r1, r4
	strb r1, [r3, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #5]
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldr r2, [r1]
	ldrb r1, [r2, #5]
	orrs r1, r4
	strb r1, [r2, #5]
	movs r1, #4
	subs r1, r1, r5
	bl sub_803F908
	bl sub_803F29C
	bl sub_803F224
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E72C: .4byte 0x02021C00
_0800E730: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E734
sub_800E734: @ 0x0800E734
	push {r4, r5, lr}
	ldr r0, _0800E788
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E78C
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E790
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E788: .4byte 0x02021C00
_0800E78C: .4byte 0x02023FD0
_0800E790: .4byte 0x020245A0

	THUMB_FUNC_START sub_800E794
sub_800E794: @ 0x0800E794
	push {r4, r5, lr}
	ldr r0, _0800E7E8
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E7EC
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E7F0
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7E8: .4byte 0x02021C00
_0800E7EC: .4byte 0x02023FD0
_0800E7F0: .4byte 0x020245A0

	THUMB_FUNC_START sub_800E7F4
sub_800E7F4: @ 0x0800E7F4
	push {r4, r5, lr}
	ldr r0, _0800E848
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E84C
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E850
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E848: .4byte 0x02021C00
_0800E84C: .4byte 0x02023FD0
_0800E850: .4byte 0x020245A0

	THUMB_FUNC_START sub_800E854
sub_800E854: @ 0x0800E854
	push {r4, r5, lr}
	ldr r0, _0800E8A8
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E8AC
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E8B0
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8A8: .4byte 0x02021C00
_0800E8AC: .4byte 0x02023FD0
_0800E8B0: .4byte 0x020245A0

	THUMB_FUNC_START sub_800E8B4
sub_800E8B4: @ 0x0800E8B4
	push {r4, r5, lr}
	ldr r0, _0800E918
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E91C
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E920
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	bl sub_8047D28
	ldr r0, _0800E924
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800E910
	movs r0, #4
	bl sub_8040540
_0800E910:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E918: .4byte 0x02021C00
_0800E91C: .4byte 0x02023FD0
_0800E920: .4byte 0x02024250
_0800E924: .4byte 0x02023FC0

	THUMB_FUNC_START sub_800E928
sub_800E928: @ 0x0800E928
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E92C
sub_800E92C: @ 0x0800E92C
	push {lr}
	ldr r0, _0800E950
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800E954
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	pop {r0}
	bx r0
	.align 2, 0
_0800E950: .4byte 0x02021C00
_0800E954: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E958
sub_800E958: @ 0x0800E958
	ldr r0, _0800E984
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800E988
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldrb r1, [r3, #5]
	movs r2, #2
	orrs r1, r2
	strb r1, [r3, #5]
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E984: .4byte 0x02021C00
_0800E988: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E98C
sub_800E98C: @ 0x0800E98C
	push {lr}
	bl sub_800E63C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E998
sub_800E998: @ 0x0800E998
	push {lr}
	bl sub_800E7F4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E9A4
sub_800E9A4: @ 0x0800E9A4
	push {lr}
	ldr r0, _0800E9C8
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800E9CC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	pop {r0}
	bx r0
	.align 2, 0
_0800E9C8: .4byte 0x02021C00
_0800E9CC: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800E9D0
sub_800E9D0: @ 0x0800E9D0
	ldr r0, _0800E9FC
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800EA00
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldrb r1, [r3, #5]
	movs r2, #2
	orrs r1, r2
	strb r1, [r3, #5]
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E9FC: .4byte 0x02021C00
_0800EA00: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EA04
sub_800EA04: @ 0x0800EA04
	push {lr}
	bl sub_800E6B8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EA10
sub_800EA10: @ 0x0800EA10
	push {lr}
	bl sub_800E854
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EA1C
sub_800EA1C: @ 0x0800EA1C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EA20
sub_800EA20: @ 0x0800EA20
	push {r4, r5, r6, lr}
	ldr r2, _0800EA60
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EA64
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA60: .4byte 0x02021C00
_0800EA64: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EA68
sub_800EA68: @ 0x0800EA68
	push {r4, r5, r6, lr}
	ldr r2, _0800EAA8
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EAAC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAA8: .4byte 0x02021C00
_0800EAAC: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EAB0
sub_800EAB0: @ 0x0800EAB0
	push {r4, r5, r6, lr}
	ldr r2, _0800EAF0
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EAF4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAF0: .4byte 0x02021C00
_0800EAF4: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EAF8
sub_800EAF8: @ 0x0800EAF8
	push {r4, r5, r6, lr}
	ldr r2, _0800EB38
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EB3C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB38: .4byte 0x02021C00
_0800EB3C: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EB40
sub_800EB40: @ 0x0800EB40
	push {r4, r5, r6, lr}
	ldr r1, _0800EB80
	ldrb r0, [r1, #2]
	lsrs r5, r0, #4
	movs r2, #0xf
	adds r3, r2, #0
	ands r3, r0
	ldrb r0, [r1, #3]
	lsrs r6, r0, #4
	ands r2, r0
	ldr r1, _0800EB84
	ldr r0, _0800EB88
	lsls r4, r5, #2
	adds r4, r4, r5
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r1, #4]
	strb r3, [r1, #5]
	strb r6, [r1, #2]
	strb r2, [r1, #3]
	bl sub_804D10C
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB80: .4byte 0x02021C00
_0800EB84: .4byte 0x02024260
_0800EB88: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EB8C
sub_800EB8C: @ 0x0800EB8C
	push {r4, r5, r6, lr}
	ldr r1, _0800EBCC
	ldrb r0, [r1, #2]
	lsrs r5, r0, #4
	movs r2, #0xf
	adds r3, r2, #0
	ands r3, r0
	ldrb r0, [r1, #3]
	lsrs r6, r0, #4
	ands r2, r0
	ldr r1, _0800EBD0
	ldr r0, _0800EBD4
	lsls r4, r5, #2
	adds r4, r4, r5
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r1, #4]
	strb r3, [r1, #5]
	strb r6, [r1, #2]
	strb r2, [r1, #3]
	bl sub_804D10C
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EBCC: .4byte 0x02021C00
_0800EBD0: .4byte 0x02024260
_0800EBD4: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EBD8
sub_800EBD8: @ 0x0800EBD8
	push {r4, r5, r6, lr}
	ldr r2, _0800EC18
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EC1C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC18: .4byte 0x02021C00
_0800EC1C: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EC20
sub_800EC20: @ 0x0800EC20
	push {r4, r5, r6, lr}
	ldr r2, _0800EC60
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EC64
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC60: .4byte 0x02021C00
_0800EC64: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EC68
sub_800EC68: @ 0x0800EC68
	push {r4, lr}
	ldr r0, _0800ECB0
	ldrb r0, [r0, #2]
	lsrs r3, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r2, _0800ECB4
	ldr r4, _0800ECB8
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r4
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r2]
	strb r3, [r2, #2]
	strb r1, [r2, #3]
	bl sub_804D10C
	ldr r0, _0800ECBC
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800ECA4
	movs r0, #4
	bl sub_8040540
_0800ECA4:
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECB0: .4byte 0x02021C00
_0800ECB4: .4byte 0x02024260
_0800ECB8: .4byte 0x02023FD0
_0800ECBC: .4byte 0x02023FC0

	THUMB_FUNC_START sub_800ECC0
sub_800ECC0: @ 0x0800ECC0
	push {r4, lr}
	ldr r0, _0800ECF4
	ldrb r0, [r0, #2]
	lsrs r3, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r2, _0800ECF8
	ldr r0, _0800ECFC
	lsls r4, r3, #2
	adds r4, r4, r3
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r2]
	strb r3, [r2, #2]
	strb r1, [r2, #3]
	bl sub_804D10C
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECF4: .4byte 0x02021C00
_0800ECF8: .4byte 0x02024260
_0800ECFC: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800ED00
sub_800ED00: @ 0x0800ED00
	push {r4, r5, r6, lr}
	ldr r2, _0800ED40
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800ED44
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl sub_8040928
	ldr r0, [r4]
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED40: .4byte 0x02021C00
_0800ED44: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800ED48
sub_800ED48: @ 0x0800ED48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0800EDEC
	ldrb r3, [r2, #2]
	lsrs r0, r3, #4
	mov r8, r0
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	str r0, [sp]
	ldrb r0, [r2, #4]
	lsrs r3, r0, #4
	mov sb, r3
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	mov sl, r2
	adds r5, r1, #0
	ands r5, r0
	ldr r7, _0800EDF0
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r7
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8021D00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0800EDC0
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r3, sl
	lsls r0, r3, #2
	add r0, sl
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
_0800EDC0:
	ldr r1, _0800EDF4
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, r8
	strb r0, [r1, #2]
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1, #3]
	bl sub_804D10C
	ldr r0, [r6]
	bl sub_80402BC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EDEC: .4byte 0x02021C00
_0800EDF0: .4byte 0x02023FD0
_0800EDF4: .4byte 0x02024260

	THUMB_FUNC_START sub_800EDF8
sub_800EDF8: @ 0x0800EDF8
	push {lr}
	ldr r0, _0800EE1C
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800EE20
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	pop {r0}
	bx r0
	.align 2, 0
_0800EE1C: .4byte 0x02021C00
_0800EE20: .4byte 0x02023FD0

	THUMB_FUNC_START sub_800EE24
sub_800EE24: @ 0x0800EE24
	push {r4, r5, lr}
	ldr r4, _0800EE80
	ldr r0, [r4]
	ldr r1, _0800EE84
	movs r2, #0xfc
	bl sub_805D150
	movs r5, #0
_0800EE34:
	ldr r2, [r4]
	movs r0, #0x54
	muls r0, r5, r0
	adds r2, r2, r0
	ldr r1, _0800EE88
	adds r0, r0, r1
	adds r0, #0x52
	ldrb r0, [r0]
	movs r3, #0xa7
	lsls r3, r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	ldr r3, [r4]
	lsls r1, r5, #1
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r2, r3, r0
	adds r2, r2, r1
	ldr r0, _0800EE8C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r1, r1, r5
	ldr r0, _0800EE90
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0800EE34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE80: .4byte 0x08DFF6A4
_0800EE84: .4byte 0x02023EC0
_0800EE88: .4byte 0x020240F0
_0800EE8C: .4byte 0x02024258
_0800EE90: .4byte 0x02021DB8

	THUMB_FUNC_START sub_800EE94
sub_800EE94: @ 0x0800EE94
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800EEF8
	ldr r4, _0800EEFC
	ldr r1, [r4]
	movs r2, #0xfc
	bl sub_805D150
	movs r5, #0
	ldr r0, _0800EF00
	mov ip, r0
	ldr r6, _0800EF04
_0800EEAA:
	movs r0, #0x54
	adds r1, r5, #0
	muls r1, r0, r1
	mov r7, ip
	adds r2, r1, r7
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0xa7
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x52
	strb r0, [r2]
	lsls r1, r5, #1
	adds r2, r1, r6
	ldr r3, [r4]
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r0, r3, r7
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r1, _0800EF08
	adds r1, r5, r1
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r3, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0800EEAA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EEF8: .4byte 0x02023EC0
_0800EEFC: .4byte 0x08DFF6A4
_0800EF00: .4byte 0x020240F0
_0800EF04: .4byte 0x02024258
_0800EF08: .4byte 0x02021DB8

	THUMB_FUNC_START sub_800EF0C
sub_800EF0C: @ 0x0800EF0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800EF6C
	mov ip, r0
	ands r2, r0
	movs r3, #0
	movs r4, #0
	ldr r0, _0800EF70
	ldr r1, [r0]
	ldr r5, _0800EF74
	adds r0, r1, r5
	ldrh r0, [r0]
	cmp r4, r0
	bhs _0800EF5C
	adds r5, r1, #0
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r7, r5, r1
	adds r6, r0, #0
	ldr r0, _0800EF78
	mov r8, r0
_0800EF38:
	lsls r1, r4, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, r3
	bls _0800EF52
	adds r3, r0, #0
	adds r0, r5, r1
	add r0, r8
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r2
	adds r2, r0, #0
	orrs r2, r1
_0800EF52:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0800EF38
_0800EF5C:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EF6C: .4byte 0xFFFF0000
_0800EF70: .4byte 0x08DFF6A4
_0800EF74: .4byte 0x00002294
_0800EF78: .4byte 0x00000504

	THUMB_FUNC_START sub_800EF7C
sub_800EF7C: @ 0x0800EF7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0800EFFC
	mov ip, r0
	ands r3, r0
	movs r4, #0
	movs r2, #0
	ldr r1, _0800F000
	ldr r5, [r1]
	ldr r6, _0800F004
	adds r0, r5, r6
	ldrh r0, [r0]
	mov sl, r1
	cmp r2, r0
	bhs _0800EFD6
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r7, r5, r1
	adds r6, r0, #0
	ldr r0, _0800F008
	mov r8, r0
_0800EFB2:
	lsls r1, r2, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, r4
	bls _0800EFCC
	adds r4, r0, #0
	adds r0, r5, r1
	add r0, r8
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r3
	adds r3, r0, #0
	orrs r3, r1
_0800EFCC:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r6
	blo _0800EFB2
_0800EFD6:
	mov r1, sl
	ldr r0, [r1]
	mov r5, sb
	lsls r2, r5, #4
	adds r1, r0, r2
	ldr r6, _0800F00C
	adds r1, r1, r6
	strh r3, [r1]
	ldr r1, _0800F010
	adds r0, r0, r1
	adds r0, r0, r2
	str r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFFC: .4byte 0xFFFF0000
_0800F000: .4byte 0x08DFF6A4
_0800F004: .4byte 0x00002294
_0800F008: .4byte 0x00000504
_0800F00C: .4byte 0x000022A8
_0800F010: .4byte 0x000022AC

	THUMB_FUNC_START sub_800F014
sub_800F014: @ 0x0800F014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r2, #0
	ldr r1, _0800F0B8
	ldr r0, [r1]
	ldr r3, _0800F0BC
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r2, r0
	bhs _0800F0EE
	ldr r0, _0800F0C0
	mov sl, r0
_0800F034:
	movs r7, #0
	adds r1, r2, #1
	str r1, [sp]
	lsls r2, r2, #3
	mov r8, r2
	movs r2, #0
	mov ip, r2
_0800F042:
	ldr r3, _0800F0B8
	ldr r0, [r3]
	movs r2, #0xa1
	lsls r2, r2, #3
	adds r1, r0, r2
	add r1, r8
	add r0, sl
	add r0, ip
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bls _0800F0CC
	movs r4, #2
	cmp r4, r7
	bls _0800F08A
	mov sb, r3
	ldr r6, _0800F0C4
	movs r5, #0x10
_0800F066:
	mov r0, sb
	ldr r1, [r0]
	lsls r3, r4, #4
	adds r2, r1, r3
	adds r0, r1, r5
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r2, r2, r6
	strh r0, [r2]
	add r1, sl
	adds r3, r1, r3
	adds r1, r1, r5
	ldr r0, [r1]
	str r0, [r3]
	subs r5, #0x10
	subs r4, #1
	cmp r4, r7
	bhi _0800F066
_0800F08A:
	ldr r2, _0800F0B8
	ldr r1, [r2]
	mov r3, ip
	adds r2, r1, r3
	mov r3, r8
	adds r0, r1, r3
	ldr r3, _0800F0C8
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r3, _0800F0C4
	adds r2, r2, r3
	strh r0, [r2]
	mov r0, sl
	adds r2, r1, r0
	add r2, ip
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r1, r1, r3
	add r1, r8
	ldr r0, [r1]
	str r0, [r2]
	b _0800F0DA
	.align 2, 0
_0800F0B8: .4byte 0x08DFF6A4
_0800F0BC: .4byte 0x00002294
_0800F0C0: .4byte 0x000022A4
_0800F0C4: .4byte 0x000022A0
_0800F0C8: .4byte 0x00000504
_0800F0CC:
	cmp r1, r0
	beq _0800F0DA
	movs r0, #0x10
	add ip, r0
	adds r7, #1
	cmp r7, #2
	bls _0800F042
_0800F0DA:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _0800F100
	ldr r0, [r3]
	ldr r1, _0800F104
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r2, r0
	blo _0800F034
_0800F0EE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F100: .4byte 0x08DFF6A4
_0800F104: .4byte 0x00002294

	THUMB_FUNC_START sub_800F108
sub_800F108: @ 0x0800F108
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800F148
	ldr r1, [r0]
	ldr r2, _0800F14C
	adds r1, r1, r2
	movs r2, #0
	strh r2, [r1]
	movs r3, #0
	mov ip, r0
	ldr r7, _0800F150
	movs r4, #0
	ldr r6, _0800F154
	movs r5, #0xa1
	lsls r5, r5, #3
_0800F124:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r3, #3
	adds r0, r1, r2
	adds r0, r0, r7
	strh r4, [r0]
	adds r1, r1, r5
	adds r1, r1, r2
	str r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bls _0800F124
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F148: .4byte 0x08DFF6A4
_0800F14C: .4byte 0x00002294
_0800F150: .4byte 0x00000504
_0800F154: .4byte 0x000003B1

	THUMB_FUNC_START sub_800F158
sub_800F158: @ 0x0800F158
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	ldr r1, _0800F190
	mov ip, r1
	ldr r7, _0800F194
	movs r5, #0
	ldr r6, _0800F198
_0800F166:
	movs r3, #0
	adds r4, r0, #1
	lsls r2, r0, #4
_0800F16C:
	mov r0, ip
	ldr r1, [r0]
	adds r0, r1, r2
	adds r0, r0, r7
	strh r5, [r0]
	adds r1, r1, r6
	adds r1, r1, r2
	str r5, [r1]
	adds r2, #8
	adds r3, #1
	cmp r3, #1
	bls _0800F16C
	adds r0, r4, #0
	cmp r0, #2
	bls _0800F166
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F190: .4byte 0x08DFF6A4
_0800F194: .4byte 0x000022A0
_0800F198: .4byte 0x000022A4

	THUMB_FUNC_START sub_800F19C
sub_800F19C: @ 0x0800F19C
	push {r4, r5, r6, r7, lr}
	ldr r1, _0800F1DC
	ands r2, r1
	movs r3, #0
	movs r6, #0
	ldr r0, _0800F1E0
	mov ip, r1
	ldr r4, [r0]
	ldr r0, _0800F1E4
	adds r5, r4, r0
	ldr r7, _0800F1E8
_0800F1B2:
	ldr r0, [r5]
	cmp r0, r3
	bls _0800F1C6
	adds r3, r0, #0
	adds r0, r4, r7
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r2
	adds r2, r0, #0
	orrs r2, r1
_0800F1C6:
	adds r4, #0x10
	adds r5, #0x10
	adds r6, #1
	cmp r6, #2
	bls _0800F1B2
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800F1DC: .4byte 0xFFFF0000
_0800F1E0: .4byte 0x08DFF6A4
_0800F1E4: .4byte 0x000022AC
_0800F1E8: .4byte 0x000022A0

	THUMB_FUNC_START sub_800F1EC
sub_800F1EC: @ 0x0800F1EC
	push {lr}
	ldr r0, _0800F228
	ldr r1, [r0]
	ldr r2, _0800F22C
	adds r0, r1, r2
	movs r2, #0
	str r2, [r0]
	ldr r3, _0800F230
	adds r0, r1, r3
	str r2, [r0]
	ldr r2, _0800F234
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0800F238
	ldrh r0, [r0]
	ldr r3, _0800F23C
	adds r1, r1, r3
	strh r0, [r1]
	ldr r1, _0800F240
	ldr r0, _0800F244
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_0800F228: .4byte 0x08DFF6A4
_0800F22C: .4byte 0x00002298
_0800F230: .4byte 0x0000229C
_0800F234: .4byte 0x00002294
_0800F238: .4byte 0x02021BF8
_0800F23C: .4byte 0x00000504
_0800F240: .4byte 0x08DFF6A8
_0800F244: .4byte 0x02021C00

	THUMB_FUNC_START sub_800F248
sub_800F248: @ 0x0800F248
	push {r4, lr}
	ldr r1, _0800F284
	ldr r0, _0800F288
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	ldr r0, _0800F28C
	ldr r2, [r0]
	ldr r0, _0800F290
	adds r3, r2, r0
	ldrh r0, [r3]
	lsls r0, r0, #3
	movs r4, #0xa1
	lsls r4, r4, #3
	adds r1, r2, r4
	adds r1, r1, r0
	ldr r0, _0800F294
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r1]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F284: .4byte 0x08DFF74C
_0800F288: .4byte 0x02021C00
_0800F28C: .4byte 0x08DFF6A4
_0800F290: .4byte 0x00002294
_0800F294: .4byte 0x00002298

	THUMB_FUNC_START sub_800F298
sub_800F298: @ 0x0800F298
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800F2E8
	ldrb r0, [r0, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	ands r1, r0
	mov r8, r1
	ldr r0, _0800F2EC
	mov sb, r0
	lsls r6, r1, #2
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #2
	adds r0, r6, r5
	add r0, sb
	ldr r0, [r0]
	ldrh r4, [r0]
	adds r0, r4, #0
	bl SetCardData
	ldr r0, _0800F2F0
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	beq _0800F2D2
	b _0800F448
_0800F2D2:
	adds r0, r4, #0
	bl sub_8045390
	cmp r0, #1
	beq _0800F350
	cmp r0, #1
	bgt _0800F2F4
	cmp r0, #0
	beq _0800F2FE
	b _0800F3C8
	.align 2, 0
_0800F2E8: .4byte 0x02021C00
_0800F2EC: .4byte 0x02023FD0
_0800F2F0: .4byte 0x02021AD0
_0800F2F4:
	cmp r0, #2
	beq _0800F36C
	cmp r0, #3
	beq _0800F388
	b _0800F3C8
_0800F2FE:
	adds r0, r4, #0
	bl sub_802061C
	cmp r0, #0
	beq _0800F334
	mov r1, sb
	adds r0, r6, r1
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_80433E4
	cmp r0, #1
	bgt _0800F334
	ldr r0, _0800F328
	ldr r0, [r0]
	ldr r1, _0800F32C
	adds r0, r0, r1
	ldr r1, _0800F330
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F328: .4byte 0x08DFF6A4
_0800F32C: .4byte 0x00002298
_0800F330: .4byte 0x7EDE89FE
_0800F334:
	ldr r0, _0800F344
	ldr r0, [r0]
	ldr r1, _0800F348
	adds r0, r0, r1
	ldr r1, _0800F34C
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F344: .4byte 0x08DFF6A4
_0800F348: .4byte 0x00002298
_0800F34C: .4byte 0x7EE0ACDF
_0800F350:
	ldr r0, _0800F360
	ldr r0, [r0]
	ldr r1, _0800F364
	adds r0, r0, r1
	ldr r1, _0800F368
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F360: .4byte 0x08DFF6A4
_0800F364: .4byte 0x00002298
_0800F368: .4byte 0x7EE4F29F
_0800F36C:
	ldr r0, _0800F37C
	ldr r0, [r0]
	ldr r1, _0800F380
	adds r0, r0, r1
	ldr r1, _0800F384
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F37C: .4byte 0x08DFF6A4
_0800F380: .4byte 0x00002298
_0800F384: .4byte 0x7EE7157F
_0800F388:
	adds r0, r4, #0
	bl sub_802607C
	cmp r0, #1
	bne _0800F3AC
	ldr r0, _0800F3A0
	ldr r0, [r0]
	ldr r1, _0800F3A4
	adds r0, r0, r1
	ldr r1, _0800F3A8
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F3A0: .4byte 0x08DFF6A4
_0800F3A4: .4byte 0x00002298
_0800F3A8: .4byte 0x7EDE89FF
_0800F3AC:
	ldr r0, _0800F3BC
	ldr r0, [r0]
	ldr r1, _0800F3C0
	adds r0, r0, r1
	ldr r1, _0800F3C4
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F3BC: .4byte 0x08DFF6A4
_0800F3C0: .4byte 0x00002298
_0800F3C4: .4byte 0x7EE9385F
_0800F3C8:
	ldr r0, _0800F3D4
	ldr r0, [r0]
	ldr r1, _0800F3D8
	adds r0, r0, r1
	ldr r1, _0800F3DC
	b _0800F452
	.align 2, 0
_0800F3D4: .4byte 0x08DFF6A4
_0800F3D8: .4byte 0x00002298
_0800F3DC: .4byte 0x7EDE89F9
_0800F3E0:
	ldr r4, _0800F42C
	ldr r0, _0800F430
	lsls r1, r7, #2
	adds r1, r1, r7
	add r1, r8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0800F434
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _0800F438
	ldr r2, [r0]
	ldr r0, _0800F43C
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r4, _0800F440
	adds r0, r0, r4
	ldr r3, _0800F444
	ldrh r1, [r3, #0x12]
	subs r0, r0, r1
	str r0, [r2]
	adds r0, r0, r4
	ldrh r1, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r2]
	b _0800F454
	.align 2, 0
_0800F42C: .4byte 0x02021AC0
_0800F430: .4byte 0x02023FD0
_0800F434: .4byte 0x02023EC0
_0800F438: .4byte 0x08DFF6A4
_0800F43C: .4byte 0x00002298
_0800F440: .4byte 0x0000FFFE
_0800F444: .4byte 0x02021AD0
_0800F448:
	ldr r0, _0800F460
	ldr r0, [r0]
	ldr r1, _0800F464
	adds r0, r0, r1
	ldr r1, _0800F468
_0800F452:
	str r1, [r0]
_0800F454:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F460: .4byte 0x08DFF6A4
_0800F464: .4byte 0x00002298
_0800F468: .4byte 0x7EE2CFBF

	THUMB_FUNC_START sub_800F46C
sub_800F46C: @ 0x0800F46C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800F4BC
	ldrb r0, [r0, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	ands r1, r0
	mov r8, r1
	ldr r0, _0800F4C0
	mov sb, r0
	lsls r6, r1, #2
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #2
	adds r0, r6, r5
	add r0, sb
	ldr r0, [r0]
	ldrh r4, [r0]
	adds r0, r4, #0
	bl SetCardData
	ldr r0, _0800F4C4
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	beq _0800F4A6
	b _0800F61C
_0800F4A6:
	adds r0, r4, #0
	bl sub_8045390
	cmp r0, #1
	beq _0800F524
	cmp r0, #1
	bgt _0800F4C8
	cmp r0, #0
	beq _0800F4D2
	b _0800F59C
	.align 2, 0
_0800F4BC: .4byte 0x02021C00
_0800F4C0: .4byte 0x02023FD0
_0800F4C4: .4byte 0x02021AD0
_0800F4C8:
	cmp r0, #2
	beq _0800F540
	cmp r0, #3
	beq _0800F55C
	b _0800F59C
_0800F4D2:
	adds r0, r4, #0
	bl sub_802061C
	cmp r0, #0
	beq _0800F508
	mov r1, sb
	adds r0, r6, r1
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_80433E4
	cmp r0, #1
	bgt _0800F508
	ldr r0, _0800F4FC
	ldr r0, [r0]
	ldr r1, _0800F500
	adds r0, r0, r1
	ldr r1, _0800F504
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F4FC: .4byte 0x08DFF6A4
_0800F500: .4byte 0x00002298
_0800F504: .4byte 0x7EDE89FE
_0800F508:
	ldr r0, _0800F518
	ldr r0, [r0]
	ldr r1, _0800F51C
	adds r0, r0, r1
	ldr r1, _0800F520
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F518: .4byte 0x08DFF6A4
_0800F51C: .4byte 0x00002298
_0800F520: .4byte 0x7EE0ACDF
_0800F524:
	ldr r0, _0800F534
	ldr r0, [r0]
	ldr r1, _0800F538
	adds r0, r0, r1
	ldr r1, _0800F53C
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F534: .4byte 0x08DFF6A4
_0800F538: .4byte 0x00002298
_0800F53C: .4byte 0x7EE4F29F
_0800F540:
	ldr r0, _0800F550
	ldr r0, [r0]
	ldr r1, _0800F554
	adds r0, r0, r1
	ldr r1, _0800F558
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F550: .4byte 0x08DFF6A4
_0800F554: .4byte 0x00002298
_0800F558: .4byte 0x7EE7157F
_0800F55C:
	adds r0, r4, #0
	bl sub_802607C
	cmp r0, #1
	bne _0800F580
	ldr r0, _0800F574
	ldr r0, [r0]
	ldr r1, _0800F578
	adds r0, r0, r1
	ldr r1, _0800F57C
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F574: .4byte 0x08DFF6A4
_0800F578: .4byte 0x00002298
_0800F57C: .4byte 0x7EDE89FF
_0800F580:
	ldr r0, _0800F590
	ldr r0, [r0]
	ldr r1, _0800F594
	adds r0, r0, r1
	ldr r1, _0800F598
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F590: .4byte 0x08DFF6A4
_0800F594: .4byte 0x00002298
_0800F598: .4byte 0x7EE9385F
_0800F59C:
	ldr r0, _0800F5A8
	ldr r0, [r0]
	ldr r1, _0800F5AC
	adds r0, r0, r1
	ldr r1, _0800F5B0
	b _0800F626
	.align 2, 0
_0800F5A8: .4byte 0x08DFF6A4
_0800F5AC: .4byte 0x00002298
_0800F5B0: .4byte 0x7EDE89F9
_0800F5B4:
	ldr r4, _0800F600
	ldr r0, _0800F604
	lsls r1, r7, #2
	adds r1, r1, r7
	add r1, r8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0800F608
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _0800F60C
	ldr r2, [r0]
	ldr r0, _0800F610
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r4, _0800F614
	adds r0, r0, r4
	ldr r3, _0800F618
	ldrh r1, [r3, #0x12]
	subs r0, r0, r1
	str r0, [r2]
	adds r0, r0, r4
	ldrh r1, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r2]
	b _0800F628
	.align 2, 0
_0800F600: .4byte 0x02021AC0
_0800F604: .4byte 0x02023FD0
_0800F608: .4byte 0x02023EC0
_0800F60C: .4byte 0x08DFF6A4
_0800F610: .4byte 0x00002298
_0800F614: .4byte 0x0000FFFE
_0800F618: .4byte 0x02021AD0
_0800F61C:
	ldr r0, _0800F634
	ldr r0, [r0]
	ldr r1, _0800F638
	adds r0, r0, r1
	ldr r1, _0800F63C
_0800F626:
	str r1, [r0]
_0800F628:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F634: .4byte 0x08DFF6A4
_0800F638: .4byte 0x00002298
_0800F63C: .4byte 0x7EE2CFBF

	THUMB_FUNC_START sub_800F640
sub_800F640: @ 0x0800F640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800F694
	ldrb r0, [r2, #2]
	lsrs r1, r0, #4
	mov r8, r1
	movs r1, #0xf
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov sb, r2
	adds r5, r1, #0
	ands r5, r0
	ldr r0, _0800F698
	mov sl, r0
	lsls r1, r6, #2
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	lsls r7, r0, #2
	adds r1, r1, r7
	mov r0, sl
	adds r4, r1, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0800F69C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0800F6AC
	ldr r0, _0800F6A0
	ldr r0, [r0]
	ldr r1, _0800F6A4
	adds r0, r0, r1
	ldr r1, _0800F6A8
	b _0800F812
	.align 2, 0
_0800F694: .4byte 0x02021C00
_0800F698: .4byte 0x02023FD0
_0800F69C: .4byte 0x02021AD0
_0800F6A0: .4byte 0x08DFF6A4
_0800F6A4: .4byte 0x00002298
_0800F6A8: .4byte 0x7EDE89F9
_0800F6AC:
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	beq _0800F6D0
	ldr r0, _0800F6C4
	ldr r0, [r0]
	ldr r2, _0800F6C8
	adds r0, r0, r2
	ldr r1, _0800F6CC
	b _0800F812
	.align 2, 0
_0800F6C4: .4byte 0x08DFF6A4
_0800F6C8: .4byte 0x00002298
_0800F6CC: .4byte 0x7EDE89F9
_0800F6D0:
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #0
	beq _0800F6F4
	ldr r0, _0800F6E8
	ldr r0, [r0]
	ldr r1, _0800F6EC
	adds r0, r0, r1
	ldr r1, _0800F6F0
	b _0800F812
	.align 2, 0
_0800F6E8: .4byte 0x08DFF6A4
_0800F6EC: .4byte 0x00002298
_0800F6F0: .4byte 0x7EDE89F9
_0800F6F4:
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_802061C
	cmp r0, #0
	beq _0800F716
	mov r2, sl
	adds r0, r7, r2
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80433E4
	cmp r0, #1
	bgt _0800F716
	bl sub_800F830
	b _0800F814
_0800F716:
	ldr r0, _0800F73C
	mov sl, r0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r2, sl
	adds r7, r0, r2
	ldr r2, [r7]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0800F74C
	ldr r0, _0800F740
	ldr r0, [r0]
	ldr r1, _0800F744
	adds r0, r0, r1
	ldr r1, _0800F748
	b _0800F812
	.align 2, 0
_0800F73C: .4byte 0x02023FD0
_0800F740: .4byte 0x08DFF6A4
_0800F744: .4byte 0x00002298
_0800F748: .4byte 0x7F3D9A1C
_0800F74C:
	ldrb r1, [r2, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F770
	ldr r0, _0800F764
	ldr r0, [r0]
	ldr r2, _0800F768
	adds r0, r0, r2
	ldr r1, _0800F76C
	b _0800F812
	.align 2, 0
_0800F764: .4byte 0x08DFF6A4
_0800F768: .4byte 0x00002298
_0800F76C: .4byte 0x7EDE89F9
_0800F770:
	ldrh r0, [r2]
	bl sub_803FCBC
	cmp r0, #1
	beq _0800F794
	ldr r0, _0800F788
	ldr r0, [r0]
	ldr r1, _0800F78C
	adds r0, r0, r1
	ldr r1, _0800F790
	b _0800F812
	.align 2, 0
_0800F788: .4byte 0x08DFF6A4
_0800F78C: .4byte 0x00002298
_0800F790: .4byte 0x7F3D9A1C
_0800F794:
	ldr r4, _0800F7F0
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r5, _0800F7F4
	adds r5, #0xf0
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _0800F7F8
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _0800F808
	ldr r0, _0800F7FC
	ldr r0, [r0]
	ldr r1, _0800F800
	adds r0, r0, r1
	ldr r1, _0800F804
	b _0800F812
	.align 2, 0
_0800F7F0: .4byte 0x02021AC0
_0800F7F4: .4byte 0x02023EC0
_0800F7F8: .4byte 0x02021AD0
_0800F7FC: .4byte 0x08DFF6A4
_0800F800: .4byte 0x00002298
_0800F804: .4byte 0x7EDE89F9
_0800F808:
	ldr r0, _0800F824
	ldr r0, [r0]
	ldr r2, _0800F828
	adds r0, r0, r2
	ldr r1, _0800F82C
_0800F812:
	str r1, [r0]
_0800F814:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F824: .4byte 0x08DFF6A4
_0800F828: .4byte 0x00002298
_0800F82C: .4byte 0x7F32EBBC

	THUMB_FUNC_START sub_800F830
sub_800F830: @ 0x0800F830
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0800F86C
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r0, _0800F870
	mov r8, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r7, r0, r1
	ldr r2, [r7]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0800F880
	ldr r0, _0800F874
	ldr r0, [r0]
	ldr r1, _0800F878
	adds r0, r0, r1
	ldr r1, _0800F87C
	b _0800F942
	.align 2, 0
_0800F86C: .4byte 0x02021C00
_0800F870: .4byte 0x02023FD0
_0800F874: .4byte 0x08DFF6A4
_0800F878: .4byte 0x00002298
_0800F87C: .4byte 0x7F1D8EFC
_0800F880:
	ldrb r1, [r2, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F8A4
	ldr r0, _0800F898
	ldr r0, [r0]
	ldr r1, _0800F89C
	adds r0, r0, r1
	ldr r1, _0800F8A0
	b _0800F942
	.align 2, 0
_0800F898: .4byte 0x08DFF6A4
_0800F89C: .4byte 0x00002298
_0800F8A0: .4byte 0x7EDE89F9
_0800F8A4:
	ldrh r0, [r2]
	bl sub_803FCBC
	cmp r0, #1
	beq _0800F8C8
	ldr r0, _0800F8BC
	ldr r0, [r0]
	ldr r1, _0800F8C0
	adds r0, r0, r1
	ldr r1, _0800F8C4
	b _0800F942
	.align 2, 0
_0800F8BC: .4byte 0x08DFF6A4
_0800F8C0: .4byte 0x00002298
_0800F8C4: .4byte 0x7F1D8EFC
_0800F8C8:
	ldr r4, _0800F920
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r5, _0800F924
	adds r5, #0xf0
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _0800F928
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _0800F938
	ldr r0, _0800F92C
	ldr r0, [r0]
	ldr r1, _0800F930
	adds r0, r0, r1
	ldr r1, _0800F934
	b _0800F942
	.align 2, 0
_0800F920: .4byte 0x02021AC0
_0800F924: .4byte 0x02023EC0
_0800F928: .4byte 0x02021AD0
_0800F92C: .4byte 0x08DFF6A4
_0800F930: .4byte 0x00002298
_0800F934: .4byte 0x7EDE89F9
_0800F938:
	ldr r0, _0800F950
	ldr r0, [r0]
	ldr r1, _0800F954
	adds r0, r0, r1
	ldr r1, _0800F958
_0800F942:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F950: .4byte 0x08DFF6A4
_0800F954: .4byte 0x00002298
_0800F958: .4byte 0x7F12E09C

	THUMB_FUNC_START sub_800F95C
sub_800F95C: @ 0x0800F95C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0800F9A8
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r7, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r0, _0800F9AC
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r6, r0, r1
	ldr r0, [r6]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0800F9B0
	mov r8, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0800F9C0
	ldr r0, _0800F9B4
	ldr r0, [r0]
	ldr r1, _0800F9B8
	adds r0, r0, r1
	ldr r1, _0800F9BC
	b _0800FAE6
	.align 2, 0
_0800F9A8: .4byte 0x02021C00
_0800F9AC: .4byte 0x02023FD0
_0800F9B0: .4byte 0x02021AD0
_0800F9B4: .4byte 0x08DFF6A4
_0800F9B8: .4byte 0x00002298
_0800F9BC: .4byte 0x7EDE89F9
_0800F9C0:
	ldr r0, [r6]
	bl sub_80436EC
	adds r4, r0, #0
	cmp r4, #1
	beq _0800F9E4
	ldr r0, _0800F9D8
	ldr r0, [r0]
	ldr r1, _0800F9DC
	adds r0, r0, r1
	ldr r1, _0800F9E0
	b _0800FAE6
	.align 2, 0
_0800F9D8: .4byte 0x08DFF6A4
_0800F9DC: .4byte 0x00002298
_0800F9E0: .4byte 0x7EDE89F9
_0800F9E4:
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #0
	beq _0800FA08
	ldr r0, _0800F9FC
	ldr r0, [r0]
	ldr r1, _0800FA00
	adds r0, r0, r1
	ldr r1, _0800FA04
	b _0800FAE6
	.align 2, 0
_0800F9FC: .4byte 0x08DFF6A4
_0800FA00: .4byte 0x00002298
_0800FA04: .4byte 0x7EDE89F9
_0800FA08:
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r1, [r7]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800FA34
	ldr r0, _0800FA28
	ldr r0, [r0]
	ldr r1, _0800FA2C
	adds r0, r0, r1
	ldr r1, _0800FA30
	b _0800FAE6
	.align 2, 0
_0800FA28: .4byte 0x08DFF6A4
_0800FA2C: .4byte 0x00002298
_0800FA30: .4byte 0x7F3D9A1C
_0800FA34:
	ldrb r0, [r1, #5]
	ands r4, r0
	cmp r4, #0
	beq _0800FA54
	ldr r0, _0800FA48
	ldr r0, [r0]
	ldr r1, _0800FA4C
	adds r0, r0, r1
	ldr r1, _0800FA50
	b _0800FAE6
	.align 2, 0
_0800FA48: .4byte 0x08DFF6A4
_0800FA4C: .4byte 0x00002298
_0800FA50: .4byte 0x7EDE89F9
_0800FA54:
	ldrh r0, [r1]
	bl sub_803FCBC
	cmp r0, #1
	beq _0800FA78
	ldr r0, _0800FA6C
	ldr r0, [r0]
	ldr r1, _0800FA70
	adds r0, r0, r1
	ldr r1, _0800FA74
	b _0800FAE6
	.align 2, 0
_0800FA6C: .4byte 0x08DFF6A4
_0800FA70: .4byte 0x00002298
_0800FA74: .4byte 0x7F3D9A1C
_0800FA78:
	ldr r4, _0800FAC8
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r5, _0800FACC
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, r8
	ldrh r6, [r0, #0x12]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r1, r8
	ldrh r1, [r1, #0x12]
	cmp r6, r1
	bhi _0800FADC
	ldr r0, _0800FAD0
	ldr r0, [r0]
	ldr r1, _0800FAD4
	adds r0, r0, r1
	ldr r1, _0800FAD8
	b _0800FAE6
	.align 2, 0
_0800FAC8: .4byte 0x02021AC0
_0800FACC: .4byte 0x02023EC0
_0800FAD0: .4byte 0x08DFF6A4
_0800FAD4: .4byte 0x00002298
_0800FAD8: .4byte 0x7EDE89F9
_0800FADC:
	ldr r0, _0800FAF4
	ldr r0, [r0]
	ldr r1, _0800FAF8
	adds r0, r0, r1
	ldr r1, _0800FAFC
_0800FAE6:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FAF4: .4byte 0x08DFF6A4
_0800FAF8: .4byte 0x00002298
_0800FAFC: .4byte 0x7F32EBBC

	THUMB_FUNC_START sub_800FB00
sub_800FB00: @ 0x0800FB00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0800FB4C
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r7, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r0, _0800FB50
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r6, r0, r1
	ldr r0, [r6]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0800FB54
	mov r8, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0800FB64
	ldr r0, _0800FB58
	ldr r0, [r0]
	ldr r1, _0800FB5C
	adds r0, r0, r1
	ldr r1, _0800FB60
	b _0800FC4A
	.align 2, 0
_0800FB4C: .4byte 0x02021C00
_0800FB50: .4byte 0x02023FD0
_0800FB54: .4byte 0x02021AD0
_0800FB58: .4byte 0x08DFF6A4
_0800FB5C: .4byte 0x00002298
_0800FB60: .4byte 0x7EDE89F9
_0800FB64:
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FB88
	ldr r0, _0800FB7C
	ldr r0, [r0]
	ldr r1, _0800FB80
	adds r0, r0, r1
	ldr r1, _0800FB84
	b _0800FC4A
	.align 2, 0
_0800FB7C: .4byte 0x08DFF6A4
_0800FB80: .4byte 0x00002298
_0800FB84: .4byte 0x7EDE89F9
_0800FB88:
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #1
	beq _0800FBAC
	ldr r0, _0800FBA0
	ldr r0, [r0]
	ldr r1, _0800FBA4
	adds r0, r0, r1
	ldr r1, _0800FBA8
	b _0800FC4A
	.align 2, 0
_0800FBA0: .4byte 0x08DFF6A4
_0800FBA4: .4byte 0x00002298
_0800FBA8: .4byte 0x7EDE89F9
_0800FBAC:
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FBDC
	ldr r0, _0800FBD0
	ldr r0, [r0]
	ldr r1, _0800FBD4
	adds r0, r0, r1
	ldr r1, _0800FBD8
	b _0800FC4A
	.align 2, 0
_0800FBD0: .4byte 0x08DFF6A4
_0800FBD4: .4byte 0x00002298
_0800FBD8: .4byte 0x7EDE89F9
_0800FBDC:
	ldr r4, _0800FC2C
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r5, _0800FC30
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, r8
	ldrh r6, [r0, #0x12]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r1, r8
	ldrh r1, [r1, #0x12]
	cmp r6, r1
	bhi _0800FC40
	ldr r0, _0800FC34
	ldr r0, [r0]
	ldr r1, _0800FC38
	adds r0, r0, r1
	ldr r1, _0800FC3C
	b _0800FC4A
	.align 2, 0
_0800FC2C: .4byte 0x02021AC0
_0800FC30: .4byte 0x02023EC0
_0800FC34: .4byte 0x08DFF6A4
_0800FC38: .4byte 0x00002298
_0800FC3C: .4byte 0x7EDE89F9
_0800FC40:
	ldr r0, _0800FC58
	ldr r0, [r0]
	ldr r1, _0800FC5C
	adds r0, r0, r1
	ldr r1, _0800FC60
_0800FC4A:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FC58: .4byte 0x08DFF6A4
_0800FC5C: .4byte 0x00002298
_0800FC60: .4byte 0x7F5DA53C

	THUMB_FUNC_START sub_800FC64
sub_800FC64: @ 0x0800FC64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0800FCB0
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r7, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r0, _0800FCB4
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r6, r0, r1
	ldr r0, [r6]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0800FCB8
	mov r8, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0800FCC8
	ldr r0, _0800FCBC
	ldr r0, [r0]
	ldr r1, _0800FCC0
	adds r0, r0, r1
	ldr r1, _0800FCC4
	b _0800FDAE
	.align 2, 0
_0800FCB0: .4byte 0x02021C00
_0800FCB4: .4byte 0x02023FD0
_0800FCB8: .4byte 0x02021AD0
_0800FCBC: .4byte 0x08DFF6A4
_0800FCC0: .4byte 0x00002298
_0800FCC4: .4byte 0x7EDE89F9
_0800FCC8:
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FCEC
	ldr r0, _0800FCE0
	ldr r0, [r0]
	ldr r1, _0800FCE4
	adds r0, r0, r1
	ldr r1, _0800FCE8
	b _0800FDAE
	.align 2, 0
_0800FCE0: .4byte 0x08DFF6A4
_0800FCE4: .4byte 0x00002298
_0800FCE8: .4byte 0x7EDE89F9
_0800FCEC:
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #1
	beq _0800FD10
	ldr r0, _0800FD04
	ldr r0, [r0]
	ldr r1, _0800FD08
	adds r0, r0, r1
	ldr r1, _0800FD0C
	b _0800FDAE
	.align 2, 0
_0800FD04: .4byte 0x08DFF6A4
_0800FD08: .4byte 0x00002298
_0800FD0C: .4byte 0x7EDE89F9
_0800FD10:
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FD40
	ldr r0, _0800FD34
	ldr r0, [r0]
	ldr r1, _0800FD38
	adds r0, r0, r1
	ldr r1, _0800FD3C
	b _0800FDAE
	.align 2, 0
_0800FD34: .4byte 0x08DFF6A4
_0800FD38: .4byte 0x00002298
_0800FD3C: .4byte 0x7EDE89F9
_0800FD40:
	ldr r4, _0800FD90
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r5, _0800FD94
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, r8
	ldrh r6, [r0, #0x12]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r1, r8
	ldrh r1, [r1, #0x12]
	cmp r6, r1
	bhi _0800FDA4
	ldr r0, _0800FD98
	ldr r0, [r0]
	ldr r1, _0800FD9C
	adds r0, r0, r1
	ldr r1, _0800FDA0
	b _0800FDAE
	.align 2, 0
_0800FD90: .4byte 0x02021AC0
_0800FD94: .4byte 0x02023EC0
_0800FD98: .4byte 0x08DFF6A4
_0800FD9C: .4byte 0x00002298
_0800FDA0: .4byte 0x7EDE89F9
_0800FDA4:
	ldr r0, _0800FDBC
	ldr r0, [r0]
	ldr r1, _0800FDC0
	adds r0, r0, r1
	ldr r1, _0800FDC4
_0800FDAE:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FDBC: .4byte 0x08DFF6A4
_0800FDC0: .4byte 0x00002298
_0800FDC4: .4byte 0x7F5DA53C

	THUMB_FUNC_START sub_800FDC8
sub_800FDC8: @ 0x0800FDC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800FE1C
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov sb, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	mov sl, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r5, _0800FE20
	mov r8, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r5, r0, r5
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardData
	ldr r1, _0800FE24
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _0800FE34
	ldr r0, _0800FE28
	ldr r0, [r0]
	ldr r2, _0800FE2C
	adds r0, r0, r2
	ldr r1, _0800FE30
	b _0800FF92
	.align 2, 0
_0800FE1C: .4byte 0x02021C00
_0800FE20: .4byte 0x02023FD0
_0800FE24: .4byte 0x02021AD0
_0800FE28: .4byte 0x08DFF6A4
_0800FE2C: .4byte 0x00002298
_0800FE30: .4byte 0x7EDE89F9
_0800FE34:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FE58
	ldr r0, _0800FE4C
	ldr r0, [r0]
	ldr r5, _0800FE50
	adds r0, r0, r5
	ldr r1, _0800FE54
	b _0800FF92
	.align 2, 0
_0800FE4C: .4byte 0x08DFF6A4
_0800FE50: .4byte 0x00002298
_0800FE54: .4byte 0x7EDE89F9
_0800FE58:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #2
	beq _0800FE7C
	ldr r0, _0800FE70
	ldr r0, [r0]
	ldr r1, _0800FE74
	adds r0, r0, r1
	ldr r1, _0800FE78
	b _0800FF92
	.align 2, 0
_0800FE70: .4byte 0x08DFF6A4
_0800FE74: .4byte 0x00002298
_0800FE78: .4byte 0x7EDE89F9
_0800FE7C:
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FEAC
	ldr r0, _0800FEA0
	ldr r0, [r0]
	ldr r2, _0800FEA4
	adds r0, r0, r2
	ldr r1, _0800FEA8
	b _0800FF92
	.align 2, 0
_0800FEA0: .4byte 0x08DFF6A4
_0800FEA4: .4byte 0x00002298
_0800FEA8: .4byte 0x7EDE89F9
_0800FEAC:
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r2, r8
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FEDC
	ldr r0, _0800FED0
	ldr r0, [r0]
	ldr r5, _0800FED4
	adds r0, r0, r5
	ldr r1, _0800FED8
	b _0800FF92
	.align 2, 0
_0800FED0: .4byte 0x08DFF6A4
_0800FED4: .4byte 0x00002298
_0800FED8: .4byte 0x7EDE89F9
_0800FEDC:
	ldr r4, _0800FF30
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0800FF34
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _0800FF38
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _0800FF38
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _0800FF48
	ldr r0, _0800FF3C
	ldr r0, [r0]
	ldr r5, _0800FF40
	adds r0, r0, r5
	ldr r1, _0800FF44
	b _0800FF92
	.align 2, 0
_0800FF30: .4byte 0x02021AC0
_0800FF34: .4byte 0x02023EC0
_0800FF38: .4byte 0x02021AD0
_0800FF3C: .4byte 0x08DFF6A4
_0800FF40: .4byte 0x00002298
_0800FF44: .4byte 0x7EDE89F9
_0800FF48:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]

	THUMB_FUNC_START sub_800FF5C
sub_800FF5C: @ 0x0800FF5C
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _0800FF78
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _0800FF88
	ldr r0, _0800FF7C
	ldr r0, [r0]
	ldr r5, _0800FF80
	adds r0, r0, r5
	ldr r1, _0800FF84
	b _0800FF92
	.align 2, 0
_0800FF78: .4byte 0x02021AD0
_0800FF7C: .4byte 0x08DFF6A4
_0800FF80: .4byte 0x00002298
_0800FF84: .4byte 0x7EDE89F9
_0800FF88:
	ldr r0, _0800FFA4
	ldr r0, [r0]
	ldr r1, _0800FFA8
	adds r0, r0, r1
	ldr r1, _0800FFAC
_0800FF92:
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFA4: .4byte 0x08DFF6A4
_0800FFA8: .4byte 0x00002298
_0800FFAC: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_800FFB0
sub_800FFB0: @ 0x0800FFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08010004
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov sb, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	mov sl, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r5, _08010008
	mov r8, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r5, r0, r5
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardData
	ldr r1, _0801000C
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801001C
	ldr r0, _08010010
	ldr r0, [r0]
	ldr r2, _08010014
	adds r0, r0, r2
	ldr r1, _08010018
	b _0801017A
	.align 2, 0
_08010004: .4byte 0x02021C00
_08010008: .4byte 0x02023FD0
_0801000C: .4byte 0x02021AD0
_08010010: .4byte 0x08DFF6A4
_08010014: .4byte 0x00002298
_08010018: .4byte 0x7EDE89F9
_0801001C:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _08010040
	ldr r0, _08010034
	ldr r0, [r0]
	ldr r5, _08010038
	adds r0, r0, r5
	ldr r1, _0801003C
	b _0801017A
	.align 2, 0
_08010034: .4byte 0x08DFF6A4
_08010038: .4byte 0x00002298
_0801003C: .4byte 0x7EDE89F9
_08010040:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #2
	beq _08010064
	ldr r0, _08010058
	ldr r0, [r0]
	ldr r1, _0801005C
	adds r0, r0, r1
	ldr r1, _08010060
	b _0801017A
	.align 2, 0
_08010058: .4byte 0x08DFF6A4
_0801005C: .4byte 0x00002298
_08010060: .4byte 0x7EDE89F9
_08010064:
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _08010094
	ldr r0, _08010088
	ldr r0, [r0]
	ldr r2, _0801008C
	adds r0, r0, r2
	ldr r1, _08010090
	b _0801017A
	.align 2, 0
_08010088: .4byte 0x08DFF6A4
_0801008C: .4byte 0x00002298
_08010090: .4byte 0x7EDE89F9
_08010094:
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r2, r8
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _080100C4
	ldr r0, _080100B8
	ldr r0, [r0]
	ldr r5, _080100BC
	adds r0, r0, r5
	ldr r1, _080100C0
	b _0801017A
	.align 2, 0
_080100B8: .4byte 0x08DFF6A4
_080100BC: .4byte 0x00002298
_080100C0: .4byte 0x7EDE89F9
_080100C4:
	ldr r4, _08010118
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0801011C
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08010120
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010120
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010130
	ldr r0, _08010124
	ldr r0, [r0]
	ldr r5, _08010128
	adds r0, r0, r5
	ldr r1, _0801012C
	b _0801017A
	.align 2, 0
_08010118: .4byte 0x02021AC0
_0801011C: .4byte 0x02023EC0
_08010120: .4byte 0x02021AD0
_08010124: .4byte 0x08DFF6A4
_08010128: .4byte 0x00002298
_0801012C: .4byte 0x7EDE89F9
_08010130:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010160
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010170
	ldr r0, _08010164
	ldr r0, [r0]
	ldr r5, _08010168
	adds r0, r0, r5
	ldr r1, _0801016C
	b _0801017A
	.align 2, 0
_08010160: .4byte 0x02021AD0
_08010164: .4byte 0x08DFF6A4
_08010168: .4byte 0x00002298
_0801016C: .4byte 0x7EDE89F9
_08010170:
	ldr r0, _0801018C
	ldr r0, [r0]
	ldr r1, _08010190
	adds r0, r0, r1
	ldr r1, _08010194
_0801017A:
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801018C: .4byte 0x08DFF6A4
_08010190: .4byte 0x00002298
_08010194: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_8010198
sub_8010198: @ 0x08010198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _080101FC
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov r8, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r5, r0, #4
	str r5, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp, #4]
	mov sb, r1
	mov r5, sb
	ands r5, r0
	mov sb, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08010200
	adds r5, r0, r1
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardData
	ldr r2, _08010204
	mov sl, r2
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	beq _08010214
	ldr r0, _08010208
	ldr r0, [r0]
	ldr r5, _0801020C
	adds r0, r0, r5
	ldr r1, _08010210
	b _080103BE
	.align 2, 0
_080101FC: .4byte 0x02021C00
_08010200: .4byte 0x02023FD0
_08010204: .4byte 0x02021AD0
_08010208: .4byte 0x08DFF6A4
_0801020C: .4byte 0x00002298
_08010210: .4byte 0x7EDE89F9
_08010214:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _08010238
	ldr r0, _0801022C
	ldr r0, [r0]
	ldr r1, _08010230
	adds r0, r0, r1
	ldr r1, _08010234
	b _080103BE
	.align 2, 0
_0801022C: .4byte 0x08DFF6A4
_08010230: .4byte 0x00002298
_08010234: .4byte 0x7EDE89F9
_08010238:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #3
	beq _0801025C
	ldr r0, _08010250
	ldr r0, [r0]
	ldr r2, _08010254
	adds r0, r0, r2
	ldr r1, _08010258
	b _080103BE
	.align 2, 0
_08010250: .4byte 0x08DFF6A4
_08010254: .4byte 0x00002298
_08010258: .4byte 0x7EDE89F9
_0801025C:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r2, _08010280
	adds r6, r0, r2
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _08010290
	ldr r0, _08010284
	ldr r0, [r0]
	ldr r5, _08010288
	adds r0, r0, r5
	ldr r1, _0801028C
	b _080103BE
	.align 2, 0
_08010280: .4byte 0x02023FD0
_08010284: .4byte 0x08DFF6A4
_08010288: .4byte 0x00002298
_0801028C: .4byte 0x7EDE89F9
_08010290:
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _080102B4
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _080102C4
	ldr r0, _080102B8
	ldr r0, [r0]
	ldr r5, _080102BC
	adds r0, r0, r5
	ldr r1, _080102C0
	b _080103BE
	.align 2, 0
_080102B4: .4byte 0x02023FD0
_080102B8: .4byte 0x08DFF6A4
_080102BC: .4byte 0x00002298
_080102C0: .4byte 0x7EDE89F9
_080102C4:
	ldr r4, _08010318
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0801031C
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _0801032C
	ldr r0, _08010320
	ldr r0, [r0]
	ldr r5, _08010324
	adds r0, r0, r5
	ldr r1, _08010328
	b _080103BE
	.align 2, 0
_08010318: .4byte 0x02021AC0
_0801031C: .4byte 0x02023EC0
_08010320: .4byte 0x08DFF6A4
_08010324: .4byte 0x00002298
_08010328: .4byte 0x7EDE89F9
_0801032C:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010368
	ldr r0, _0801035C
	ldr r0, [r0]
	ldr r5, _08010360
	adds r0, r0, r5
	ldr r1, _08010364
	b _080103BE
	.align 2, 0
_0801035C: .4byte 0x08DFF6A4
_08010360: .4byte 0x00002298
_08010364: .4byte 0x7EDE89F9
_08010368:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	add r0, sb
	lsls r0, r0, #2
	ldr r2, _080103A4
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r0, [r0, #0x12]
	cmp r5, r0
	bhi _080103B4
	ldr r0, _080103A8
	ldr r0, [r0]
	ldr r1, _080103AC
	adds r0, r0, r1
	ldr r1, _080103B0
	b _080103BE
	.align 2, 0
_080103A4: .4byte 0x02023FD0
_080103A8: .4byte 0x08DFF6A4
_080103AC: .4byte 0x00002298
_080103B0: .4byte 0x7EDE89F9
_080103B4:
	ldr r0, _080103D0
	ldr r0, [r0]
	ldr r2, _080103D4
	adds r0, r0, r2
	ldr r1, _080103D8
_080103BE:
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080103D0: .4byte 0x08DFF6A4
_080103D4: .4byte 0x00002298
_080103D8: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_80103DC
sub_80103DC: @ 0x080103DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08010440
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov r8, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r5, r0, #4
	str r5, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp, #4]
	mov sb, r1
	mov r5, sb
	ands r5, r0
	mov sb, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08010444
	adds r5, r0, r1
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardData
	ldr r2, _08010448
	mov sl, r2
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	bne _08010458
	ldr r0, _0801044C
	ldr r0, [r0]
	ldr r5, _08010450
	adds r0, r0, r5
	ldr r1, _08010454
	b _08010602
	.align 2, 0
_08010440: .4byte 0x02021C00
_08010444: .4byte 0x02023FD0
_08010448: .4byte 0x02021AD0
_0801044C: .4byte 0x08DFF6A4
_08010450: .4byte 0x00002298
_08010454: .4byte 0x7EDE89F9
_08010458:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _0801047C
	ldr r0, _08010470
	ldr r0, [r0]
	ldr r1, _08010474
	adds r0, r0, r1
	ldr r1, _08010478
	b _08010602
	.align 2, 0
_08010470: .4byte 0x08DFF6A4
_08010474: .4byte 0x00002298
_08010478: .4byte 0x7EDE89F9
_0801047C:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #3
	beq _080104A0
	ldr r0, _08010494
	ldr r0, [r0]
	ldr r2, _08010498
	adds r0, r0, r2
	ldr r1, _0801049C
	b _08010602
	.align 2, 0
_08010494: .4byte 0x08DFF6A4
_08010498: .4byte 0x00002298
_0801049C: .4byte 0x7EDE89F9
_080104A0:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r2, _080104C4
	adds r6, r0, r2
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _080104D4
	ldr r0, _080104C8
	ldr r0, [r0]
	ldr r5, _080104CC
	adds r0, r0, r5
	ldr r1, _080104D0
	b _08010602
	.align 2, 0
_080104C4: .4byte 0x02023FD0
_080104C8: .4byte 0x08DFF6A4
_080104CC: .4byte 0x00002298
_080104D0: .4byte 0x7EDE89F9
_080104D4:
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _080104F8
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _08010508
	ldr r0, _080104FC
	ldr r0, [r0]
	ldr r5, _08010500
	adds r0, r0, r5
	ldr r1, _08010504
	b _08010602
	.align 2, 0
_080104F8: .4byte 0x02023FD0
_080104FC: .4byte 0x08DFF6A4
_08010500: .4byte 0x00002298
_08010504: .4byte 0x7EDE89F9
_08010508:
	ldr r4, _0801055C
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010560
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010570
	ldr r0, _08010564
	ldr r0, [r0]
	ldr r5, _08010568
	adds r0, r0, r5
	ldr r1, _0801056C
	b _08010602
	.align 2, 0
_0801055C: .4byte 0x02021AC0
_08010560: .4byte 0x02023EC0
_08010564: .4byte 0x08DFF6A4
_08010568: .4byte 0x00002298
_0801056C: .4byte 0x7EDE89F9
_08010570:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _080105AC
	ldr r0, _080105A0
	ldr r0, [r0]
	ldr r5, _080105A4
	adds r0, r0, r5
	ldr r1, _080105A8
	b _08010602
	.align 2, 0
_080105A0: .4byte 0x08DFF6A4
_080105A4: .4byte 0x00002298
_080105A8: .4byte 0x7EDE89F9
_080105AC:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	add r0, sb
	lsls r0, r0, #2
	ldr r2, _080105E8
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r0, [r0, #0x12]
	cmp r5, r0
	bhi _080105F8
	ldr r0, _080105EC
	ldr r0, [r0]
	ldr r1, _080105F0
	adds r0, r0, r1
	ldr r1, _080105F4
	b _08010602
	.align 2, 0
_080105E8: .4byte 0x02023FD0
_080105EC: .4byte 0x08DFF6A4
_080105F0: .4byte 0x00002298
_080105F4: .4byte 0x7EDE89F9
_080105F8:
	ldr r0, _08010614
	ldr r0, [r0]
	ldr r2, _08010618
	adds r0, r0, r2
	ldr r1, _0801061C
_08010602:
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010614: .4byte 0x08DFF6A4
_08010618: .4byte 0x00002298
_0801061C: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_8010620
sub_8010620: @ 0x08010620
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08010674
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r4, _08010678
	ldr r0, _0801067C
	mov sb, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r1, _08010680
	adds r1, #0xf0
	mov r8, r1
	ldrb r1, [r1]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _08010684
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08010694
	ldr r0, _08010688
	ldr r0, [r0]
	ldr r1, _0801068C
	adds r0, r0, r1
	ldr r1, _08010690
	b _0801077C
	.align 2, 0
_08010674: .4byte 0x02021C00
_08010678: .4byte 0x02021AC0
_0801067C: .4byte 0x02023FD0
_08010680: .4byte 0x02023EC0
_08010684: .4byte 0x02021AD0
_08010688: .4byte 0x08DFF6A4
_0801068C: .4byte 0x00002298
_08010690: .4byte 0x7EDE89F9
_08010694:
	ldrh r6, [r1, #0x12]
	ldrh r7, [r1, #0x14]
	cmp r6, #0
	bne _080106B4
	ldr r0, _080106A8
	ldr r0, [r0]
	ldr r2, _080106AC
	adds r0, r0, r2
	ldr r1, _080106B0
	b _0801077C
	.align 2, 0
_080106A8: .4byte 0x08DFF6A4
_080106AC: .4byte 0x00002298
_080106B0: .4byte 0x7EDE89FB
_080106B4:
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _080106F4
	cmp r6, r7
	bhi _08010772
	ldr r0, _080106D0
	ldr r0, [r0]
	ldr r2, _080106D4
	adds r0, r0, r2
	ldr r1, _080106D8
	b _0801077C
	.align 2, 0
_080106D0: .4byte 0x08DFF6A4
_080106D4: .4byte 0x00002298
_080106D8: .4byte 0x7EDE89FB
_080106DC:
	ldr r0, _080106E8
	ldr r0, [r0]
	ldr r1, _080106EC
	adds r0, r0, r1
	ldr r1, _080106F0
	b _0801077C
	.align 2, 0
_080106E8: .4byte 0x08DFF6A4
_080106EC: .4byte 0x00002298
_080106F0: .4byte 0x7EDE89FB
_080106F4:
	movs r5, #0
	movs r2, #0x14
	add sb, r2
_080106FA:
	lsls r0, r5, #2
	mov r1, sb
	adds r3, r0, r1
	ldr r0, [r3]
	ldrh r2, [r0]
	cmp r2, #0
	beq _08010768
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010750
	strh r2, [r4]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08010740
	ldrh r0, [r0, #0x12]
	cmp r6, r0
	bls _080106DC
	cmp r7, r0
	blo _08010768
	ldr r0, _08010744
	ldr r0, [r0]
	ldr r1, _08010748
	adds r0, r0, r1
	ldr r1, _0801074C
	b _0801077C
	.align 2, 0
_08010740: .4byte 0x02021AD0
_08010744: .4byte 0x08DFF6A4
_08010748: .4byte 0x00002298
_0801074C: .4byte 0x7EDE89FB
_08010750:
	ldr r0, _0801075C
	ldr r0, [r0]
	ldr r2, _08010760
	adds r0, r0, r2
	ldr r1, _08010764
	b _0801077C
	.align 2, 0
_0801075C: .4byte 0x08DFF6A4
_08010760: .4byte 0x00002298
_08010764: .4byte 0x7EDE89FB
_08010768:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080106FA
_08010772:
	ldr r0, _0801078C
	ldr r0, [r0]
	ldr r1, _08010790
	adds r0, r0, r1
	ldr r1, _08010794
_0801077C:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801078C: .4byte 0x08DFF6A4
_08010790: .4byte 0x00002298
_08010794: .4byte 0x7EDE89FD

	THUMB_FUNC_START sub_8010798
sub_8010798: @ 0x08010798
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080107EC
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r4, _080107F0
	ldr r0, _080107F4
	mov sb, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r1, _080107F8
	adds r1, #0xf0
	mov r8, r1
	ldrb r1, [r1]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _080107FC
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801080C
	ldr r0, _08010800
	ldr r0, [r0]
	ldr r1, _08010804
	adds r0, r0, r1
	ldr r1, _08010808
	b _080108F4
	.align 2, 0
_080107EC: .4byte 0x02021C00
_080107F0: .4byte 0x02021AC0
_080107F4: .4byte 0x02023FD0
_080107F8: .4byte 0x02023EC0
_080107FC: .4byte 0x02021AD0
_08010800: .4byte 0x08DFF6A4
_08010804: .4byte 0x00002298
_08010808: .4byte 0x7EDE89F9
_0801080C:
	ldrh r6, [r1, #0x12]
	ldrh r7, [r1, #0x14]
	cmp r6, #0
	bne _0801082C
	ldr r0, _08010820
	ldr r0, [r0]
	ldr r2, _08010824
	adds r0, r0, r2
	ldr r1, _08010828
	b _080108F4
	.align 2, 0
_08010820: .4byte 0x08DFF6A4
_08010824: .4byte 0x00002298
_08010828: .4byte 0x7EDE89FB
_0801082C:
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _0801086C
	cmp r6, r7
	bhi _080108EA
	ldr r0, _08010848
	ldr r0, [r0]
	ldr r2, _0801084C
	adds r0, r0, r2
	ldr r1, _08010850
	b _080108F4
	.align 2, 0
_08010848: .4byte 0x08DFF6A4
_0801084C: .4byte 0x00002298
_08010850: .4byte 0x7EDE89FB
_08010854:
	ldr r0, _08010860
	ldr r0, [r0]
	ldr r1, _08010864
	adds r0, r0, r1
	ldr r1, _08010868
	b _080108F4
	.align 2, 0
_08010860: .4byte 0x08DFF6A4
_08010864: .4byte 0x00002298
_08010868: .4byte 0x7EDE89FB
_0801086C:
	movs r5, #0
	movs r2, #0x14
	add sb, r2
_08010872:
	lsls r0, r5, #2
	mov r1, sb
	adds r3, r0, r1
	ldr r0, [r3]
	ldrh r2, [r0]
	cmp r2, #0
	beq _080108E0
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080108C8
	strh r2, [r4]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080108B8
	ldrh r0, [r0, #0x12]
	cmp r6, r0
	bls _08010854
	cmp r7, r0
	blo _080108E0
	ldr r0, _080108BC
	ldr r0, [r0]
	ldr r1, _080108C0
	adds r0, r0, r1
	ldr r1, _080108C4
	b _080108F4
	.align 2, 0
_080108B8: .4byte 0x02021AD0
_080108BC: .4byte 0x08DFF6A4
_080108C0: .4byte 0x00002298
_080108C4: .4byte 0x7EDE89FB
_080108C8:
	ldr r0, _080108D4
	ldr r0, [r0]
	ldr r2, _080108D8
	adds r0, r0, r2
	ldr r1, _080108DC
	b _080108F4
	.align 2, 0
_080108D4: .4byte 0x08DFF6A4
_080108D8: .4byte 0x00002298
_080108DC: .4byte 0x7EDE89FB
_080108E0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08010872
_080108EA:
	ldr r0, _08010904
	ldr r0, [r0]
	ldr r1, _08010908
	adds r0, r0, r1
	ldr r1, _0801090C
_080108F4:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010904: .4byte 0x08DFF6A4
_08010908: .4byte 0x00002298
_0801090C: .4byte 0x7EDE89FD

	THUMB_FUNC_START sub_8010910
sub_8010910: @ 0x08010910
	push {r4, lr}
	ldr r0, _08010964
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010968
	ldr r3, _0801096C
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010970
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, _08010974
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	bne _08010954
	ldrh r0, [r3, #0x12]
	cmp r0, #0
	bne _08010984
_08010954:
	ldr r0, _08010978
	ldr r0, [r0]
	ldr r1, _0801097C
	adds r0, r0, r1
	ldr r1, _08010980
	str r1, [r0]
	b _08010996
	.align 2, 0
_08010964: .4byte 0x02021C00
_08010968: .4byte 0x02021AC0
_0801096C: .4byte 0x02023FD0
_08010970: .4byte 0x02023EC0
_08010974: .4byte 0x02021AD0
_08010978: .4byte 0x08DFF6A4
_0801097C: .4byte 0x00002298
_08010980: .4byte 0x7EDE89F9
_08010984:
	ldr r0, _0801099C
	ldr r1, [r0]
	ldr r0, _080109A0
	adds r1, r1, r0
	ldr r2, _080109A4
	str r2, [r1]
	ldrh r0, [r3, #0x12]
	adds r0, r0, r2
	str r0, [r1]
_08010996:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801099C: .4byte 0x08DFF6A4
_080109A0: .4byte 0x00002298
_080109A4: .4byte 0x7EF1C3F6

	THUMB_FUNC_START sub_80109A8
sub_80109A8: @ 0x080109A8
	push {r4, lr}
	ldr r0, _080109FC
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010A00
	ldr r3, _08010A04
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010A08
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, _08010A0C
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	beq _080109EC
	ldrh r0, [r3, #0x12]
	cmp r0, #0
	bne _08010A1C
_080109EC:
	ldr r0, _08010A10
	ldr r0, [r0]
	ldr r1, _08010A14
	adds r0, r0, r1
	ldr r1, _08010A18
	str r1, [r0]
	b _08010A2E
	.align 2, 0
_080109FC: .4byte 0x02021C00
_08010A00: .4byte 0x02021AC0
_08010A04: .4byte 0x02023FD0
_08010A08: .4byte 0x02023EC0
_08010A0C: .4byte 0x02021AD0
_08010A10: .4byte 0x08DFF6A4
_08010A14: .4byte 0x00002298
_08010A18: .4byte 0x7EDE89F9
_08010A1C:
	ldr r0, _08010A34
	ldr r1, [r0]
	ldr r0, _08010A38
	adds r1, r1, r0
	ldr r2, _08010A3C
	str r2, [r1]
	ldrh r0, [r3, #0x12]
	adds r0, r0, r2
	str r0, [r1]
_08010A2E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010A34: .4byte 0x08DFF6A4
_08010A38: .4byte 0x00002298
_08010A3C: .4byte 0x7EF1C3F6

	THUMB_FUNC_START sub_8010A40
sub_8010A40: @ 0x08010A40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _08010A8C
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r3, r0, #4
	mov r8, r3
	adds r6, r2, #0
	ands r6, r0
	ldr r0, _08010A90
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r7, _08010A94
	ldrb r0, [r7, #0x1e]
	cmp r0, #0
	beq _08010AA4
	ldr r0, _08010A98
	ldr r0, [r0]
	ldr r1, _08010A9C
	adds r0, r0, r1
	ldr r1, _08010AA0
	str r1, [r0]
	b _08010AE8
	.align 2, 0
_08010A8C: .4byte 0x02021C00
_08010A90: .4byte 0x02023FD0
_08010A94: .4byte 0x02021AD0
_08010A98: .4byte 0x08DFF6A4
_08010A9C: .4byte 0x00002298
_08010AA0: .4byte 0x7EDE89F9
_08010AA4:
	ldr r5, _08010AF4
	mov r3, r8
	lsls r4, r3, #2
	add r4, r8
	adds r4, r4, r6
	lsls r4, r4, #2
	add r4, sb
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, _08010AF8
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _08010AFC
	ldr r2, [r0]
	ldr r0, _08010B00
	adds r3, r2, r0
	ldrh r0, [r7, #0x12]
	ldrh r1, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08010B04
	adds r2, r2, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	str r0, [r2]
_08010AE8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010AF4: .4byte 0x02021AC0
_08010AF8: .4byte 0x02023EC0
_08010AFC: .4byte 0x08DFF6A4
_08010B00: .4byte 0x00002298
_08010B04: .4byte 0x0000229C

	THUMB_FUNC_START sub_8010B08
sub_8010B08: @ 0x08010B08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08010B74
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	str r6, [sp, #4]
	movs r1, #0xf
	adds r7, r1, #0
	ands r7, r0
	str r7, [sp]
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	str r5, [sp, #8]
	adds r4, r1, #0
	ands r4, r0
	ldr r0, _08010B78
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _08010B7C
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	ldr r2, _08010B80
	mov sl, r2
	cmp r0, sl
	bne _08010B46
	b _08010C66
_08010B46:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08010B94
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08010B84
	mov r4, r8
	ldr r0, [r4]
	add r0, sb
	movs r1, #0
	str r1, [r0]
	b _08010C66
	.align 2, 0
_08010B74: .4byte 0x02021C00
_08010B78: .4byte 0x08DFF6A4
_08010B7C: .4byte 0x00002298
_08010B80: .4byte 0x7EDE89F9
_08010B84:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	ldr r1, _08010B90
	str r1, [r0]
	b _08010C66
	.align 2, 0
_08010B90: .4byte 0x7FFFFFFF
_08010B94:
	ldr r3, _08010BC0
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010BE0
	mov r4, r8
	ldr r2, [r4]
	ldr r4, _08010BC4
	adds r0, r2, r4
	ldr r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08010BC8
	mov r1, sb
	adds r0, r2, r1
	b _08010C62
	.align 2, 0
_08010BC0: .4byte 0x02023FD0
_08010BC4: .4byte 0x0000229C
_08010BC8:
	ldr r4, _08010BDC
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	b _08010BF6
	.align 2, 0
_08010BDC: .4byte 0x02021AC0
_08010BE0:
	lsls r0, r6, #2
	adds r0, r0, r6
	ldr r2, [sp]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010C34
	ldr r4, _08010C24
_08010BF6:
	strh r0, [r4]
	ldr r0, _08010C28
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r4, r8
	ldr r2, [r4]
	add r2, sb
	ldr r0, [r2]
	ldr r1, _08010C2C
	ldrh r1, [r1, #0x12]
	subs r0, r0, r1
	ldr r1, _08010C30
	adds r0, r0, r1
	str r0, [r2]
	b _08010C66
	.align 2, 0
_08010C24: .4byte 0x02021AC0
_08010C28: .4byte 0x02023EC0
_08010C2C: .4byte 0x02021AD0
_08010C30: .4byte 0x7EF0A113
_08010C34:
	ldr r0, [sp, #4]
	bl sub_80437D4
	adds r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_80437D4
	cmp r4, r0
	ble _08010C5C
	mov r2, r8
	ldr r1, [r2]
	add r1, sb
	ldr r0, [r1]
	ldr r4, _08010C58
	adds r0, r0, r4
	str r0, [r1]
	b _08010C66
	.align 2, 0
_08010C58: .4byte 0x7EEE8FA5
_08010C5C:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
_08010C62:
	mov r2, sl
	str r2, [r0]
_08010C66:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8010C78
sub_8010C78: @ 0x08010C78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _08010CC4
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r3, r0, #4
	mov r8, r3
	adds r6, r2, #0
	ands r6, r0
	ldr r0, _08010CC8
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r7, _08010CCC
	ldrb r0, [r7, #0x1e]
	cmp r0, #0
	bne _08010CDC
	ldr r0, _08010CD0
	ldr r0, [r0]
	ldr r1, _08010CD4
	adds r0, r0, r1
	ldr r1, _08010CD8
	str r1, [r0]
	b _08010D20
	.align 2, 0
_08010CC4: .4byte 0x02021C00
_08010CC8: .4byte 0x02023FD0
_08010CCC: .4byte 0x02021AD0
_08010CD0: .4byte 0x08DFF6A4
_08010CD4: .4byte 0x00002298
_08010CD8: .4byte 0x7EDE89F9
_08010CDC:
	ldr r5, _08010D2C
	mov r3, r8
	lsls r4, r3, #2
	add r4, r8
	adds r4, r4, r6
	lsls r4, r4, #2
	add r4, sb
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, _08010D30
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _08010D34
	ldr r2, [r0]
	ldr r0, _08010D38
	adds r3, r2, r0
	ldrh r0, [r7, #0x12]
	ldrh r1, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08010D3C
	adds r2, r2, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	str r0, [r2]
_08010D20:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010D2C: .4byte 0x02021AC0
_08010D30: .4byte 0x02023EC0
_08010D34: .4byte 0x08DFF6A4
_08010D38: .4byte 0x00002298
_08010D3C: .4byte 0x0000229C

	THUMB_FUNC_START sub_8010D40
sub_8010D40: @ 0x08010D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08010DAC
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	str r6, [sp, #4]
	movs r1, #0xf
	adds r7, r1, #0
	ands r7, r0
	str r7, [sp]
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	str r5, [sp, #8]
	adds r4, r1, #0
	ands r4, r0
	ldr r0, _08010DB0
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _08010DB4
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	ldr r2, _08010DB8
	mov sl, r2
	cmp r0, sl
	bne _08010D7E
	b _08010E9E
_08010D7E:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08010DCC
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08010DBC
	mov r4, r8
	ldr r0, [r4]
	add r0, sb
	movs r1, #0
	str r1, [r0]
	b _08010E9E
	.align 2, 0
_08010DAC: .4byte 0x02021C00
_08010DB0: .4byte 0x08DFF6A4
_08010DB4: .4byte 0x00002298
_08010DB8: .4byte 0x7EDE89F9
_08010DBC:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	ldr r1, _08010DC8
	str r1, [r0]
	b _08010E9E
	.align 2, 0
_08010DC8: .4byte 0x7FFFFFFF
_08010DCC:
	ldr r3, _08010DF8
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010E18
	mov r4, r8
	ldr r2, [r4]
	ldr r4, _08010DFC
	adds r0, r2, r4
	ldr r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08010E00
	mov r1, sb
	adds r0, r2, r1
	b _08010E9A
	.align 2, 0
_08010DF8: .4byte 0x02023FD0
_08010DFC: .4byte 0x0000229C
_08010E00:
	ldr r4, _08010E14
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	b _08010E2E
	.align 2, 0
_08010E14: .4byte 0x02021AC0
_08010E18:
	lsls r0, r6, #2
	adds r0, r0, r6
	ldr r2, [sp]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010E6C
	ldr r4, _08010E5C
_08010E2E:
	strh r0, [r4]
	ldr r0, _08010E60
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r4, r8
	ldr r2, [r4]
	add r2, sb
	ldr r0, [r2]
	ldr r1, _08010E64
	ldrh r1, [r1, #0x12]
	subs r0, r0, r1
	ldr r1, _08010E68
	adds r0, r0, r1
	str r0, [r2]
	b _08010E9E
	.align 2, 0
_08010E5C: .4byte 0x02021AC0
_08010E60: .4byte 0x02023EC0
_08010E64: .4byte 0x02021AD0
_08010E68: .4byte 0x7EF0A113
_08010E6C:
	ldr r0, [sp, #4]
	bl sub_80437D4
	adds r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_80437D4
	cmp r4, r0
	ble _08010E94
	mov r2, r8
	ldr r1, [r2]
	add r1, sb
	ldr r0, [r1]
	ldr r4, _08010E90
	adds r0, r0, r4
	str r0, [r1]
	b _08010E9E
	.align 2, 0
_08010E90: .4byte 0x7EEE8FA5
_08010E94:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
_08010E9A:
	mov r2, sl
	str r2, [r0]
_08010E9E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8010EB0
sub_8010EB0: @ 0x08010EB0
	push {r4, lr}
	ldr r0, _08010EF8
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010EFC
	ldr r3, _08010F00
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010F04
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010F08
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	beq _08010F14
	ldr r0, _08010F0C
	ldr r0, [r0]
	ldr r1, _08010F10
	adds r0, r0, r1
	b _08010F22
	.align 2, 0
_08010EF8: .4byte 0x02021C00
_08010EFC: .4byte 0x02021AC0
_08010F00: .4byte 0x02023FD0
_08010F04: .4byte 0x02023EC0
_08010F08: .4byte 0x02021AD0
_08010F0C: .4byte 0x08DFF6A4
_08010F10: .4byte 0x00002298
_08010F14:
	ldrh r0, [r2, #0x12]
	cmp r0, #0
	bne _08010F34
	ldr r0, _08010F28
	ldr r0, [r0]
	ldr r2, _08010F2C
	adds r0, r0, r2
_08010F22:
	ldr r1, _08010F30
	str r1, [r0]
	b _08010F44
	.align 2, 0
_08010F28: .4byte 0x08DFF6A4
_08010F2C: .4byte 0x00002298
_08010F30: .4byte 0x7EDE89F9
_08010F34:
	ldr r0, _08010F4C
	ldr r1, [r0]
	ldr r0, _08010F50
	adds r1, r1, r0
	ldrh r0, [r2, #0x12]
	ldr r2, _08010F54
	adds r0, r0, r2
	str r0, [r1]
_08010F44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F4C: .4byte 0x08DFF6A4
_08010F50: .4byte 0x00002298
_08010F54: .4byte 0x7EEB5B4A

	THUMB_FUNC_START sub_8010F58
sub_8010F58: @ 0x08010F58
	push {r4, lr}
	ldr r0, _08010FA0
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010FA4
	ldr r3, _08010FA8
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010FAC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010FB0
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	bne _08010FBC
	ldr r0, _08010FB4
	ldr r0, [r0]
	ldr r1, _08010FB8
	adds r0, r0, r1
	b _08010FCA
	.align 2, 0
_08010FA0: .4byte 0x02021C00
_08010FA4: .4byte 0x02021AC0
_08010FA8: .4byte 0x02023FD0
_08010FAC: .4byte 0x02023EC0
_08010FB0: .4byte 0x02021AD0
_08010FB4: .4byte 0x08DFF6A4
_08010FB8: .4byte 0x00002298
_08010FBC:
	ldrh r0, [r2, #0x12]
	cmp r0, #0
	bne _08010FDC
	ldr r0, _08010FD0
	ldr r0, [r0]
	ldr r2, _08010FD4
	adds r0, r0, r2
_08010FCA:
	ldr r1, _08010FD8
	str r1, [r0]
	b _08010FEC
	.align 2, 0
_08010FD0: .4byte 0x08DFF6A4
_08010FD4: .4byte 0x00002298
_08010FD8: .4byte 0x7EDE89F9
_08010FDC:
	ldr r0, _08010FF4
	ldr r1, [r0]
	ldr r0, _08010FF8
	adds r1, r1, r0
	ldrh r0, [r2, #0x12]
	ldr r2, _08010FFC
	adds r0, r0, r2
	str r0, [r1]
_08010FEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010FF4: .4byte 0x08DFF6A4
_08010FF8: .4byte 0x00002298
_08010FFC: .4byte 0x7EEB5B4A
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xFA, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8011040
sub_8011040: @ 0x08011040
	push {r4, lr}
	ldr r4, _0801106C
	ldr r0, [r4]
	ldr r1, _08011070
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011074
	cmp r1, r0
	beq _08011064
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011070
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_08011064:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801106C: .4byte 0x08DFF6A4
_08011070: .4byte 0x00002298
_08011074: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011078
sub_8011078: @ 0x08011078
	push {r4, lr}
	ldr r4, _080110A4
	ldr r0, [r4]
	ldr r1, _080110A8
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080110AC
	cmp r1, r0
	beq _0801109C
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080110A8
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0801109C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110A4: .4byte 0x08DFF6A4
_080110A8: .4byte 0x00002298
_080110AC: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80110B0
sub_80110B0: @ 0x080110B0
	push {r4, lr}
	ldr r4, _080110DC
	ldr r0, [r4]
	ldr r1, _080110E0
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080110E4
	cmp r1, r0
	beq _080110D4
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080110E0
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_080110D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110DC: .4byte 0x08DFF6A4
_080110E0: .4byte 0x00002298
_080110E4: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80110E8
sub_80110E8: @ 0x080110E8
	push {r4, lr}
	ldr r4, _08011114
	ldr r0, [r4]
	ldr r1, _08011118
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0801111C
	cmp r1, r0
	beq _0801110C
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011118
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0801110C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011114: .4byte 0x08DFF6A4
_08011118: .4byte 0x00002298
_0801111C: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011120
sub_8011120: @ 0x08011120
	push {lr}
	ldr r0, _08011154
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _08011158
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801115C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0801116C
	ldr r0, _08011160
	ldr r0, [r0]
	ldr r1, _08011164
	adds r0, r0, r1
	ldr r1, _08011168
	b _08011176
	.align 2, 0
_08011154: .4byte 0x02021C00
_08011158: .4byte 0x02023FD0
_0801115C: .4byte 0x02021AD0
_08011160: .4byte 0x08DFF6A4
_08011164: .4byte 0x00002298
_08011168: .4byte 0x7EDE89F9
_0801116C:
	ldr r0, _0801117C
	ldr r0, [r0]
	ldr r1, _08011180
	adds r0, r0, r1
	ldr r1, _08011184
_08011176:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0801117C: .4byte 0x08DFF6A4
_08011180: .4byte 0x00002298
_08011184: .4byte 0x7EDE89FC
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8011190
sub_8011190: @ 0x08011190
	push {r4, r5, lr}
	ldr r4, _080111CC
	ldr r0, [r4]
	ldr r5, _080111D0
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, _080111D4
	cmp r1, r0
	beq _080111E0
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080111E0
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080111D8
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #0
	b _080111DE
	.align 2, 0
_080111CC: .4byte 0x08DFF6A4
_080111D0: .4byte 0x00002298
_080111D4: .4byte 0x7EDE89F9
_080111D8:
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, _080111E8
_080111DE:
	str r1, [r0]
_080111E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080111E8: .4byte 0x7FFFFFFF
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80111F0
sub_80111F0: @ 0x080111F0
	push {lr}
	bl sub_8010910
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80111FC
sub_80111FC: @ 0x080111FC
	push {r4, lr}
	ldr r4, _08011238
	ldr r0, [r4]
	ldr r1, _0801123C
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011240
	cmp r1, r0
	beq _0801124E
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801124E
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08011244
	ldr r0, [r4]
	ldr r1, _0801123C
	adds r0, r0, r1
	movs r1, #0
	b _0801124C
	.align 2, 0
_08011238: .4byte 0x08DFF6A4
_0801123C: .4byte 0x00002298
_08011240: .4byte 0x7EDE89F9
_08011244:
	ldr r0, [r4]
	ldr r1, _08011254
	adds r0, r0, r1
	ldr r1, _08011258
_0801124C:
	str r1, [r0]
_0801124E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011254: .4byte 0x00002298
_08011258: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_801125C
sub_801125C: @ 0x0801125C
	push {lr}
	bl sub_8010A40
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011268
sub_8011268: @ 0x08011268
	push {lr}
	bl sub_8010B08
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011274
sub_8011274: @ 0x08011274
	push {lr}
	bl sub_8010EB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8011288
sub_8011288: @ 0x08011288
	push {r4, lr}
	ldr r4, _080112B4
	ldr r0, [r4]
	ldr r1, _080112B8
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080112BC
	cmp r1, r0
	beq _080112AC
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080112B8
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_080112AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112B4: .4byte 0x08DFF6A4
_080112B8: .4byte 0x00002298
_080112BC: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80112C0
sub_80112C0: @ 0x080112C0
	push {r4, lr}
	ldr r4, _080112EC
	ldr r0, [r4]
	ldr r1, _080112F0
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080112F4
	cmp r1, r0
	beq _080112E4
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080112F0
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_080112E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112EC: .4byte 0x08DFF6A4
_080112F0: .4byte 0x00002298
_080112F4: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80112F8
sub_80112F8: @ 0x080112F8
	push {r4, lr}
	ldr r4, _08011324
	ldr r0, [r4]
	ldr r1, _08011328
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0801132C
	cmp r1, r0
	beq _0801131C
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011328
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0801131C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011324: .4byte 0x08DFF6A4
_08011328: .4byte 0x00002298
_0801132C: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011330
sub_8011330: @ 0x08011330
	push {r4, lr}
	ldr r4, _0801135C
	ldr r0, [r4]
	ldr r1, _08011360
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011364
	cmp r1, r0
	beq _08011354
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011360
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_08011354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801135C: .4byte 0x08DFF6A4
_08011360: .4byte 0x00002298
_08011364: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011368
sub_8011368: @ 0x08011368
	push {lr}
	ldr r0, _0801139C
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _080113A0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _080113A4
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _080113B4
	ldr r0, _080113A8
	ldr r0, [r0]
	ldr r1, _080113AC
	adds r0, r0, r1
	ldr r1, _080113B0
	b _080113BE
	.align 2, 0
_0801139C: .4byte 0x02021C00
_080113A0: .4byte 0x02023FD0
_080113A4: .4byte 0x02021AD0
_080113A8: .4byte 0x08DFF6A4
_080113AC: .4byte 0x00002298
_080113B0: .4byte 0x7EDE89F9
_080113B4:
	ldr r0, _080113C4
	ldr r0, [r0]
	ldr r1, _080113C8
	adds r0, r0, r1
	ldr r1, _080113CC
_080113BE:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080113C4: .4byte 0x08DFF6A4
_080113C8: .4byte 0x00002298
_080113CC: .4byte 0x7EDE89FC
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80113D8
sub_80113D8: @ 0x080113D8
	push {r4, r5, lr}
	ldr r4, _08011414
	ldr r0, [r4]
	ldr r5, _08011418
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, _0801141C
	cmp r1, r0
	beq _08011428
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08011428
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08011420
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #0
	b _08011426
	.align 2, 0
_08011414: .4byte 0x08DFF6A4
_08011418: .4byte 0x00002298
_0801141C: .4byte 0x7EDE89F9
_08011420:
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, _08011430
_08011426:
	str r1, [r0]
_08011428:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011430: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_8011434
sub_8011434: @ 0x08011434
	push {lr}
	bl sub_80109A8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011440
sub_8011440: @ 0x08011440
	push {r4, lr}
	ldr r4, _0801147C
	ldr r0, [r4]
	ldr r1, _08011480
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011484
	cmp r1, r0
	beq _08011492
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08011492
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08011488
	ldr r0, [r4]
	ldr r1, _08011480
	adds r0, r0, r1
	movs r1, #0
	b _08011490
	.align 2, 0
_0801147C: .4byte 0x08DFF6A4
_08011480: .4byte 0x00002298
_08011484: .4byte 0x7EDE89F9
_08011488:
	ldr r0, [r4]
	ldr r1, _08011498
	adds r0, r0, r1
	ldr r1, _0801149C
_08011490:
	str r1, [r0]
_08011492:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011498: .4byte 0x00002298
_0801149C: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_80114A0
sub_80114A0: @ 0x080114A0
	push {lr}
	bl sub_8010C78
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80114AC
sub_80114AC: @ 0x080114AC
	push {lr}
	bl sub_8010D40
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80114BC
sub_80114BC: @ 0x080114BC
	push {lr}
	bl sub_8010F58
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x0A, 0x48, 0x0F, 0x21
	.byte 0xC0, 0x78, 0x02, 0x09, 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00
	.byte 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49
	.byte 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x3F, 0x5B, 0xEB, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011528
sub_8011528: @ 0x08011528
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08011574
	ldrb r0, [r2, #2]
	lsrs r5, r0, #4
	movs r1, #0xf
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r6, r1, #0
	ands r6, r0
	ldr r2, _08011578
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	ldr r1, _0801157C
	cmp r0, r1
	beq _0801158C
	adds r0, r2, #0
	adds r0, #0x3c
	bl sub_80433E4
	cmp r0, #0
	bne _0801158C
	ldr r0, _08011580
	ldr r0, [r0]
	ldr r1, _08011584
	adds r0, r0, r1
	ldr r1, _08011588
	b _0801161E
	.align 2, 0
_08011574: .4byte 0x02021C00
_08011578: .4byte 0x02023FD0
_0801157C: .4byte 0x00000247
_08011580: .4byte 0x08DFF6A4
_08011584: .4byte 0x00002298
_08011588: .4byte 0x7EDE89F9
_0801158C:
	ldr r0, _080115B4
	adds r7, r0, #0
	subs r7, #0x3c
	lsls r1, r5, #2
	adds r1, r1, r5
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r1, [r1]
	ldrh r1, [r1]
	bl sub_80433E4
	cmp r0, #0
	ble _080115C4
	ldr r0, _080115B8
	ldr r0, [r0]
	ldr r2, _080115BC
	adds r0, r0, r2
	ldr r1, _080115C0
	b _0801161E
	.align 2, 0
_080115B4: .4byte 0x0202400C
_080115B8: .4byte 0x08DFF6A4
_080115BC: .4byte 0x00002298
_080115C0: .4byte 0x7EDE89F9
_080115C4:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	bne _080115F0
	ldr r0, _080115E4
	ldr r0, [r0]
	ldr r2, _080115E8
	adds r0, r0, r2
	ldr r1, _080115EC
	b _0801161E
	.align 2, 0
_080115E4: .4byte 0x08DFF6A4
_080115E8: .4byte 0x00002298
_080115EC: .4byte 0x7EEB5B43
_080115F0:
	ldrh r0, [r1]
	bl sub_803EFAC
	cmp r0, #0
	ble _08011614
	ldr r0, _08011608
	ldr r0, [r0]
	ldr r1, _0801160C
	adds r0, r0, r1
	ldr r1, _08011610
	b _0801161E
	.align 2, 0
_08011608: .4byte 0x08DFF6A4
_0801160C: .4byte 0x00002298
_08011610: .4byte 0x7EDE89F9
_08011614:
	ldr r0, _0801162C
	ldr r0, [r0]
	ldr r2, _08011630
	adds r0, r0, r2
	ldr r1, _08011634
_0801161E:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801162C: .4byte 0x08DFF6A4
_08011630: .4byte 0x00002298
_08011634: .4byte 0x7EEB5B42
	.byte 0x0A, 0x48, 0x0F, 0x21, 0xC0, 0x78, 0x02, 0x09
	.byte 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x00, 0x88, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49
	.byte 0x0F, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x3F, 0x5B, 0xEB, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x0A, 0x48, 0x0F, 0x21, 0xC0, 0x78, 0x02, 0x09, 0x01, 0x40, 0x09, 0x4B
	.byte 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28
	.byte 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF8, 0xFF, 0xFF, 0x7F, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_80116F0
sub_80116F0: @ 0x080116F0
	push {r4, r5, r6, r7, lr}
	ldr r3, _08011740
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _08011744
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08011748
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _08011758
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08011758
	ldr r0, _0801174C
	ldr r0, [r0]
	ldr r1, _08011750
	adds r0, r0, r1
	ldr r1, _08011754
	b _08011762
	.align 2, 0
_08011740: .4byte 0x02021C00
_08011744: .4byte 0x02023FD0
_08011748: .4byte 0x02021AD0
_0801174C: .4byte 0x08DFF6A4
_08011750: .4byte 0x00002298
_08011754: .4byte 0x7FFFFFF7
_08011758:
	ldr r0, _0801176C
	ldr r0, [r0]
	ldr r1, _08011770
	adds r0, r0, r1
	ldr r1, _08011774
_08011762:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801176C: .4byte 0x08DFF6A4
_08011770: .4byte 0x00002298
_08011774: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011778
sub_8011778: @ 0x08011778
	push {r4, r5, r6, r7, lr}
	ldr r3, _080117B8
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _080117BC
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _080117C0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _080117D0
	ldr r0, _080117C4
	ldr r0, [r0]
	ldr r1, _080117C8
	adds r0, r0, r1
	ldr r1, _080117CC
	b _08011806
	.align 2, 0
_080117B8: .4byte 0x02021C00
_080117BC: .4byte 0x02023FD0
_080117C0: .4byte 0x02021AD0
_080117C4: .4byte 0x08DFF6A4
_080117C8: .4byte 0x00002298
_080117CC: .4byte 0x7EDE89F9
_080117D0:
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080117FC
	ldr r0, _080117F0
	ldr r0, [r0]
	ldr r1, _080117F4
	adds r0, r0, r1
	ldr r1, _080117F8
	b _08011806
	.align 2, 0
_080117F0: .4byte 0x08DFF6A4
_080117F4: .4byte 0x00002298
_080117F8: .4byte 0x7EDE89F9
_080117FC:
	ldr r0, _08011810
	ldr r0, [r0]
	ldr r1, _08011814
	adds r0, r0, r1
	ldr r1, _08011818
_08011806:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011810: .4byte 0x08DFF6A4
_08011814: .4byte 0x00002298
_08011818: .4byte 0x7FFFFFF7
	.byte 0x0A, 0x48, 0x0F, 0x21
	.byte 0xC0, 0x78, 0x02, 0x09, 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00
	.byte 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49
	.byte 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF6, 0xFF, 0xFF, 0x7F, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011878
sub_8011878: @ 0x08011878
	push {r4, lr}
	ldr r0, _080118C8
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _080118CC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _080118D0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _080118AC
	ldr r0, _080118D4
	ldr r0, [r0]
	ldr r1, _080118D8
	adds r0, r0, r1
	ldr r1, _080118DC
	str r1, [r0]
_080118AC:
	ldr r0, [r4]
	ldrh r1, [r0]
	cmp r1, #0xe9
	beq _080118B6
	ldr r0, _080118E0
_080118B6:
	ldr r0, _080118D4
	ldr r0, [r0]
	ldr r1, _080118D8
	adds r0, r0, r1
	ldr r1, _080118DC
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080118C8: .4byte 0x02021C00
_080118CC: .4byte 0x02023FD0
_080118D0: .4byte 0x02021AD0
_080118D4: .4byte 0x08DFF6A4
_080118D8: .4byte 0x00002298
_080118DC: .4byte 0x7EDE89F9
_080118E0: .4byte 0x000002BB
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80118E8
sub_80118E8: @ 0x080118E8
	push {lr}
	bl sub_803EF7C
	cmp r0, #0x1f
	bne _080118FE
	ldr r0, _08011904
	ldr r0, [r0]
	ldr r1, _08011908
	adds r0, r0, r1
	ldr r1, _0801190C
	str r1, [r0]
_080118FE:
	pop {r0}
	bx r0
	.align 2, 0
_08011904: .4byte 0x08DFF6A4
_08011908: .4byte 0x00002298
_0801190C: .4byte 0x7FFFFFFF
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011940
sub_8011940: @ 0x08011940
	push {r4, lr}
	ldr r0, _08011990
	movs r2, #0xf
	ldrb r0, [r0, #3]
	lsrs r3, r0, #4
	ands r2, r0
	ldr r4, _08011994
	ldr r0, _08011998
	lsls r1, r3, #2
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0801199C
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080119A0
	ldr r2, [r0]
	ldr r0, _080119A4
	adds r2, r2, r0
	ldr r1, _080119A8
	ldrh r0, [r1, #0x12]
	ldrh r1, [r1, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011990: .4byte 0x02021C00
_08011994: .4byte 0x02021AC0
_08011998: .4byte 0x02023FD0
_0801199C: .4byte 0x02023EC0
_080119A0: .4byte 0x08DFF6A4
_080119A4: .4byte 0x00002298
_080119A8: .4byte 0x02021AD0

	THUMB_FUNC_START sub_80119AC
sub_80119AC: @ 0x080119AC
	push {r4, lr}
	ldr r0, _08011A00
	movs r2, #0xf
	ldrb r0, [r0, #3]
	lsrs r3, r0, #4
	ands r2, r0
	ldr r4, _08011A04
	ldr r0, _08011A08
	lsls r1, r3, #2
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08011A0C
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08011A10
	ldr r0, [r0]
	ldr r1, _08011A14
	adds r2, r0, r1
	ldr r1, _08011A18
	ldrh r0, [r1, #0x12]
	ldrh r1, [r1, #0x14]
	adds r0, r0, r1
	ldr r1, [r2]
	cmp r1, r0
	bhs _08011A20
	ldr r3, _08011A1C
	adds r0, r1, r3
	b _08011A22
	.align 2, 0
_08011A00: .4byte 0x02021C00
_08011A04: .4byte 0x02021AC0
_08011A08: .4byte 0x02023FD0
_08011A0C: .4byte 0x02023EC0
_08011A10: .4byte 0x08DFF6A4
_08011A14: .4byte 0x00002298
_08011A18: .4byte 0x02021AD0
_08011A1C: .4byte 0x7F08323B
_08011A20:
	ldr r0, _08011A2C
_08011A22:
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011A2C: .4byte 0x7EDE89F9
	.byte 0x0A, 0x48, 0xC0, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18
	.byte 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x01, 0x88, 0x3E, 0x29, 0x10, 0xD1, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x21, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x69, 0x51, 0xF5, 0x7F
	.byte 0x04, 0x48, 0x81, 0x42, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xA1, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x69, 0x51, 0xF5, 0x7F, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011AB0
sub_8011AB0: @ 0x08011AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08011B58
	ldrb r0, [r2, #2]
	lsrs r5, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #4]
	lsrs r6, r0, #4
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _08011B5C
	mov sl, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r1, _08011B60
	mov r8, r1
	ldrb r1, [r1, #0x1d]
	ldr r5, _08011B64
	ldr r0, _08011B68
	lsls r1, r1, #3
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r5]
	ldr r0, _08011B6C
	adds r0, #0xf0
	mov sb, r0
	ldrb r0, [r0]
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	mov r2, r8
	ldrh r2, [r2, #0x12]
	str r2, [sp, #4]
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r5]
	mov r3, sb
	ldrb r1, [r3]
	strb r1, [r5, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r1, [sp, #4]
	mov r0, r8
	ldrh r0, [r0, #0x12]
	cmp r1, r0
	bhi _08011B7C
	ldr r0, _08011B70
	ldr r0, [r0]
	ldr r1, _08011B74
	adds r0, r0, r1
	ldr r1, _08011B78
	b _08011BEA
	.align 2, 0
_08011B58: .4byte 0x02021C00
_08011B5C: .4byte 0x02023FD0
_08011B60: .4byte 0x02021AD0
_08011B64: .4byte 0x02021AC0
_08011B68: .4byte 0x08E00FA8
_08011B6C: .4byte 0x02023EC0
_08011B70: .4byte 0x08DFF6A4
_08011B74: .4byte 0x00002298
_08011B78: .4byte 0x7EDE89F9
_08011B7C:
	ldr r4, _08011BC8
	ldr r1, [r4]
	ldr r2, _08011BCC
	adds r1, r1, r2
	mov r3, r8
	ldrh r2, [r3, #0x12]
	ldr r0, _08011BD0
	subs r0, r0, r2
	str r0, [r1]
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r5]
	mov r2, sb
	ldrb r1, [r2]
	strb r1, [r5, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, [sp, #4]
	mov r3, r8
	ldrh r3, [r3, #0x12]
	cmp r0, r3
	bhi _08011BD8
	ldr r0, [r4]
	ldr r1, _08011BCC
	adds r0, r0, r1
	ldr r1, _08011BD4
	b _08011BEA
	.align 2, 0
_08011BC8: .4byte 0x08DFF6A4
_08011BCC: .4byte 0x00002298
_08011BD0: .4byte 0x0000FFFE
_08011BD4: .4byte 0x7EDE89F9
_08011BD8:
	ldr r0, [r4]
	ldr r2, _08011BFC
	adds r0, r0, r2
	ldr r1, [r0]
	mov r3, r8
	ldrh r2, [r3, #0x12]
	subs r1, r1, r2
	ldr r2, _08011C00
	adds r1, r1, r2
_08011BEA:
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011BFC: .4byte 0x00002298
_08011C00: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_8011C04
sub_8011C04: @ 0x08011C04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, _08011C20
	mov r0, sp
	adds r1, r4, #0
	bl sub_804B144
	cmp r0, #1
	bne _08011C24
	movs r1, #0x1d
	b _08011C72
	.align 2, 0
_08011C20: .4byte 0x08E01090
_08011C24:
	adds r1, r4, #0
	subs r1, #8
	mov r0, sp
	bl sub_804B144
	cmp r0, #1
	bne _08011C36
	movs r1, #0x1c
	b _08011C72
_08011C36:
	adds r1, r4, #0
	subs r1, #0x10
	mov r0, sp
	bl sub_804B144
	cmp r0, #1
	bne _08011C48
	movs r1, #0x1b
	b _08011C72
_08011C48:
	adds r1, r4, #0
	subs r1, #0xc0
	mov r0, sp
	bl sub_804B144
	cmp r0, #1
	beq _08011C70
	ldr r0, _08011C64
	ldr r0, [r0]
	ldr r1, _08011C68
	adds r0, r0, r1
	ldr r1, _08011C6C
	b _08011D68
	.align 2, 0
_08011C64: .4byte 0x08DFF6A4
_08011C68: .4byte 0x00002298
_08011C6C: .4byte 0x7EDE89F9
_08011C70:
	movs r1, #5
_08011C72:
	ldr r4, _08011CDC
	ldr r0, _08011CE0
	lsls r1, r1, #3
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r4]
	ldr r0, _08011CE4
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r7, _08011CE8
	ldrh r2, [r7, #0x12]
	mov sb, r2
	ldr r1, _08011CEC
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	adds r6, r1, #0
	adds r6, #0x28
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r2, [r7, #0x12]
	cmp sb, r2
	bhi _08011CFC
	ldr r0, _08011CF0
	ldr r0, [r0]
	ldr r1, _08011CF4
	adds r0, r0, r1
	ldr r1, _08011CF8
	b _08011D68
	.align 2, 0
_08011CDC: .4byte 0x02021AC0
_08011CE0: .4byte 0x08E00FA8
_08011CE4: .4byte 0x02023EC0
_08011CE8: .4byte 0x02021AD0
_08011CEC: .4byte 0x02023FD0
_08011CF0: .4byte 0x08DFF6A4
_08011CF4: .4byte 0x00002298
_08011CF8: .4byte 0x7EDE89F9
_08011CFC:
	ldr r5, _08011D48
	ldr r1, [r5]
	ldr r2, _08011D4C
	adds r1, r1, r2
	ldrh r2, [r7, #0x12]
	ldr r0, _08011D50
	subs r0, r0, r2
	str r0, [r1]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r2, [r7, #0x12]
	cmp sb, r2
	bhs _08011D58
	ldr r0, [r5]
	ldr r1, _08011D4C
	adds r0, r0, r1
	ldr r1, _08011D54
	b _08011D68
	.align 2, 0
_08011D48: .4byte 0x08DFF6A4
_08011D4C: .4byte 0x00002298
_08011D50: .4byte 0x0000FFFE
_08011D54: .4byte 0x7EDE89F9
_08011D58:
	ldr r0, [r5]
	ldr r2, _08011D78
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r2, [r7, #0x12]
	subs r1, r1, r2
	ldr r2, _08011D7C
	adds r1, r1, r2
_08011D68:
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D78: .4byte 0x00002298
_08011D7C: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_8011D80
sub_8011D80: @ 0x08011D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	movs r6, #0
	ldr r0, _08011DFC
	mov sl, r0
	ldr r5, _08011E00
	ldr r1, _08011E04
	mov sb, r1
	ldr r0, _08011E08
	mov r8, r0
_08011D9C:
	lsls r0, r6, #2
	add r0, sl
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08011DE0
	bl sub_802607C
	cmp r0, #1
	beq _08011DE0
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08011DE0
	ldrh r0, [r4]
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r5, #2]
	adds r0, r4, #0
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _08011E0C
	ldrh r0, [r0, #0x12]
	cmp r0, r8
	bls _08011DE0
	adds r7, #1
_08011DE0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08011D9C
	cmp r7, #0
	bne _08011E1C
	ldr r0, _08011E10
	ldr r0, [r0]
	ldr r1, _08011E14
	adds r0, r0, r1
	ldr r1, _08011E18
	b _08011E26
	.align 2, 0
_08011DFC: .4byte 0x02023FE4
_08011E00: .4byte 0x02021AC0
_08011E04: .4byte 0x02023FB0
_08011E08: .4byte 0x000005DB
_08011E0C: .4byte 0x02021AD0
_08011E10: .4byte 0x08DFF6A4
_08011E14: .4byte 0x00002298
_08011E18: .4byte 0x7EDE89F9
_08011E1C:
	ldr r0, _08011E38
	ldr r0, [r0]
	ldr r1, _08011E3C
	adds r0, r0, r1
	ldr r1, _08011E40
_08011E26:
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011E38: .4byte 0x08DFF6A4
_08011E3C: .4byte 0x00002298
_08011E40: .4byte 0x7FF9973C

	THUMB_FUNC_START sub_8011E44
sub_8011E44: @ 0x08011E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08011EC4
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #4]
	lsrs r5, r0, #4
	mov sl, r5
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	mov sb, r2
	adds r5, r1, #0
	ands r5, r0
	ldr r0, _08011EC8
	mov r8, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08011ECC
	ldrb r0, [r0, #0x1d]
	mov ip, r0
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r6, _08011ED0
	mov r2, ip
	lsls r4, r2, #3
	adds r0, r6, #4
	adds r0, r4, r0
	ldrh r1, [r1]
	ldrh r3, [r0]
	cmp r1, r3
	beq _08011F14
	adds r0, r6, #6
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r1, r0
	beq _08011EE0
	ldr r0, _08011ED4
	ldr r0, [r0]
	ldr r4, _08011ED8
	adds r0, r0, r4
	ldr r1, _08011EDC
	b _08012044
	.align 2, 0
_08011EC4: .4byte 0x02021C00
_08011EC8: .4byte 0x02023FD0
_08011ECC: .4byte 0x02021AD0
_08011ED0: .4byte 0x08E00FA8
_08011ED4: .4byte 0x08DFF6A4
_08011ED8: .4byte 0x00002298
_08011EDC: .4byte 0x7EDE89F9
_08011EE0:
	lsls r1, r5, #2
	mov r5, sb
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #2
	adds r0, r1, r0
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, r3
	beq _08011F4C
	ldr r0, _08011F08
	ldr r0, [r0]
	ldr r1, _08011F0C
	adds r0, r0, r1
	ldr r1, _08011F10
	b _08012044
	.align 2, 0
_08011F08: .4byte 0x08DFF6A4
_08011F0C: .4byte 0x00002298
_08011F10: .4byte 0x7EDE89F9
_08011F14:
	lsls r2, r5, #2
	mov r5, sb
	lsls r3, r5, #2
	adds r0, r3, r5
	lsls r0, r0, #2
	adds r0, r2, r0
	add r0, r8
	ldr r1, [r0]
	adds r0, r6, #6
	adds r0, r4, r0
	ldrh r1, [r1]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08011F4C
	ldr r0, _08011F40
	ldr r0, [r0]
	ldr r1, _08011F44
	adds r0, r0, r1
	ldr r1, _08011F48
	b _08012044
	.align 2, 0
_08011F40: .4byte 0x08DFF6A4
_08011F44: .4byte 0x00002298
_08011F48: .4byte 0x7EDE89F9
_08011F4C:
	ldr r4, _08011FB4
	ldr r0, _08011FB8
	mov r2, ip
	lsls r1, r2, #3
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r4]
	ldr r0, _08011FBC
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _08011FC0
	ldrh r5, [r6, #0x12]
	str r5, [sp]
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _08011FC4
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r5, r8
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, [sp]
	ldrh r1, [r6, #0x12]
	cmp r0, r1
	bhs _08011FD4
	ldr r0, _08011FC8
	ldr r0, [r0]
	ldr r2, _08011FCC
	adds r0, r0, r2
	ldr r1, _08011FD0
	b _08012044
	.align 2, 0
_08011FB4: .4byte 0x02021AC0
_08011FB8: .4byte 0x08E00FA8
_08011FBC: .4byte 0x02023EC0
_08011FC0: .4byte 0x02021AD0
_08011FC4: .4byte 0x02023FD0
_08011FC8: .4byte 0x08DFF6A4
_08011FCC: .4byte 0x00002298
_08011FD0: .4byte 0x7EDE89F9
_08011FD4:
	ldr r5, _08012020
	ldr r1, [r5]
	ldr r0, _08012024
	adds r1, r1, r0
	ldrh r2, [r6, #0x12]
	ldr r0, _08012028
	subs r0, r0, r2
	str r0, [r1]
	ldr r0, [sp, #8]
	add r0, sb
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r2, _0801202C
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r4, [sp]
	ldrh r0, [r6, #0x12]
	cmp r4, r0
	bhs _08012034
	ldr r0, [r5]
	ldr r1, _08012024
	adds r0, r0, r1
	ldr r1, _08012030
	b _08012044
	.align 2, 0
_08012020: .4byte 0x08DFF6A4
_08012024: .4byte 0x00002298
_08012028: .4byte 0x0000FFFE
_0801202C: .4byte 0x02023FD0
_08012030: .4byte 0x7EDE89F9
_08012034:
	ldr r0, [r5]
	ldr r2, _08012058
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r2, [r6, #0x12]
	subs r1, r1, r2
	ldr r4, _0801205C
	adds r1, r1, r4
_08012044:
	str r1, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012058: .4byte 0x00002298
_0801205C: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_8012060
sub_8012060: @ 0x08012060
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	ldr r7, _080120B4
_08012068:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801209A
	bl sub_802607C
	cmp r0, #1
	beq _0801209A
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801209A
	ldrh r0, [r4]
	bl SetCardData
	ldr r0, _080120B8
	ldrb r0, [r0, #0x16]
	cmp r0, #4
	bne _0801209A
	adds r6, #1
_0801209A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08012068
	cmp r6, #0
	bne _080120C8
	ldr r0, _080120BC
	ldr r0, [r0]
	ldr r1, _080120C0
	adds r0, r0, r1
	ldr r1, _080120C4
	b _080120D2
	.align 2, 0
_080120B4: .4byte 0x02023FE4
_080120B8: .4byte 0x02021AD0
_080120BC: .4byte 0x08DFF6A4
_080120C0: .4byte 0x00002298
_080120C4: .4byte 0x7EDE89F9
_080120C8:
	ldr r0, _080120DC
	ldr r0, [r0]
	ldr r1, _080120E0
	adds r0, r0, r1
	ldr r1, _080120E4
_080120D2:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080120DC: .4byte 0x08DFF6A4
_080120E0: .4byte 0x00002298
_080120E4: .4byte 0x7FF9973C
	.byte 0x0A, 0x48, 0xC0, 0x78, 0x02, 0x09, 0x0F, 0x21
	.byte 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x01, 0x88, 0x06, 0x48, 0x06, 0x48, 0x00, 0x68, 0x06, 0x49, 0x40, 0x18, 0x06, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0x87, 0x01, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0xB5, 0x17, 0x48
	.byte 0xC0, 0x78, 0x03, 0x09, 0x0F, 0x22, 0x02, 0x40, 0x15, 0x4D, 0x28, 0x68, 0x15, 0x49, 0x40, 0x18
	.byte 0x00, 0x68, 0x15, 0x4E, 0xB0, 0x42, 0x34, 0xD0, 0x14, 0x4C, 0x15, 0x48, 0x99, 0x00, 0xC9, 0x18
	.byte 0x89, 0x18, 0x89, 0x00, 0x09, 0x18, 0x08, 0x68, 0x00, 0x88, 0x20, 0x80, 0x11, 0x48, 0xF0, 0x30
	.byte 0x00, 0x78, 0xA0, 0x70, 0x08, 0x68, 0x2E, 0xF0, 0x99, 0xFA, 0xE0, 0x70, 0x20, 0x1C, 0xF9, 0xF7
	.byte 0xD3, 0xF8, 0x28, 0x68, 0x07, 0x49, 0x42, 0x18, 0x0B, 0x49, 0x48, 0x8A, 0x89, 0x8A, 0x40, 0x18
	.byte 0x11, 0x68, 0x81, 0x42, 0x14, 0xD2, 0x09, 0x48, 0x10, 0x60, 0x12, 0xE0, 0x00, 0x1C, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xC0, 0x1A, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xC0, 0x3E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x69, 0x51, 0xF5, 0x7F
	.byte 0x16, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_80121B8
sub_80121B8: @ 0x080121B8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	ldr r7, _0801220C
_080121C0:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _080121F2
	bl sub_802607C
	cmp r0, #1
	beq _080121F2
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080121F2
	ldrh r0, [r4]
	bl SetCardData
	ldr r0, _08012210
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _080121F2
	adds r6, #1
_080121F2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080121C0
	cmp r6, #0
	bne _08012220
	ldr r0, _08012214
	ldr r0, [r0]
	ldr r1, _08012218
	adds r0, r0, r1
	ldr r1, _0801221C
	b _0801222A
	.align 2, 0
_0801220C: .4byte 0x02023FE4
_08012210: .4byte 0x02021AD0
_08012214: .4byte 0x08DFF6A4
_08012218: .4byte 0x00002298
_0801221C: .4byte 0x7EDE89F9
_08012220:
	ldr r0, _08012234
	ldr r0, [r0]
	ldr r1, _08012238
	adds r0, r0, r1
	ldr r1, _0801223C
_0801222A:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012234: .4byte 0x08DFF6A4
_08012238: .4byte 0x00002298
_0801223C: .4byte 0x7FF9973C

	THUMB_FUNC_START sub_8012240
sub_8012240: @ 0x08012240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08012310
	ldrb r0, [r2, #2]
	lsrs r5, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r6, r0, #4
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #4]
	lsrs r7, r0, #4
	str r7, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp, #4]
	mov r8, r1
	ands r1, r0
	mov r8, r1
	ldr r2, _08012314
	mov sl, r2
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r3, _08012318
	mov sb, r3
	ldrb r2, [r3, #0x1d]
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldr r3, _0801231C
	lsls r0, r2, #3
	adds r0, r0, r3
	ldrh r1, [r1]
	movs r2, #0x1a
	ldrh r0, [r0]
	cmp r1, r0
	bne _080122B0
	movs r2, #0x18
_080122B0:
	ldr r4, _08012320
	lsls r0, r2, #3
	adds r1, r3, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r4]
	ldr r0, _08012324
	adds r6, r0, #0
	adds r6, #0xf0
	ldrb r0, [r6]
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sb
	ldrh r0, [r0, #0x12]
	str r0, [sp, #8]
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r6]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, [sp, #8]
	mov r2, sb
	ldrh r2, [r2, #0x12]
	cmp r3, r2
	bhi _08012334
	ldr r0, _08012328
	ldr r0, [r0]
	ldr r3, _0801232C
	adds r0, r0, r3
	ldr r1, _08012330
	b _080123A2
	.align 2, 0
_08012310: .4byte 0x02021C00
_08012314: .4byte 0x02023FD0
_08012318: .4byte 0x02021AD0
_0801231C: .4byte 0x08E00FA8
_08012320: .4byte 0x02021AC0
_08012324: .4byte 0x02023EC0
_08012328: .4byte 0x08DFF6A4
_0801232C: .4byte 0x00002298
_08012330: .4byte 0x7EDE89F9
_08012334:
	ldr r5, _08012380
	ldr r1, [r5]
	ldr r7, _08012384
	adds r1, r1, r7
	mov r0, sb
	ldrh r2, [r0, #0x12]
	ldr r0, _08012388
	subs r0, r0, r2
	str r0, [r1]
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r6]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, [sp, #8]
	mov r2, sb
	ldrh r2, [r2, #0x12]
	cmp r3, r2
	bhi _08012390
	ldr r0, [r5]
	adds r3, r7, #0
	adds r0, r0, r3
	ldr r1, _0801238C
	b _080123A2
	.align 2, 0
_08012380: .4byte 0x08DFF6A4
_08012384: .4byte 0x00002298
_08012388: .4byte 0x0000FFFE
_0801238C: .4byte 0x7EDE89F9
_08012390:
	ldr r0, [r5]
	ldr r7, _080123B4
	adds r0, r0, r7
	ldr r1, [r0]
	mov r3, sb
	ldrh r2, [r3, #0x12]
	subs r1, r1, r2
	ldr r7, _080123B8
	adds r1, r1, r7
_080123A2:
	str r1, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080123B4: .4byte 0x00002298
_080123B8: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_80123BC
sub_80123BC: @ 0x080123BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08012410
	mov r8, r0
	ldr r4, _08012414
	ldr r7, _08012418
	ldr r6, _0801241C
_080123CE:
	lsls r0, r5, #2
	mov r1, r8
	adds r3, r0, r1
	ldr r0, [r3]
	ldrh r2, [r0]
	cmp r2, #0
	beq _08012430
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012430
	strh r2, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08012420
	ldrh r0, [r0, #0x12]
	cmp r0, r6
	bls _08012430
	ldr r0, _08012424
	ldr r0, [r0]
	ldr r1, _08012428
	adds r0, r0, r1
	ldr r1, _0801242C
	b _08012444
	.align 2, 0
_08012410: .4byte 0x02023FE4
_08012414: .4byte 0x02021AC0
_08012418: .4byte 0x02023FB0
_0801241C: .4byte 0x000005DB
_08012420: .4byte 0x02021AD0
_08012424: .4byte 0x08DFF6A4
_08012428: .4byte 0x00002298
_0801242C: .4byte 0x7EEB5B47
_08012430:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080123CE
	ldr r0, _08012450
	ldr r0, [r0]
	ldr r1, _08012454
	adds r0, r0, r1
	ldr r1, _08012458
_08012444:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012450: .4byte 0x08DFF6A4
_08012454: .4byte 0x00002298
_08012458: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_801245C
sub_801245C: @ 0x0801245C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801249C
_08012462:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	beq _080124B0
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080124B0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080124B0
	ldrh r0, [r2]
	bl SetCardData
	ldr r0, _080124A0
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _080124B0
	ldr r0, _080124A4
	ldr r0, [r0]
	ldr r1, _080124A8
	adds r0, r0, r1
	ldr r1, _080124AC
	b _080124C4
	.align 2, 0
_0801249C: .4byte 0x02023FF8
_080124A0: .4byte 0x02021AD0
_080124A4: .4byte 0x08DFF6A4
_080124A8: .4byte 0x00002298
_080124AC: .4byte 0x7FFFFFF5
_080124B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08012462
	ldr r0, _080124CC
	ldr r0, [r0]
	ldr r1, _080124D0
	adds r0, r0, r1
	ldr r1, _080124D4
_080124C4:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080124CC: .4byte 0x08DFF6A4
_080124D0: .4byte 0x00002298
_080124D4: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80124D8
sub_80124D8: @ 0x080124D8
	push {lr}
	ldr r1, _080124F0
	ldr r0, _080124F4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_080124F0: .4byte 0x08DFFA48
_080124F4: .4byte 0x0201CB3C

	THUMB_FUNC_START sub_80124F8
sub_80124F8: @ 0x080124F8
	push {lr}
	ldr r0, _08012534
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _08012538
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r2, _0801253C
	ldr r1, _08012540
	ldrb r0, [r1, #0x1a]
	strb r0, [r2]
	ldr r2, _08012544
	ldrb r0, [r1, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_08012534: .4byte 0x02021C00
_08012538: .4byte 0x02023FD0
_0801253C: .4byte 0x0201CB3C
_08012540: .4byte 0x02021AD0
_08012544: .4byte 0x08DFF7F0
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_80125F0
sub_80125F0: @ 0x080125F0
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012608
	ldr r1, [r1]
	ldr r2, _0801260C
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012608: .4byte 0x08DFF6A4
_0801260C: .4byte 0x00002298

	THUMB_FUNC_START sub_8012610
sub_8012610: @ 0x08012610
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _0801262C
	ldr r0, [r0]
	ldr r3, _08012630
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012638
	ldr r0, _08012634
	b _0801263C
	.align 2, 0
_0801262C: .4byte 0x08DFF6A4
_08012630: .4byte 0x00002298
_08012634: .4byte 0x7EDE89F9
_08012638:
	ldr r3, _08012644
	adds r0, r2, r3
_0801263C:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012644: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_8012648
sub_8012648: @ 0x08012648
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012660
	ldr r1, [r1]
	ldr r2, _08012664
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012660: .4byte 0x08DFF6A4
_08012664: .4byte 0x00002298

	THUMB_FUNC_START sub_8012668
sub_8012668: @ 0x08012668
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _08012684
	ldr r0, [r0]
	ldr r3, _08012688
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012690
	ldr r0, _0801268C
	b _08012694
	.align 2, 0
_08012684: .4byte 0x08DFF6A4
_08012688: .4byte 0x00002298
_0801268C: .4byte 0x7EDE89F9
_08012690:
	ldr r3, _0801269C
	adds r0, r2, r3
_08012694:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801269C: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_80126A0
sub_80126A0: @ 0x080126A0
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _080126B8
	ldr r1, [r1]
	ldr r2, _080126BC
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080126B8: .4byte 0x08DFF6A4
_080126BC: .4byte 0x00002298

	THUMB_FUNC_START sub_80126C0
sub_80126C0: @ 0x080126C0
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _080126DC
	ldr r0, [r0]
	ldr r3, _080126E0
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _080126E8
	ldr r0, _080126E4
	b _080126EC
	.align 2, 0
_080126DC: .4byte 0x08DFF6A4
_080126E0: .4byte 0x00002298
_080126E4: .4byte 0x7EDE89F9
_080126E8:
	ldr r3, _080126F4
	adds r0, r2, r3
_080126EC:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080126F4: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_80126F8
sub_80126F8: @ 0x080126F8
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012710
	ldr r1, [r1]
	ldr r2, _08012714
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012710: .4byte 0x08DFF6A4
_08012714: .4byte 0x00002298

	THUMB_FUNC_START sub_8012718
sub_8012718: @ 0x08012718
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _08012734
	ldr r0, [r0]
	ldr r3, _08012738
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012740
	ldr r0, _0801273C
	b _08012744
	.align 2, 0
_08012734: .4byte 0x08DFF6A4
_08012738: .4byte 0x00002298
_0801273C: .4byte 0x7EDE89F9
_08012740:
	ldr r3, _0801274C
	adds r0, r2, r3
_08012744:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801274C: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_8012750
sub_8012750: @ 0x08012750
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012768
	ldr r1, [r1]
	ldr r2, _0801276C
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012768: .4byte 0x08DFF6A4
_0801276C: .4byte 0x00002298

	THUMB_FUNC_START sub_8012770
sub_8012770: @ 0x08012770
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _0801278C
	ldr r0, [r0]
	ldr r3, _08012790
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012798
	ldr r0, _08012794
	b _0801279C
	.align 2, 0
_0801278C: .4byte 0x08DFF6A4
_08012790: .4byte 0x00002298
_08012794: .4byte 0x7EDE89F9
_08012798:
	ldr r3, _080127A4
	adds r0, r2, r3
_0801279C:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080127A4: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_80127A8
sub_80127A8: @ 0x080127A8
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _080127C0
	ldr r1, [r1]
	ldr r2, _080127C4
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080127C0: .4byte 0x08DFF6A4
_080127C4: .4byte 0x00002298

	THUMB_FUNC_START sub_80127C8
sub_80127C8: @ 0x080127C8
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _080127E4
	ldr r0, [r0]
	ldr r3, _080127E8
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _080127F0
	ldr r0, _080127EC
	b _080127F4
	.align 2, 0
_080127E4: .4byte 0x08DFF6A4
_080127E8: .4byte 0x00002298
_080127EC: .4byte 0x7EDE89F9
_080127F0:
	ldr r3, _080127FC
	adds r0, r2, r3
_080127F4:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080127FC: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_8012800
sub_8012800: @ 0x08012800
	push {lr}
	bl sub_8058744
	ldr r1, _0801281C
	ldr r1, [r1]
	ldr r2, _08012820
	adds r1, r1, r2
	ldr r2, _08012824
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801281C: .4byte 0x08DFF6A4
_08012820: .4byte 0x00002298
_08012824: .4byte 0x02024258

	THUMB_FUNC_START sub_8012828
sub_8012828: @ 0x08012828
	push {r4, r5, r6, lr}
	ldr r6, _08012850
	ldr r4, [r6]
	ldr r0, _08012854
	adds r4, r4, r0
	ldr r5, _08012858
	bl sub_8058744
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08012860
	ldr r0, [r6]
	ldr r1, _08012854
	adds r0, r0, r1
	ldr r1, _0801285C
	b _08012868
	.align 2, 0
_08012850: .4byte 0x08DFF6A4
_08012854: .4byte 0x00002298
_08012858: .4byte 0x02024258
_0801285C: .4byte 0x7EDE89F9
_08012860:
	ldr r0, [r6]
	ldr r1, _08012870
	adds r0, r0, r1
	ldr r1, _08012874
_08012868:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012870: .4byte 0x00002298
_08012874: .4byte 0x7FF99742

	THUMB_FUNC_START sub_8012878
sub_8012878: @ 0x08012878
	push {lr}
	bl sub_8058744
	ldr r1, _08012894
	ldr r1, [r1]
	ldr r2, _08012898
	adds r1, r1, r2
	ldr r2, _0801289C
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012894: .4byte 0x08DFF6A4
_08012898: .4byte 0x00002298
_0801289C: .4byte 0x02024258

	THUMB_FUNC_START sub_80128A0
sub_80128A0: @ 0x080128A0
	push {r4, r5, r6, lr}
	ldr r6, _080128C8
	ldr r4, [r6]
	ldr r0, _080128CC
	adds r4, r4, r0
	ldr r5, _080128D0
	bl sub_8058744
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _080128D8
	ldr r0, [r6]
	ldr r1, _080128CC
	adds r0, r0, r1
	ldr r1, _080128D4
	b _080128E0
	.align 2, 0
_080128C8: .4byte 0x08DFF6A4
_080128CC: .4byte 0x00002298
_080128D0: .4byte 0x02024258
_080128D4: .4byte 0x7EDE89F9
_080128D8:
	ldr r0, [r6]
	ldr r1, _080128E8
	adds r0, r0, r1
	ldr r1, _080128EC
_080128E0:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080128E8: .4byte 0x00002298
_080128EC: .4byte 0x7FF99742

	THUMB_FUNC_START sub_80128F0
sub_80128F0: @ 0x080128F0
	push {lr}
	bl sub_8058744
	ldr r1, _0801290C
	ldr r1, [r1]
	ldr r2, _08012910
	adds r1, r1, r2
	ldr r2, _08012914
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801290C: .4byte 0x08DFF6A4
_08012910: .4byte 0x00002298
_08012914: .4byte 0x02024258

	THUMB_FUNC_START sub_8012918
sub_8012918: @ 0x08012918
	push {r4, r5, r6, lr}
	ldr r6, _08012940
	ldr r4, [r6]
	ldr r0, _08012944
	adds r4, r4, r0
	ldr r5, _08012948
	bl sub_8058744
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08012950
	ldr r0, [r6]
	ldr r1, _08012944
	adds r0, r0, r1
	ldr r1, _0801294C
	b _08012958
	.align 2, 0
_08012940: .4byte 0x08DFF6A4
_08012944: .4byte 0x00002298
_08012948: .4byte 0x02024258
_0801294C: .4byte 0x7EDE89F9
_08012950:
	ldr r0, [r6]
	ldr r1, _08012960
	adds r0, r0, r1
	ldr r1, _08012964
_08012958:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012960: .4byte 0x00002298
_08012964: .4byte 0x7FF99742

	THUMB_FUNC_START sub_8012968
sub_8012968: @ 0x08012968
	push {lr}
	bl sub_8058744
	ldr r1, _08012984
	ldr r1, [r1]
	ldr r2, _08012988
	adds r1, r1, r2
	ldr r2, _0801298C
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012984: .4byte 0x08DFF6A4
_08012988: .4byte 0x00002298
_0801298C: .4byte 0x02024258

	THUMB_FUNC_START sub_8012990
sub_8012990: @ 0x08012990
	push {r4, r5, r6, lr}
	ldr r6, _080129B8
	ldr r4, [r6]
	ldr r0, _080129BC
	adds r4, r4, r0
	ldr r5, _080129C0
	bl sub_8058744
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _080129C8
	ldr r0, [r6]
	ldr r1, _080129BC
	adds r0, r0, r1
	ldr r1, _080129C4
	b _080129D0
	.align 2, 0
_080129B8: .4byte 0x08DFF6A4
_080129BC: .4byte 0x00002298
_080129C0: .4byte 0x02024258
_080129C4: .4byte 0x7EDE89F9
_080129C8:
	ldr r0, [r6]
	ldr r1, _080129D8
	adds r0, r0, r1
	ldr r1, _080129DC
_080129D0:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080129D8: .4byte 0x00002298
_080129DC: .4byte 0x7FF99742

	THUMB_FUNC_START sub_80129E0
sub_80129E0: @ 0x080129E0
	push {lr}
	bl sub_8058744
	ldr r1, _080129FC
	ldr r1, [r1]
	ldr r2, _08012A00
	adds r1, r1, r2
	ldr r2, _08012A04
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080129FC: .4byte 0x08DFF6A4
_08012A00: .4byte 0x00002298
_08012A04: .4byte 0x02024258

	THUMB_FUNC_START sub_8012A08
sub_8012A08: @ 0x08012A08
	push {r4, r5, r6, lr}
	ldr r6, _08012A30
	ldr r4, [r6]
	ldr r0, _08012A34
	adds r4, r4, r0
	ldr r5, _08012A38
	bl sub_8058744
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08012A40
	ldr r0, [r6]
	ldr r1, _08012A34
	adds r0, r0, r1
	ldr r1, _08012A3C
	b _08012A48
	.align 2, 0
_08012A30: .4byte 0x08DFF6A4
_08012A34: .4byte 0x00002298
_08012A38: .4byte 0x02024258
_08012A3C: .4byte 0x7EDE89F9
_08012A40:
	ldr r0, [r6]
	ldr r1, _08012A50
	adds r0, r0, r1
	ldr r1, _08012A54
_08012A48:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012A50: .4byte 0x00002298
_08012A54: .4byte 0x7FF99742

	THUMB_FUNC_START sub_8012A58
sub_8012A58: @ 0x08012A58
	push {r4, lr}
	ldr r4, _08012A7C
	bl sub_8058744
	ldr r1, _08012A80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0x32
	bhi _08012A90
	ldr r0, _08012A84
	ldr r0, [r0]
	ldr r1, _08012A88
	adds r0, r0, r1
	ldr r1, _08012A8C
	b _08012A9A
	.align 2, 0
_08012A7C: .4byte 0x02024258
_08012A80: .4byte 0x080AED54
_08012A84: .4byte 0x08DFF6A4
_08012A88: .4byte 0x00002298
_08012A8C: .4byte 0x7FFFFFFF
_08012A90:
	ldr r0, _08012AA4
	ldr r0, [r0]
	ldr r1, _08012AA8
	adds r0, r0, r1
	ldr r1, _08012AAC
_08012A9A:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012AA4: .4byte 0x08DFF6A4
_08012AA8: .4byte 0x00002298
_08012AAC: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012AB4
sub_8012AB4: @ 0x08012AB4
	push {r4, lr}
	ldr r4, _08012AD8
	bl sub_8058744
	ldr r1, _08012ADC
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0x64
	bhi _08012AEC
	ldr r0, _08012AE0
	ldr r0, [r0]
	ldr r1, _08012AE4
	adds r0, r0, r1
	ldr r1, _08012AE8
	b _08012AF6
	.align 2, 0
_08012AD8: .4byte 0x02024258
_08012ADC: .4byte 0x080AED54
_08012AE0: .4byte 0x08DFF6A4
_08012AE4: .4byte 0x00002298
_08012AE8: .4byte 0x7FFFFFFF
_08012AEC:
	ldr r0, _08012B00
	ldr r0, [r0]
	ldr r1, _08012B04
	adds r0, r0, r1
	ldr r1, _08012B08
_08012AF6:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012B00: .4byte 0x08DFF6A4
_08012B04: .4byte 0x00002298
_08012B08: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012B10
sub_8012B10: @ 0x08012B10
	push {r4, lr}
	ldr r4, _08012B34
	bl sub_8058744
	ldr r1, _08012B38
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0xc8
	bhi _08012B48
	ldr r0, _08012B3C
	ldr r0, [r0]
	ldr r1, _08012B40
	adds r0, r0, r1
	ldr r1, _08012B44
	b _08012B52
	.align 2, 0
_08012B34: .4byte 0x02024258
_08012B38: .4byte 0x080AED54
_08012B3C: .4byte 0x08DFF6A4
_08012B40: .4byte 0x00002298
_08012B44: .4byte 0x7FFFFFFF
_08012B48:
	ldr r0, _08012B5C
	ldr r0, [r0]
	ldr r1, _08012B60
	adds r0, r0, r1
	ldr r1, _08012B64
_08012B52:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012B5C: .4byte 0x08DFF6A4
_08012B60: .4byte 0x00002298
_08012B64: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012B6C
sub_8012B6C: @ 0x08012B6C
	push {r4, lr}
	ldr r4, _08012B94
	bl sub_8058744
	ldr r1, _08012B98
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08012BA8
	ldr r0, _08012B9C
	ldr r0, [r0]
	ldr r1, _08012BA0
	adds r0, r0, r1
	ldr r1, _08012BA4
	b _08012BB2
	.align 2, 0
_08012B94: .4byte 0x02024258
_08012B98: .4byte 0x080AED54
_08012B9C: .4byte 0x08DFF6A4
_08012BA0: .4byte 0x00002298
_08012BA4: .4byte 0x7FFFFFFF
_08012BA8:
	ldr r0, _08012BBC
	ldr r0, [r0]
	ldr r1, _08012BC0
	adds r0, r0, r1
	ldr r1, _08012BC4
_08012BB2:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012BBC: .4byte 0x08DFF6A4
_08012BC0: .4byte 0x00002298
_08012BC4: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012BCC
sub_8012BCC: @ 0x08012BCC
	push {r4, lr}
	ldr r4, _08012BF4
	bl sub_8058744
	ldr r1, _08012BF8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08012C08
	ldr r0, _08012BFC
	ldr r0, [r0]
	ldr r1, _08012C00
	adds r0, r0, r1
	ldr r1, _08012C04
	b _08012C12
	.align 2, 0
_08012BF4: .4byte 0x02024258
_08012BF8: .4byte 0x080AED54
_08012BFC: .4byte 0x08DFF6A4
_08012C00: .4byte 0x00002298
_08012C04: .4byte 0x7FFFFFFF
_08012C08:
	ldr r0, _08012C1C
	ldr r0, [r0]
	ldr r1, _08012C20
	adds r0, r0, r1
	ldr r1, _08012C24
_08012C12:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C1C: .4byte 0x08DFF6A4
_08012C20: .4byte 0x00002298
_08012C24: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012C2C
sub_8012C2C: @ 0x08012C2C
	push {r4, lr}
	ldr r4, _08012C48
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #5
	beq _08012C58
	ldr r0, _08012C4C
	ldr r0, [r0]
	ldr r1, _08012C50
	adds r0, r0, r1
	ldr r1, _08012C54
	b _08012C86
	.align 2, 0
_08012C48: .4byte 0x02023FF8
_08012C4C: .4byte 0x08DFF6A4
_08012C50: .4byte 0x00002298
_08012C54: .4byte 0x7EDE89F9
_08012C58:
	adds r0, r4, #0
	subs r0, #0x14
	bl sub_8043538
	cmp r0, #5
	bne _08012C7C
	ldr r0, _08012C70
	ldr r0, [r0]
	ldr r1, _08012C74
	adds r0, r0, r1
	ldr r1, _08012C78
	b _08012C86
	.align 2, 0
_08012C70: .4byte 0x08DFF6A4
_08012C74: .4byte 0x00002298
_08012C78: .4byte 0x7EDE89F9
_08012C7C:
	ldr r0, _08012C90
	ldr r0, [r0]
	ldr r1, _08012C94
	adds r0, r0, r1
	ldr r1, _08012C98
_08012C86:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C90: .4byte 0x08DFF6A4
_08012C94: .4byte 0x00002298
_08012C98: .4byte 0x7FF9973F
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012CA0
sub_8012CA0: @ 0x08012CA0
	push {lr}
	ldr r0, _08012CB8
	bl sub_8043538
	cmp r0, #5
	bne _08012CC8
	ldr r0, _08012CBC
	ldr r0, [r0]
	ldr r1, _08012CC0
	adds r0, r0, r1
	ldr r1, _08012CC4
	b _08012CD2
	.align 2, 0
_08012CB8: .4byte 0x02023FE4
_08012CBC: .4byte 0x08DFF6A4
_08012CC0: .4byte 0x00002298
_08012CC4: .4byte 0x7EDE89F9
_08012CC8:
	ldr r0, _08012CD8
	ldr r0, [r0]
	ldr r1, _08012CDC
	adds r0, r0, r1
	ldr r1, _08012CE0
_08012CD2:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08012CD8: .4byte 0x08DFF6A4
_08012CDC: .4byte 0x00002298
_08012CE0: .4byte 0x7FF9973E
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012CE8
sub_8012CE8: @ 0x08012CE8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012CF4
sub_8012CF4: @ 0x08012CF4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D00
sub_8012D00: @ 0x08012D00
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D0C
sub_8012D0C: @ 0x08012D0C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D18
sub_8012D18: @ 0x08012D18
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D24
sub_8012D24: @ 0x08012D24
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D30
sub_8012D30: @ 0x08012D30
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D3C
sub_8012D3C: @ 0x08012D3C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D48
sub_8012D48: @ 0x08012D48
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D54
sub_8012D54: @ 0x08012D54
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D60
sub_8012D60: @ 0x08012D60
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D6C
sub_8012D6C: @ 0x08012D6C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D78
sub_8012D78: @ 0x08012D78
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D84
sub_8012D84: @ 0x08012D84
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D90
sub_8012D90: @ 0x08012D90
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D9C
sub_8012D9C: @ 0x08012D9C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DA8
sub_8012DA8: @ 0x08012DA8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DB4
sub_8012DB4: @ 0x08012DB4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DC0
sub_8012DC0: @ 0x08012DC0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DCC
sub_8012DCC: @ 0x08012DCC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DD8
sub_8012DD8: @ 0x08012DD8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DE4
sub_8012DE4: @ 0x08012DE4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DF0
sub_8012DF0: @ 0x08012DF0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DFC
sub_8012DFC: @ 0x08012DFC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E08
sub_8012E08: @ 0x08012E08
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E14
sub_8012E14: @ 0x08012E14
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E20
sub_8012E20: @ 0x08012E20
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E2C
sub_8012E2C: @ 0x08012E2C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E38
sub_8012E38: @ 0x08012E38
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E44
sub_8012E44: @ 0x08012E44
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E50
sub_8012E50: @ 0x08012E50
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E5C
sub_8012E5C: @ 0x08012E5C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E68
sub_8012E68: @ 0x08012E68
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E74
sub_8012E74: @ 0x08012E74
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E80
sub_8012E80: @ 0x08012E80
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E8C
sub_8012E8C: @ 0x08012E8C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E98
sub_8012E98: @ 0x08012E98
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EA4
sub_8012EA4: @ 0x08012EA4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EB0
sub_8012EB0: @ 0x08012EB0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EBC
sub_8012EBC: @ 0x08012EBC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EC8
sub_8012EC8: @ 0x08012EC8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012ED4
sub_8012ED4: @ 0x08012ED4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EE0
sub_8012EE0: @ 0x08012EE0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EEC
sub_8012EEC: @ 0x08012EEC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EF8
sub_8012EF8: @ 0x08012EF8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012F04
sub_8012F04: @ 0x08012F04
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012F10
sub_8012F10: @ 0x08012F10
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7
	.byte 0x45, 0xFD, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012F28
sub_8012F28: @ 0x08012F28
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x39, 0xFD, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8012F78
sub_8012F78: @ 0x08012F78
	push {lr}
	movs r0, #1
	bl sub_80438E8
	cmp r0, #0
	bne _08012F9C
	ldr r0, _08012F90
	ldr r0, [r0]
	ldr r1, _08012F94
	adds r0, r0, r1
	ldr r1, _08012F98
	b _08012FA6
	.align 2, 0
_08012F90: .4byte 0x08DFF6A4
_08012F94: .4byte 0x00002298
_08012F98: .4byte 0x7EDE89F9
_08012F9C:
	ldr r0, _08012FAC
	ldr r0, [r0]
	ldr r1, _08012FB0
	adds r0, r0, r1
	ldr r1, _08012FB4
_08012FA6:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08012FAC: .4byte 0x08DFF6A4
_08012FB0: .4byte 0x00002298
_08012FB4: .4byte 0x7FB3183E
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012FBC
sub_8012FBC: @ 0x08012FBC
	push {lr}
	movs r0, #1
	movs r1, #1
	bl sub_804398C
	cmp r0, #0
	bne _08012FE4
	ldr r0, _08012FD8
	ldr r0, [r0]
	ldr r1, _08012FDC
	adds r0, r0, r1
	ldr r1, _08012FE0
	b _08012FEE
	.align 2, 0
_08012FD8: .4byte 0x08DFF6A4
_08012FDC: .4byte 0x00002298
_08012FE0: .4byte 0x7EDE89F9
_08012FE4:
	ldr r0, _08012FF4
	ldr r0, [r0]
	ldr r1, _08012FF8
	adds r0, r0, r1
	ldr r1, _08012FFC
_08012FEE:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08012FF4: .4byte 0x08DFF6A4
_08012FF8: .4byte 0x00002298
_08012FFC: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00, 0x06, 0x48, 0x40, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x0E, 0xD0, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x46, 0x5B, 0xEB, 0x7E, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013050
sub_8013050: @ 0x08013050
	push {r4, lr}
	movs r2, #0
	ldr r3, _08013078
	ldr r4, _0801307C
_08013058:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08013088
	ldrb r1, [r1, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08013088
	ldr r0, [r3]
	ldr r1, _08013080
	adds r0, r0, r1
	ldr r1, _08013084
	b _0801309A
	.align 2, 0
_08013078: .4byte 0x08DFF6A4
_0801307C: .4byte 0x02023FE4
_08013080: .4byte 0x00002298
_08013084: .4byte 0x7FFFFFF1
_08013088:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08013058
	ldr r0, [r3]
	ldr r1, _080130A4
	adds r0, r0, r1
	ldr r1, _080130A8
_0801309A:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080130A4: .4byte 0x00002298
_080130A8: .4byte 0x7EDE89F9
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80130B0
sub_80130B0: @ 0x080130B0
	push {lr}
	ldr r0, _080130CC
	bl sub_8043528
	cmp r0, #5
	bne _080130DC
	ldr r0, _080130D0
	ldr r0, [r0]
	ldr r1, _080130D4
	adds r0, r0, r1
	ldr r1, _080130D8
	str r1, [r0]
	b _080130EC
	.align 2, 0
_080130CC: .4byte 0x02023FE4
_080130D0: .4byte 0x08DFF6A4
_080130D4: .4byte 0x00002298
_080130D8: .4byte 0x7EDE89F9
_080130DC:
	movs r0, #1
	bl sub_8043358
	ldr r1, _080130F0
	ldr r1, [r1]
	ldr r2, _080130F4
	adds r1, r1, r2
	str r0, [r1]
_080130EC:
	pop {r0}
	bx r0
	.align 2, 0
_080130F0: .4byte 0x08DFF6A4
_080130F4: .4byte 0x00002298
	.byte 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x14, 0xD0, 0x01, 0x20, 0x30, 0xF0, 0x24, 0xF9
	.byte 0x21, 0x68, 0x81, 0x42, 0x0A, 0xD8, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0x0A, 0xE0, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x28, 0x68, 0x80, 0x19
	.byte 0x02, 0x49, 0x01, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x6C, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133B0
sub_80133B0: @ 0x080133B0
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133C0
sub_80133C0: @ 0x080133C0
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133D0
sub_80133D0: @ 0x080133D0
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133E4
sub_80133E4: @ 0x080133E4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133F4
sub_80133F4: @ 0x080133F4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013404
sub_8013404: @ 0x08013404
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013414
sub_8013414: @ 0x08013414
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013424
sub_8013424: @ 0x08013424
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013434
sub_8013434: @ 0x08013434
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013444
sub_8013444: @ 0x08013444
	push {r4, lr}
	ldr r2, _08013464
	ldr r0, [r2]
	ldr r1, _08013468
	adds r4, r0, r1
	ldr r0, _0801346C
	str r0, [r4]
	movs r3, #0
	ldr r1, _08013470
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013478
	ldr r0, _08013474
	str r0, [r4]
	b _08013498
	.align 2, 0
_08013464: .4byte 0x08DFF6A4
_08013468: .4byte 0x00002298
_0801346C: .4byte 0x7EDE89F9
_08013470: .4byte 0x02023FD0
_08013474: .4byte 0x7FF99744
_08013478:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _08013498
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013478
	ldr r0, [r2]
	ldr r1, _080134A0
	adds r0, r0, r1
	ldr r1, _080134A4
	str r1, [r0]
_08013498:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080134A0: .4byte 0x00002298
_080134A4: .4byte 0x7FF99744
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134AC
sub_80134AC: @ 0x080134AC
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x77, 0xFA, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134C4
sub_80134C4: @ 0x080134C4
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x00, 0xB5, 0xFE, 0xF7, 0x6B, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134DC
sub_80134DC: @ 0x080134DC
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x5F, 0xFA, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134F4
sub_80134F4: @ 0x080134F4
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x00, 0xB5, 0xFE, 0xF7, 0x53, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013510
sub_8013510: @ 0x08013510
	push {lr}
	ldr r0, _0801352C
	bl sub_8043528
	cmp r0, #5
	bne _0801353C
	ldr r0, _08013530
	ldr r0, [r0]
	ldr r1, _08013534
	adds r0, r0, r1
	ldr r1, _08013538
	str r1, [r0]
	b _0801354C
	.align 2, 0
_0801352C: .4byte 0x02023FE4
_08013530: .4byte 0x08DFF6A4
_08013534: .4byte 0x00002298
_08013538: .4byte 0x7EDE89F9
_0801353C:
	movs r0, #1
	bl sub_8043358
	ldr r1, _08013550
	ldr r1, [r1]
	ldr r2, _08013554
	adds r1, r1, r2
	str r0, [r1]
_0801354C:
	pop {r0}
	bx r0
	.align 2, 0
_08013550: .4byte 0x08DFF6A4
_08013554: .4byte 0x00002298
	.byte 0x70, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x49
	.byte 0x44, 0x18, 0x20, 0x68, 0x08, 0x4E, 0xB0, 0x42, 0x15, 0xD0, 0x01, 0x20, 0x2F, 0xF0, 0xF4, 0xFE
	.byte 0x21, 0x68, 0x81, 0x42, 0x0A, 0xD8, 0x28, 0x68, 0x02, 0x49, 0x40, 0x18, 0x06, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x28, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x98, 0x22, 0x00, 0x00
	.byte 0x6C, 0x51, 0xF5, 0x7F

	THUMB_FUNC_START sub_80135A4
sub_80135A4: @ 0x080135A4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135B4
sub_80135B4: @ 0x080135B4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135C4
sub_80135C4: @ 0x080135C4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135D4
sub_80135D4: @ 0x080135D4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135E4
sub_80135E4: @ 0x080135E4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135F4
sub_80135F4: @ 0x080135F4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013604
sub_8013604: @ 0x08013604
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013614
sub_8013614: @ 0x08013614
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013624
sub_8013624: @ 0x08013624
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013634
sub_8013634: @ 0x08013634
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013644
sub_8013644: @ 0x08013644
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801365C
sub_801365C: @ 0x0801365C
	push {r4, r5, lr}
	ldr r0, _08013694
	ldr r0, [r0]
	ldr r1, _08013698
	adds r0, r0, r1
	ldr r1, _0801369C
	str r1, [r0]
	movs r4, #0
	ldr r5, _080136A0
_0801366E:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080136A8
	adds r0, r1, #0
	bl sub_8040688
	cmp r0, #0
	bge _080136A8
	ldr r0, _08013694
	ldr r0, [r0]
	ldr r1, _08013698
	adds r0, r0, r1
	ldr r1, _080136A4
	str r1, [r0]
	b _080136B2
	.align 2, 0
_08013694: .4byte 0x08DFF6A4
_08013698: .4byte 0x00002298
_0801369C: .4byte 0x7EDE89F9
_080136A0: .4byte 0x02023FF8
_080136A4: .4byte 0x7FF5516A
_080136A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0801366E
_080136B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80136BC
sub_80136BC: @ 0x080136BC
	push {r4, r5, lr}
	ldr r4, _080136E0
	ldr r0, [r4]
	ldr r1, _080136E4
	adds r0, r0, r1
	ldr r5, _080136E8
	str r5, [r0]
	movs r0, #1
	movs r1, #3
	bl sub_804398C
	cmp r0, #0
	bne _080136EC
	ldr r0, [r4]
	ldr r1, _080136E4
	adds r0, r0, r1
	str r5, [r0]
	b _080136F6
	.align 2, 0
_080136E0: .4byte 0x08DFF6A4
_080136E4: .4byte 0x00002298
_080136E8: .4byte 0x7EDE89F9
_080136EC:
	ldr r0, [r4]
	ldr r1, _080136FC
	adds r0, r0, r1
	ldr r1, _08013700
	str r1, [r0]
_080136F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080136FC: .4byte 0x00002298
_08013700: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013708
sub_8013708: @ 0x08013708
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x49, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013720
sub_8013720: @ 0x08013720
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7
	.byte 0x3D, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801373C
sub_801373C: @ 0x0801373C
	push {r4, r5, lr}
	ldr r4, _08013760
	ldr r0, [r4]
	ldr r1, _08013764
	adds r0, r0, r1
	ldr r5, _08013768
	str r5, [r0]
	movs r0, #1
	movs r1, #0xa
	bl sub_804398C
	cmp r0, #0
	bne _0801376C
	ldr r0, [r4]
	ldr r1, _08013764
	adds r0, r0, r1
	str r5, [r0]
	b _08013776
	.align 2, 0
_08013760: .4byte 0x08DFF6A4
_08013764: .4byte 0x00002298
_08013768: .4byte 0x7EDE89F9
_0801376C:
	ldr r0, [r4]
	ldr r1, _0801377C
	adds r0, r0, r1
	ldr r1, _08013780
	str r1, [r0]
_08013776:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801377C: .4byte 0x00002298
_08013780: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013788
sub_8013788: @ 0x08013788
	push {r4, r5, lr}
	ldr r4, _080137AC
	ldr r0, [r4]
	ldr r1, _080137B0
	adds r0, r0, r1
	ldr r5, _080137B4
	str r5, [r0]
	movs r0, #1
	movs r1, #0x13
	bl sub_804398C
	cmp r0, #0
	bne _080137B8
	ldr r0, [r4]
	ldr r1, _080137B0
	adds r0, r0, r1
	str r5, [r0]
	b _080137C2
	.align 2, 0
_080137AC: .4byte 0x08DFF6A4
_080137B0: .4byte 0x00002298
_080137B4: .4byte 0x7EDE89F9
_080137B8:
	ldr r0, [r4]
	ldr r1, _080137C8
	adds r0, r0, r1
	ldr r1, _080137CC
	str r1, [r0]
_080137C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080137C8: .4byte 0x00002298
_080137CC: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80137D4
sub_80137D4: @ 0x080137D4
	push {r4, r5, lr}
	ldr r4, _080137F8
	ldr r0, [r4]
	ldr r1, _080137FC
	adds r0, r0, r1
	ldr r5, _08013800
	str r5, [r0]
	movs r0, #1
	movs r1, #0xd
	bl sub_804398C
	cmp r0, #0
	bne _08013804
	ldr r0, [r4]
	ldr r1, _080137FC
	adds r0, r0, r1
	str r5, [r0]
	b _0801380E
	.align 2, 0
_080137F8: .4byte 0x08DFF6A4
_080137FC: .4byte 0x00002298
_08013800: .4byte 0x7EDE89F9
_08013804:
	ldr r0, [r4]
	ldr r1, _08013814
	adds r0, r0, r1
	ldr r1, _08013818
	str r1, [r0]
_0801380E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013814: .4byte 0x00002298
_08013818: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013820
sub_8013820: @ 0x08013820
	push {r4, lr}
	movs r2, #0
	ldr r3, _08013848
	ldr r4, _0801384C
_08013828:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08013858
	ldrb r1, [r1, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08013858
	ldr r0, [r3]
	ldr r1, _08013850
	adds r0, r0, r1
	ldr r1, _08013854
	b _0801386A
	.align 2, 0
_08013848: .4byte 0x08DFF6A4
_0801384C: .4byte 0x020240C4
_08013850: .4byte 0x00002298
_08013854: .4byte 0x7FFFFFF0
_08013858:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08013828
	ldr r0, [r3]
	ldr r1, _08013874
	adds r0, r0, r1
	ldr r1, _08013878
_0801386A:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013874: .4byte 0x00002298
_08013878: .4byte 0x7EDE89F9
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013884
sub_8013884: @ 0x08013884
	push {lr}
	ldr r0, _0801389C
	bl sub_8043528
	cmp r0, #1
	bgt _080138AC
	ldr r0, _080138A0
	ldr r0, [r0]
	ldr r1, _080138A4
	adds r0, r0, r1
	ldr r1, _080138A8
	b _080138B6
	.align 2, 0
_0801389C: .4byte 0x02024020
_080138A0: .4byte 0x08DFF6A4
_080138A4: .4byte 0x00002298
_080138A8: .4byte 0x7EDE89F9
_080138AC:
	ldr r0, _080138BC
	ldr r0, [r0]
	ldr r1, _080138C0
	adds r0, r0, r1
	ldr r1, _080138C4
_080138B6:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080138BC: .4byte 0x08DFF6A4
_080138C0: .4byte 0x00002298
_080138C4: .4byte 0x7EEB5B44
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80138CC
sub_80138CC: @ 0x080138CC
	push {r4, r5, lr}
	ldr r0, _080138EC
	bl sub_8043528
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r5, #0
	bne _080138FC
	ldr r0, _080138F0
	ldr r0, [r0]
	ldr r1, _080138F4
	adds r0, r0, r1
	ldr r1, _080138F8
	b _08013942
	.align 2, 0
_080138EC: .4byte 0x020240C4
_080138F0: .4byte 0x08DFF6A4
_080138F4: .4byte 0x00002298
_080138F8: .4byte 0x7EDE89F9
_080138FC:
	ldr r4, _08013924
	bl sub_8058744
	ldr r1, _08013928
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0xc8
	muls r0, r5, r0
	cmp r1, r0
	bgt _08013938
	ldr r0, _0801392C
	ldr r0, [r0]
	ldr r1, _08013930
	adds r0, r0, r1
	ldr r1, _08013934
	b _08013942
	.align 2, 0
_08013924: .4byte 0x02024258
_08013928: .4byte 0x080AED54
_0801392C: .4byte 0x08DFF6A4
_08013930: .4byte 0x00002298
_08013934: .4byte 0x7FFFFFEF
_08013938:
	ldr r0, _0801394C
	ldr r0, [r0]
	ldr r1, _08013950
	adds r0, r0, r1
	ldr r1, _08013954
_08013942:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801394C: .4byte 0x08DFF6A4
_08013950: .4byte 0x00002298
_08013954: .4byte 0x7FFFFFFF
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801395C
sub_801395C: @ 0x0801395C
	push {r4, r5, lr}
	ldr r4, _08013980
	ldr r0, [r4]
	ldr r1, _08013984
	adds r0, r0, r1
	ldr r5, _08013988
	str r5, [r0]
	movs r0, #1
	movs r1, #2
	bl sub_804398C
	cmp r0, #0
	bne _0801398C
	ldr r0, [r4]
	ldr r1, _08013984
	adds r0, r0, r1
	str r5, [r0]
	b _08013996
	.align 2, 0
_08013980: .4byte 0x08DFF6A4
_08013984: .4byte 0x00002298
_08013988: .4byte 0x7EDE89F9
_0801398C:
	ldr r0, [r4]
	ldr r1, _0801399C
	adds r0, r0, r1
	ldr r1, _080139A0
	str r1, [r0]
_08013996:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801399C: .4byte 0x00002298
_080139A0: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80139A8
sub_80139A8: @ 0x080139A8
	push {r4, r5, lr}
	ldr r4, _080139CC
	ldr r0, [r4]
	ldr r1, _080139D0
	adds r0, r0, r1
	ldr r5, _080139D4
	str r5, [r0]
	movs r0, #1
	movs r1, #8
	bl sub_804398C
	cmp r0, #0
	bne _080139D8
	ldr r0, [r4]
	ldr r1, _080139D0
	adds r0, r0, r1
	str r5, [r0]
	b _080139E2
	.align 2, 0
_080139CC: .4byte 0x08DFF6A4
_080139D0: .4byte 0x00002298
_080139D4: .4byte 0x7EDE89F9
_080139D8:
	ldr r0, [r4]
	ldr r1, _080139E8
	adds r0, r0, r1
	ldr r1, _080139EC
	str r1, [r0]
_080139E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080139E8: .4byte 0x00002298
_080139EC: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80139F4
sub_80139F4: @ 0x080139F4
	push {r4, lr}
	ldr r4, _08013A10
	adds r0, r4, #0
	movs r1, #0x3a
	bl sub_80433E4
	cmp r0, #0
	bne _08013A20
	ldr r0, _08013A14
	ldr r0, [r0]
	ldr r1, _08013A18
	adds r0, r0, r1
	ldr r1, _08013A1C
	b _08013A4E
	.align 2, 0
_08013A10: .4byte 0x02023FF8
_08013A14: .4byte 0x08DFF6A4
_08013A18: .4byte 0x00002298
_08013A1C: .4byte 0x7EDE89F9
_08013A20:
	adds r0, r4, #0
	bl sub_8043528
	cmp r0, #0
	bne _08013A44
	ldr r0, _08013A38
	ldr r0, [r0]
	ldr r1, _08013A3C
	adds r0, r0, r1
	ldr r1, _08013A40
	b _08013A4E
	.align 2, 0
_08013A38: .4byte 0x08DFF6A4
_08013A3C: .4byte 0x00002298
_08013A40: .4byte 0x7EDE89F9
_08013A44:
	ldr r0, _08013A58
	ldr r0, [r0]
	ldr r1, _08013A5C
	adds r0, r0, r1
	ldr r1, _08013A60
_08013A4E:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013A58: .4byte 0x08DFF6A4
_08013A5C: .4byte 0x00002298
_08013A60: .4byte 0x7FF32E7F
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013A68
sub_8013A68: @ 0x08013A68
	push {r4, lr}
	ldr r4, _08013A84
	adds r0, r4, #0
	bl sub_8043528
	cmp r0, #0
	bne _08013A94
	ldr r0, _08013A88
	ldr r0, [r0]
	ldr r1, _08013A8C
	adds r0, r0, r1
	ldr r1, _08013A90
	b _08013AC2
	.align 2, 0
_08013A84: .4byte 0x02023FF8
_08013A88: .4byte 0x08DFF6A4
_08013A8C: .4byte 0x00002298
_08013A90: .4byte 0x7EDE89F9
_08013A94:
	adds r0, r4, #0
	subs r0, #0x14
	bl sub_8043538
	cmp r0, #5
	bne _08013AB8
	ldr r0, _08013AAC
	ldr r0, [r0]
	ldr r1, _08013AB0
	adds r0, r0, r1
	ldr r1, _08013AB4
	b _08013AC2
	.align 2, 0
_08013AAC: .4byte 0x08DFF6A4
_08013AB0: .4byte 0x00002298
_08013AB4: .4byte 0x7EDE89F9
_08013AB8:
	ldr r0, _08013ACC
	ldr r0, [r0]
	ldr r1, _08013AD0
	adds r0, r0, r1
	ldr r1, _08013AD4
_08013AC2:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013ACC: .4byte 0x08DFF6A4
_08013AD0: .4byte 0x00002298
_08013AD4: .4byte 0x7FF99746
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013ADC
sub_8013ADC: @ 0x08013ADC
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8013B24
sub_8013B24: @ 0x08013B24
	push {r4, lr}
	ldr r4, _08013B40
	adds r0, r4, #0
	bl sub_8043528
	cmp r0, #0
	bne _08013B50
	ldr r0, _08013B44
	ldr r0, [r0]
	ldr r1, _08013B48
	adds r0, r0, r1
	ldr r1, _08013B4C
	b _08013B7E
	.align 2, 0
_08013B40: .4byte 0x02023FF8
_08013B44: .4byte 0x08DFF6A4
_08013B48: .4byte 0x00002298
_08013B4C: .4byte 0x7EDE89F9
_08013B50:
	adds r0, r4, #0
	subs r0, #0x14
	bl sub_8043538
	cmp r0, #5
	bne _08013B74
	ldr r0, _08013B68
	ldr r0, [r0]
	ldr r1, _08013B6C
	adds r0, r0, r1
	ldr r1, _08013B70
	b _08013B7E
	.align 2, 0
_08013B68: .4byte 0x08DFF6A4
_08013B6C: .4byte 0x00002298
_08013B70: .4byte 0x7EDE89F9
_08013B74:
	ldr r0, _08013B88
	ldr r0, [r0]
	ldr r1, _08013B8C
	adds r0, r0, r1
	ldr r1, _08013B90
_08013B7E:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B88: .4byte 0x08DFF6A4
_08013B8C: .4byte 0x00002298
_08013B90: .4byte 0x7FF99746
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013B98
sub_8013B98: @ 0x08013B98
	push {lr}
	ldr r0, _08013BB0
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013BC0
	ldr r0, _08013BB4
	ldr r0, [r0]
	ldr r1, _08013BB8
	adds r0, r0, r1
	ldr r1, _08013BBC
	b _08013BF2
	.align 2, 0
_08013BB0: .4byte 0x02023FC0
_08013BB4: .4byte 0x08DFF6A4
_08013BB8: .4byte 0x00002298
_08013BBC: .4byte 0x7EDE89F9
_08013BC0:
	ldr r0, _08013BD8
	bl sub_8043528
	cmp r0, #0
	bne _08013BE8
	ldr r0, _08013BDC
	ldr r0, [r0]
	ldr r1, _08013BE0
	adds r0, r0, r1
	ldr r1, _08013BE4
	b _08013BF2
	.align 2, 0
_08013BD8: .4byte 0x02023FF8
_08013BDC: .4byte 0x08DFF6A4
_08013BE0: .4byte 0x00002298
_08013BE4: .4byte 0x7EDE89F9
_08013BE8:
	ldr r0, _08013BF8
	ldr r0, [r0]
	ldr r1, _08013BFC
	adds r0, r0, r1
	ldr r1, _08013C00
_08013BF2:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08013BF8: .4byte 0x08DFF6A4
_08013BFC: .4byte 0x00002298
_08013C00: .4byte 0x7FB3183D
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8013C40
sub_8013C40: @ 0x08013C40
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFD, 0xF7
	.byte 0xAD, 0xFE, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013C58
sub_8013C58: @ 0x08013C58
	push {lr}
	ldr r0, _08013C70
	bl sub_8043538
	cmp r0, #5
	bne _08013C80
	ldr r0, _08013C74
	ldr r0, [r0]
	ldr r1, _08013C78
	adds r0, r0, r1
	ldr r1, _08013C7C
	b _08013C8A
	.align 2, 0
_08013C70: .4byte 0x02023FE4
_08013C74: .4byte 0x08DFF6A4
_08013C78: .4byte 0x00002298
_08013C7C: .4byte 0x7EDE89F9
_08013C80:
	ldr r0, _08013C90
	ldr r0, [r0]
	ldr r1, _08013C94
	adds r0, r0, r1
	ldr r1, _08013C98
_08013C8A:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08013C90: .4byte 0x08DFF6A4
_08013C94: .4byte 0x00002298
_08013C98: .4byte 0x7FF7745C
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x48, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28
	.byte 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x45, 0x5B, 0xEB, 0x7E, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013D20
sub_8013D20: @ 0x08013D20
	push {r4, lr}
	ldr r4, _08013D3C
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #5
	beq _08013D4C
	ldr r0, _08013D40
	ldr r0, [r0]
	ldr r1, _08013D44
	adds r0, r0, r1
	ldr r1, _08013D48
	b _08013D86
	.align 2, 0
_08013D3C: .4byte 0x02023FF8
_08013D40: .4byte 0x08DFF6A4
_08013D44: .4byte 0x00002298
_08013D48: .4byte 0x7EDE89F9
_08013D4C:
	adds r0, r4, #0
	subs r0, #0x14
	bl sub_8043538
	cmp r0, #5
	bne _08013D7C
	adds r0, r4, #0
	subs r0, #0x28
	bl sub_8043528
	cmp r0, #5
	bne _08013D7C
	ldr r0, _08013D70
	ldr r0, [r0]
	ldr r1, _08013D74
	adds r0, r0, r1
	ldr r1, _08013D78
	b _08013D86
	.align 2, 0
_08013D70: .4byte 0x08DFF6A4
_08013D74: .4byte 0x00002298
_08013D78: .4byte 0x7EDE89F9
_08013D7C:
	ldr r0, _08013D90
	ldr r0, [r0]
	ldr r1, _08013D94
	adds r0, r0, r1
	ldr r1, _08013D98
_08013D86:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013D90: .4byte 0x08DFF6A4
_08013D94: .4byte 0x00002298
_08013D98: .4byte 0x7FFFFFFD
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013DA0
sub_8013DA0: @ 0x08013DA0
	push {r4, lr}
	ldr r4, _08013DBC
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #5
	beq _08013DCC
	ldr r0, _08013DC0
	ldr r0, [r0]
	ldr r1, _08013DC4
	adds r0, r0, r1
	ldr r1, _08013DC8
	b _08013E06
	.align 2, 0
_08013DBC: .4byte 0x02023FF8
_08013DC0: .4byte 0x08DFF6A4
_08013DC4: .4byte 0x00002298
_08013DC8: .4byte 0x7EDE89F9
_08013DCC:
	adds r0, r4, #0
	subs r0, #0x14
	bl sub_8043538
	cmp r0, #5
	bne _08013DFC
	adds r0, r4, #0
	subs r0, #0x28
	bl sub_8043528
	cmp r0, #5
	bne _08013DFC
	ldr r0, _08013DF0
	ldr r0, [r0]
	ldr r1, _08013DF4
	adds r0, r0, r1
	ldr r1, _08013DF8
	b _08013E06
	.align 2, 0
_08013DF0: .4byte 0x08DFF6A4
_08013DF4: .4byte 0x00002298
_08013DF8: .4byte 0x7EDE89F9
_08013DFC:
	ldr r0, _08013E10
	ldr r0, [r0]
	ldr r1, _08013E14
	adds r0, r0, r1
	ldr r1, _08013E18
_08013E06:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013E10: .4byte 0x08DFF6A4
_08013E14: .4byte 0x00002298
_08013E18: .4byte 0x7FFFFFFE
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8013FB0
sub_8013FB0: @ 0x08013FB0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFD, 0xF7
	.byte 0xF5, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8014348
sub_8014348: @ 0x08014348
	push {lr}
	bl sub_80124D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8014354
sub_8014354: @ 0x08014354
	push {lr}
	ldr r0, _08014384
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _08014388
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r1, _0801438C
	ldr r0, _08014390
	ldrb r0, [r0, #0x1a]
	strb r0, [r1]
	bl sub_80124F8
	pop {r0}
	bx r0
	.align 2, 0
_08014384: .4byte 0x02021C00
_08014388: .4byte 0x02023FD0
_0801438C: .4byte 0x0201CB40
_08014390: .4byte 0x02021AD0
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8016464
sub_8016464: @ 0x08016464
	push {r4, r5, r6, r7, lr}
	ldr r6, _08016484
	adds r0, r6, #0
	bl sub_8043528
	movs r1, #5
	subs r7, r1, r0
	cmp r7, #0
	bne _08016494
	ldr r0, _08016488
	ldr r0, [r0]
	ldr r1, _0801648C
	adds r0, r0, r1
	ldr r1, _08016490
	b _080164DE
	.align 2, 0
_08016484: .4byte 0x02023FE4
_08016488: .4byte 0x08DFF6A4
_0801648C: .4byte 0x00002298
_08016490: .4byte 0x7EDE89F9
_08016494:
	movs r5, #0
	movs r4, #0
_08016498:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080164AE
	bl sub_802607C
	cmp r0, #1
	bne _080164AE
	adds r5, #1
_080164AE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016498
	cmp r7, r5
	bne _080164D4
	ldr r0, _080164C8
	ldr r0, [r0]
	ldr r1, _080164CC
	adds r0, r0, r1
	ldr r1, _080164D0
	b _080164DE
	.align 2, 0
_080164C8: .4byte 0x08DFF6A4
_080164CC: .4byte 0x00002298
_080164D0: .4byte 0x7EDE89F9
_080164D4:
	ldr r0, _080164E8
	ldr r0, [r0]
	ldr r1, _080164EC
	adds r0, r0, r1
	ldr r1, _080164F0
_080164DE:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080164E8: .4byte 0x08DFF6A4
_080164EC: .4byte 0x00002298
_080164F0: .4byte 0x7FFBBA26

	THUMB_FUNC_START sub_80164F4
sub_80164F4: @ 0x080164F4
	push {r4, r5, r6, r7, lr}
	ldr r6, _08016514
	adds r0, r6, #0
	bl sub_8043528
	movs r1, #5
	subs r7, r1, r0
	cmp r7, #0
	bne _08016524
	ldr r0, _08016518
	ldr r0, [r0]
	ldr r1, _0801651C
	adds r0, r0, r1
	ldr r1, _08016520
	b _0801656E
	.align 2, 0
_08016514: .4byte 0x02023FE4
_08016518: .4byte 0x08DFF6A4
_0801651C: .4byte 0x00002298
_08016520: .4byte 0x7EDE89F9
_08016524:
	movs r5, #0
	movs r4, #0
_08016528:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801653E
	bl sub_802607C
	cmp r0, #1
	bne _0801653E
	adds r5, #1
_0801653E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016528
	cmp r7, r5
	bne _08016564
	ldr r0, _08016558
	ldr r0, [r0]
	ldr r1, _0801655C
	adds r0, r0, r1
	ldr r1, _08016560
	b _0801656E
	.align 2, 0
_08016558: .4byte 0x08DFF6A4
_0801655C: .4byte 0x00002298
_08016560: .4byte 0x7EDE89F9
_08016564:
	ldr r0, _08016578
	ldr r0, [r0]
	ldr r1, _0801657C
	adds r0, r0, r1
	ldr r1, _08016580
_0801656E:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016578: .4byte 0x08DFF6A4
_0801657C: .4byte 0x00002298
_08016580: .4byte 0x7FFDDD06

	THUMB_FUNC_START sub_8016584
sub_8016584: @ 0x08016584
	push {r4, r5, lr}
	movs r3, #0
	ldr r0, _080165D0
	adds r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #6
	bne _080165E4
	movs r2, #0
	ldr r4, _080165D4
	movs r5, #0x10
_08016598:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	bne _080165B4
	ldrb r1, [r1, #5]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080165B4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080165B4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08016598
	cmp r3, #0
	bne _080165E4
	ldr r0, _080165D8
	ldr r0, [r0]
	ldr r1, _080165DC
	adds r0, r0, r1
	ldr r1, _080165E0
	str r1, [r0]
	b _080165F4
	.align 2, 0
_080165D0: .4byte 0x02023EC0
_080165D4: .4byte 0x02023FF8
_080165D8: .4byte 0x08DFF6A4
_080165DC: .4byte 0x00002298
_080165E0: .4byte 0x7EDE89F9
_080165E4:
	movs r0, #2
	bl sub_80432D0
	ldr r1, _080165FC
	ldr r1, [r1]
	ldr r2, _08016600
	adds r1, r1, r2
	str r0, [r1]
_080165F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080165FC: .4byte 0x08DFF6A4
_08016600: .4byte 0x00002298

	THUMB_FUNC_START sub_8016604
sub_8016604: @ 0x08016604
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	movs r4, #0
	ldr r0, _08016654
	ldrb r3, [r0, #3]
	ldr r5, _08016658
_08016614:
	cmp r3, r4
	beq _08016638
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _08016638
	cmp r1, #0x59
	beq _08016638
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08016638
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08016638:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016614
	cmp r2, #0
	bne _08016668
	ldr r0, _0801665C
	ldr r0, [r0]
	ldr r1, _08016660
	adds r0, r0, r1
	ldr r1, _08016664
	b _0801671A
	.align 2, 0
_08016654: .4byte 0x02024250
_08016658: .4byte 0x02023FF8
_0801665C: .4byte 0x08DFF6A4
_08016660: .4byte 0x00002298
_08016664: .4byte 0x7EDE89F9
_08016668:
	movs r6, #0
	movs r4, #0
	ldr r0, _080166BC
	mov r8, r0
	ldr r5, _080166C0
	ldr r7, _080166C4
_08016674:
	lsls r0, r4, #2
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r2]
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080166A2
	cmp r1, #0x59
	beq _080166A2
	strh r0, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #2]
	ldr r0, [r2]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _080166C8
	ldrh r0, [r0, #0x12]
	adds r6, r6, r0
_080166A2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016674
	cmp r6, #0
	bne _080166D8
	ldr r0, _080166CC
	ldr r0, [r0]
	ldr r1, _080166D0
	adds r0, r0, r1
	ldr r1, _080166D4
	b _0801671A
	.align 2, 0
_080166BC: .4byte 0x02023FF8
_080166C0: .4byte 0x02021AC0
_080166C4: .4byte 0x02023FB0
_080166C8: .4byte 0x02021AD0
_080166CC: .4byte 0x08DFF6A4
_080166D0: .4byte 0x00002298
_080166D4: .4byte 0x7EDE89F9
_080166D8:
	ldr r4, _080166FC
	bl sub_8058744
	ldr r1, _08016700
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, r6
	bhi _08016710
	ldr r0, _08016704
	ldr r0, [r0]
	ldr r1, _08016708
	adds r0, r0, r1
	ldr r1, _0801670C
	b _0801671A
	.align 2, 0
_080166FC: .4byte 0x02024258
_08016700: .4byte 0x080AED54
_08016704: .4byte 0x08DFF6A4
_08016708: .4byte 0x00002298
_0801670C: .4byte 0x7FFFFFFF
_08016710:
	ldr r0, _08016728
	ldr r0, [r0]
	ldr r1, _0801672C
	adds r0, r0, r1
	ldr r1, _08016730
_0801671A:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016728: .4byte 0x08DFF6A4
_0801672C: .4byte 0x00002298
_08016730: .4byte 0x7FFFFFEE

	THUMB_FUNC_START sub_8016734
sub_8016734: @ 0x08016734
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	movs r5, #0
	ldr r0, _0801679C
	mov sb, r0
	ldr r4, _080167A0
	ldr r1, _080167A4
	mov r8, r1
	movs r7, #0xfa
	lsls r7, r7, #1
_0801674E:
	lsls r0, r5, #2
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08016780
	strh r0, [r4]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080167A8
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bhi _08016780
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08016780:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0801674E
	cmp r6, #0
	bne _080167B8
	ldr r0, _080167AC
	ldr r0, [r0]
	ldr r1, _080167B0
	adds r0, r0, r1
	ldr r1, _080167B4
	b _080167C2
	.align 2, 0
_0801679C: .4byte 0x02023FF8
_080167A0: .4byte 0x02021AC0
_080167A4: .4byte 0x02023FB0
_080167A8: .4byte 0x02021AD0
_080167AC: .4byte 0x08DFF6A4
_080167B0: .4byte 0x00002298
_080167B4: .4byte 0x7EDE89F9
_080167B8:
	ldr r0, _080167D0
	ldr r0, [r0]
	ldr r2, _080167D4
	adds r0, r0, r2
	ldr r1, _080167D8
_080167C2:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080167D0: .4byte 0x08DFF6A4
_080167D4: .4byte 0x00002298
_080167D8: .4byte 0x7EF2D56F

	THUMB_FUNC_START sub_80167DC
sub_80167DC: @ 0x080167DC
	push {r4, r5, lr}
	ldr r0, _08016828
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _0801682C
	ldr r3, _08016830
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08016834
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08016838
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08016848
	ldr r0, _0801683C
	ldr r0, [r0]
	ldr r1, _08016840
	adds r0, r0, r1
	ldr r1, _08016844
	b _0801688A
	.align 2, 0
_08016828: .4byte 0x02021C00
_0801682C: .4byte 0x02021AC0
_08016830: .4byte 0x02023FD0
_08016834: .4byte 0x02023EC0
_08016838: .4byte 0x02021AD0
_0801683C: .4byte 0x08DFF6A4
_08016840: .4byte 0x00002298
_08016844: .4byte 0x7EDE89F9
_08016848:
	ldr r4, _0801686C
	bl sub_8058744
	ldr r1, _08016870
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _08016880
	ldr r0, _08016874
	ldr r0, [r0]
	ldr r1, _08016878
	adds r0, r0, r1
	ldr r1, _0801687C
	b _0801688A
	.align 2, 0
_0801686C: .4byte 0x02024258
_08016870: .4byte 0x080AED54
_08016874: .4byte 0x08DFF6A4
_08016878: .4byte 0x00002298
_0801687C: .4byte 0x7FFFFFFF
_08016880:
	ldr r0, _08016894
	ldr r0, [r0]
	ldr r1, _08016898
	adds r0, r0, r1
	ldr r1, _0801689C
_0801688A:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016894: .4byte 0x08DFF6A4
_08016898: .4byte 0x00002298
_0801689C: .4byte 0x7FFFFFEB

	THUMB_FUNC_START sub_80168A0
sub_80168A0: @ 0x080168A0
	push {r4, r5, lr}
	ldr r0, _080168EC
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _080168F0
	ldr r3, _080168F4
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _080168F8
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _080168FC
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _0801690C
	ldr r0, _08016900
	ldr r0, [r0]
	ldr r1, _08016904
	adds r0, r0, r1
	ldr r1, _08016908
	b _0801694E
	.align 2, 0
_080168EC: .4byte 0x02021C00
_080168F0: .4byte 0x02021AC0
_080168F4: .4byte 0x02023FD0
_080168F8: .4byte 0x02023EC0
_080168FC: .4byte 0x02021AD0
_08016900: .4byte 0x08DFF6A4
_08016904: .4byte 0x00002298
_08016908: .4byte 0x7EDE89F9
_0801690C:
	ldr r4, _08016930
	bl sub_8058744
	ldr r1, _08016934
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _08016944
	ldr r0, _08016938
	ldr r0, [r0]
	ldr r1, _0801693C
	adds r0, r0, r1
	ldr r1, _08016940
	b _0801694E
	.align 2, 0
_08016930: .4byte 0x02024258
_08016934: .4byte 0x080AED54
_08016938: .4byte 0x08DFF6A4
_0801693C: .4byte 0x00002298
_08016940: .4byte 0x7FFFFFFF
_08016944:
	ldr r0, _08016958
	ldr r0, [r0]
	ldr r1, _0801695C
	adds r0, r0, r1
	ldr r1, _08016960
_0801694E:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016958: .4byte 0x08DFF6A4
_0801695C: .4byte 0x00002298
_08016960: .4byte 0x7FFFFFEA

	THUMB_FUNC_START sub_8016964
sub_8016964: @ 0x08016964
	push {r4, r5, r6, lr}
	ldr r5, _08016994
	bl sub_8058744
	ldr r6, _08016998
	adds r0, r0, r6
	ldrb r4, [r0]
	lsls r4, r4, #1
	adds r4, r4, r5
	bl sub_8058744
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _080169A8
	ldr r0, _0801699C
	ldr r0, [r0]
	ldr r1, _080169A0
	adds r0, r0, r1
	ldr r1, _080169A4
	b _080169E6
	.align 2, 0
_08016994: .4byte 0x02024258
_08016998: .4byte 0x080AED54
_0801699C: .4byte 0x08DFF6A4
_080169A0: .4byte 0x00002298
_080169A4: .4byte 0x7FFFFFFF
_080169A8:
	bl sub_8058744
	adds r0, r0, r6
	ldrb r4, [r0]
	lsls r4, r4, #1
	adds r4, r4, r5
	bl sub_8058744
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bne _080169DC
	ldr r0, _080169D0
	ldr r0, [r0]
	ldr r1, _080169D4
	adds r0, r0, r1
	ldr r1, _080169D8
	b _080169E6
	.align 2, 0
_080169D0: .4byte 0x08DFF6A4
_080169D4: .4byte 0x00002298
_080169D8: .4byte 0x7FFFFFE7
_080169DC:
	ldr r0, _080169F0
	ldr r0, [r0]
	ldr r1, _080169F4
	adds r0, r0, r1
	ldr r1, _080169F8
_080169E6:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080169F0: .4byte 0x08DFF6A4
_080169F4: .4byte 0x00002298
_080169F8: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80169FC
sub_80169FC: @ 0x080169FC
	push {r4, r5, lr}
	ldr r5, _08016A18
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #5
	bne _08016A28
	ldr r0, _08016A1C
	ldr r0, [r0]
	ldr r1, _08016A20
	adds r0, r0, r1
	ldr r1, _08016A24
	b _08016ACA
	.align 2, 0
_08016A18: .4byte 0x02023FE4
_08016A1C: .4byte 0x08DFF6A4
_08016A20: .4byte 0x00002298
_08016A24: .4byte 0x7EDE89F9
_08016A28:
	movs r0, #1
	bl sub_8043810
	cmp r0, #0
	beq _08016AC0
	adds r0, r5, #0
	bl sub_80430D8
	lsls r0, r0, #0x18
	ldr r4, _08016A70
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r1, _08016A74
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08016A78
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08016A88
	ldr r0, _08016A7C
	ldr r0, [r0]
	ldr r1, _08016A80
	adds r0, r0, r1
	ldr r1, _08016A84
	b _08016ACA
	.align 2, 0
_08016A70: .4byte 0x02021AC0
_08016A74: .4byte 0x02023EC0
_08016A78: .4byte 0x02021AD0
_08016A7C: .4byte 0x08DFF6A4
_08016A80: .4byte 0x00002298
_08016A84: .4byte 0x7EDE89F9
_08016A88:
	ldr r4, _08016AAC
	bl sub_8058744
	ldr r1, _08016AB0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r5, #0x12]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08016AC0
	ldr r0, _08016AB4
	ldr r0, [r0]
	ldr r1, _08016AB8
	adds r0, r0, r1
	ldr r1, _08016ABC
	b _08016ACA
	.align 2, 0
_08016AAC: .4byte 0x02024258
_08016AB0: .4byte 0x080AED54
_08016AB4: .4byte 0x08DFF6A4
_08016AB8: .4byte 0x00002298
_08016ABC: .4byte 0x7FFFFFFF
_08016AC0:
	ldr r0, _08016AD4
	ldr r0, [r0]
	ldr r1, _08016AD8
	adds r0, r0, r1
	ldr r1, _08016ADC
_08016ACA:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016AD4: .4byte 0x08DFF6A4
_08016AD8: .4byte 0x00002298
_08016ADC: .4byte 0x7FFFFFE9

	THUMB_FUNC_START sub_8016AE0
sub_8016AE0: @ 0x08016AE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08016B00
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #5
	bne _08016B10
	ldr r0, _08016B04
	ldr r0, [r0]
	ldr r1, _08016B08
	adds r0, r0, r1
	ldr r1, _08016B0C
	b _08016BB2
	.align 2, 0
_08016B00: .4byte 0x02023FE4
_08016B04: .4byte 0x08DFF6A4
_08016B08: .4byte 0x00002298
_08016B0C: .4byte 0x7EDE89F9
_08016B10:
	adds r0, r4, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	adds r7, r4, #0
	subs r7, #0x14
	lsrs r0, r0, #0x16
	adds r3, r0, r4
	ldr r2, [r3]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016BA8
	ldr r4, _08016B8C
	ldrh r0, [r2]
	strh r0, [r4]
	ldr r5, _08016B90
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _08016B94
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, _08016B98
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _08016BA8
	ldr r0, _08016B9C
	ldr r0, [r0]
	ldr r1, _08016BA0
	adds r0, r0, r1
	ldr r1, _08016BA4
	b _08016BB2
	.align 2, 0
_08016B8C: .4byte 0x02021AC0
_08016B90: .4byte 0x02023EC0
_08016B94: .4byte 0x02021AD0
_08016B98: .4byte 0x02021C00
_08016B9C: .4byte 0x08DFF6A4
_08016BA0: .4byte 0x00002298
_08016BA4: .4byte 0x7EDE89F9
_08016BA8:
	ldr r0, _08016BC0
	ldr r0, [r0]
	ldr r1, _08016BC4
	adds r0, r0, r1
	ldr r1, _08016BC8
_08016BB2:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016BC0: .4byte 0x08DFF6A4
_08016BC4: .4byte 0x00002298
_08016BC8: .4byte 0x7FF55170

	THUMB_FUNC_START sub_8016BCC
sub_8016BCC: @ 0x08016BCC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r5, _08016BF0
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_8043584
	cmp r0, #0
	bne _08016C00
	ldr r0, _08016BF4
	ldr r0, [r0]
	ldr r1, _08016BF8
	adds r0, r0, r1
	ldr r1, _08016BFC
	b _08016C9E
	.align 2, 0
_08016BF0: .4byte 0x02024020
_08016BF4: .4byte 0x08DFF6A4
_08016BF8: .4byte 0x00002298
_08016BFC: .4byte 0x7EDE89F9
_08016C00:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_8043164
	lsls r0, r0, #0x18
	ldr r4, _08016C78
	movs r1, #0x50
	rsbs r1, r1, #0
	adds r1, r1, r5
	mov sb, r1
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r5, _08016C7C
	adds r5, #0xf0
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _08016C80
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, _08016C84
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _08016C94
	ldr r0, _08016C88
	ldr r0, [r0]
	ldr r1, _08016C8C
	adds r0, r0, r1
	ldr r1, _08016C90
	b _08016C9E
	.align 2, 0
_08016C78: .4byte 0x02021AC0
_08016C7C: .4byte 0x02023EC0
_08016C80: .4byte 0x02021AD0
_08016C84: .4byte 0x02021C00
_08016C88: .4byte 0x08DFF6A4
_08016C8C: .4byte 0x00002298
_08016C90: .4byte 0x7EDE89F9
_08016C94:
	ldr r0, _08016CAC
	ldr r0, [r0]
	ldr r1, _08016CB0
	adds r0, r0, r1
	ldr r1, _08016CB4
_08016C9E:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016CAC: .4byte 0x08DFF6A4
_08016CB0: .4byte 0x00002298
_08016CB4: .4byte 0x7FB3183C

	THUMB_FUNC_START sub_8016CB8
sub_8016CB8: @ 0x08016CB8
	push {r4, r5, lr}
	ldr r0, _08016D04
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08016D08
	ldr r3, _08016D0C
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08016D10
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08016D14
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08016D24
	ldr r0, _08016D18
	ldr r0, [r0]
	ldr r1, _08016D1C
	adds r0, r0, r1
	ldr r1, _08016D20
	b _08016D66
	.align 2, 0
_08016D04: .4byte 0x02021C00
_08016D08: .4byte 0x02021AC0
_08016D0C: .4byte 0x02023FD0
_08016D10: .4byte 0x02023EC0
_08016D14: .4byte 0x02021AD0
_08016D18: .4byte 0x08DFF6A4
_08016D1C: .4byte 0x00002298
_08016D20: .4byte 0x7EDE89F9
_08016D24:
	ldr r4, _08016D48
	bl sub_8058744
	ldr r1, _08016D4C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _08016D5C
	ldr r0, _08016D50
	ldr r0, [r0]
	ldr r1, _08016D54
	adds r0, r0, r1
	ldr r1, _08016D58
	b _08016D66
	.align 2, 0
_08016D48: .4byte 0x02024258
_08016D4C: .4byte 0x080AED54
_08016D50: .4byte 0x08DFF6A4
_08016D54: .4byte 0x00002298
_08016D58: .4byte 0x7FFFFFFF
_08016D5C:
	ldr r0, _08016D70
	ldr r0, [r0]
	ldr r1, _08016D74
	adds r0, r0, r1
	ldr r1, _08016D78
_08016D66:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016D70: .4byte 0x08DFF6A4
_08016D74: .4byte 0x00002298
_08016D78: .4byte 0x7FFFFFED

	THUMB_FUNC_START sub_8016D7C
sub_8016D7C: @ 0x08016D7C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08016D94
	bl sub_8043528
	cmp r0, #0
	bne _08016DA4
	ldr r0, _08016D98
	ldr r0, [r0]
	ldr r1, _08016D9C
	adds r0, r0, r1
	ldr r1, _08016DA0
	b _08016E82
	.align 2, 0
_08016D94: .4byte 0x020240C4
_08016D98: .4byte 0x08DFF6A4
_08016D9C: .4byte 0x00002298
_08016DA0: .4byte 0x7EDE89F9
_08016DA4:
	movs r5, #0
	movs r4, #0
	ldr r6, _08016E08
_08016DAA:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016DC4
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016DC4
	adds r5, #1
_08016DC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016DAA
	movs r4, #0
	ldr r6, _08016E0C
_08016DD2:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016DEC
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016DEC
	adds r5, #1
_08016DEC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016DD2
	cmp r5, #0
	bne _08016E1C
	ldr r0, _08016E10
	ldr r0, [r0]
	ldr r1, _08016E14
	adds r0, r0, r1
	ldr r1, _08016E18
	b _08016E82
	.align 2, 0
_08016E08: .4byte 0x02023FE4
_08016E0C: .4byte 0x02023FD0
_08016E10: .4byte 0x08DFF6A4
_08016E14: .4byte 0x00002298
_08016E18: .4byte 0x7EDE89F9
_08016E1C:
	ldr r0, _08016E64
	ldrb r0, [r0, #2]
	movs r6, #0xf
	ands r6, r0
	movs r5, #0
	movs r4, #0
	ldr r7, _08016E68
_08016E2A:
	cmp r4, r6
	beq _08016E48
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016E48
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016E48
	adds r5, #1
_08016E48:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016E2A
	cmp r5, #0
	beq _08016E78
	ldr r0, _08016E6C
	ldr r0, [r0]
	ldr r1, _08016E70
	adds r0, r0, r1
	ldr r1, _08016E74
	b _08016E82
	.align 2, 0
_08016E64: .4byte 0x02021C00
_08016E68: .4byte 0x02023FF8
_08016E6C: .4byte 0x08DFF6A4
_08016E70: .4byte 0x00002298
_08016E74: .4byte 0x7EDE89F9
_08016E78:
	ldr r0, _08016E8C
	ldr r0, [r0]
	ldr r1, _08016E90
	adds r0, r0, r1
	ldr r1, _08016E94
_08016E82:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016E8C: .4byte 0x08DFF6A4
_08016E90: .4byte 0x00002298
_08016E94: .4byte 0x7FF5516D

	THUMB_FUNC_START sub_8016E98
sub_8016E98: @ 0x08016E98
	push {r4, r5, r6, lr}
	ldr r0, _08016EB0
	bl sub_8043528
	cmp r0, #5
	bne _08016EC0
	ldr r0, _08016EB4
	ldr r0, [r0]
	ldr r1, _08016EB8
	adds r0, r0, r1
	ldr r1, _08016EBC
	b _08016F1A
	.align 2, 0
_08016EB0: .4byte 0x020240B0
_08016EB4: .4byte 0x08DFF6A4
_08016EB8: .4byte 0x00002298
_08016EBC: .4byte 0x7EDE89F9
_08016EC0:
	movs r5, #0
	movs r4, #0
	ldr r6, _08016F00
_08016EC6:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016EE6
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08016EE6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08016EE6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016EC6
	cmp r5, #0
	bne _08016F10
	ldr r0, _08016F04
	ldr r0, [r0]
	ldr r1, _08016F08
	adds r0, r0, r1
	ldr r1, _08016F0C
	b _08016F1A
	.align 2, 0
_08016F00: .4byte 0x02023FD0
_08016F04: .4byte 0x08DFF6A4
_08016F08: .4byte 0x00002298
_08016F0C: .4byte 0x7EDE89F9
_08016F10:
	ldr r0, _08016F24
	ldr r0, [r0]
	ldr r1, _08016F28
	adds r0, r0, r1
	ldr r1, _08016F2C
_08016F1A:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016F24: .4byte 0x08DFF6A4
_08016F28: .4byte 0x00002298
_08016F2C: .4byte 0x7FFFFFF3

	THUMB_FUNC_START sub_8016F30
sub_8016F30: @ 0x08016F30
	push {r4, r5, r6, lr}
	ldr r0, _08016F48
	bl sub_8043528
	cmp r0, #5
	bne _08016F58
	ldr r0, _08016F4C
	ldr r0, [r0]
	ldr r1, _08016F50
	adds r0, r0, r1
	ldr r1, _08016F54
	b _08016FB2
	.align 2, 0
_08016F48: .4byte 0x020240B0
_08016F4C: .4byte 0x08DFF6A4
_08016F50: .4byte 0x00002298
_08016F54: .4byte 0x7EDE89F9
_08016F58:
	movs r5, #0
	movs r4, #0
	ldr r6, _08016F98
_08016F5E:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016F7C
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016F7C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08016F7C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016F5E
	cmp r5, #0
	bne _08016FA8
	ldr r0, _08016F9C
	ldr r0, [r0]
	ldr r1, _08016FA0
	adds r0, r0, r1
	ldr r1, _08016FA4
	b _08016FB2
	.align 2, 0
_08016F98: .4byte 0x02023FD0
_08016F9C: .4byte 0x08DFF6A4
_08016FA0: .4byte 0x00002298
_08016FA4: .4byte 0x7EDE89F9
_08016FA8:
	ldr r0, _08016FBC
	ldr r0, [r0]
	ldr r1, _08016FC0
	adds r0, r0, r1
	ldr r1, _08016FC4
_08016FB2:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016FBC: .4byte 0x08DFF6A4
_08016FC0: .4byte 0x00002298
_08016FC4: .4byte 0x7FFFFFF2

	THUMB_FUNC_START sub_8016FC8
sub_8016FC8: @ 0x08016FC8
	push {r4, r5, r6, lr}
	ldr r0, _08016FE0
	bl sub_8043528
	cmp r0, #5
	bne _08016FF0
	ldr r0, _08016FE4
	ldr r0, [r0]
	ldr r1, _08016FE8
	adds r0, r0, r1
	ldr r1, _08016FEC
	b _0801704A
	.align 2, 0
_08016FE0: .4byte 0x020240B0
_08016FE4: .4byte 0x08DFF6A4
_08016FE8: .4byte 0x00002298
_08016FEC: .4byte 0x7EDE89F9
_08016FF0:
	movs r5, #0
	movs r4, #0
	ldr r6, _08017030
_08016FF6:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08017014
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08017014
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08017014:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016FF6
	cmp r5, #0
	bne _08017040
	ldr r0, _08017034
	ldr r0, [r0]
	ldr r1, _08017038
	adds r0, r0, r1
	ldr r1, _0801703C
	b _0801704A
	.align 2, 0
_08017030: .4byte 0x02023FE4
_08017034: .4byte 0x08DFF6A4
_08017038: .4byte 0x00002298
_0801703C: .4byte 0x7EDE89F9
_08017040:
	ldr r0, _08017054
	ldr r0, [r0]
	ldr r1, _08017058
	adds r0, r0, r1
	ldr r1, _0801705C
_0801704A:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017054: .4byte 0x08DFF6A4
_08017058: .4byte 0x00002298
_0801705C: .4byte 0x7FF5516E

	THUMB_FUNC_START sub_8017060
sub_8017060: @ 0x08017060
	push {r4, r5, r6, r7, lr}
	ldr r0, _08017078
	bl sub_8043528
	cmp r0, #5
	bne _08017088
	ldr r0, _0801707C
	ldr r0, [r0]
	ldr r1, _08017080
	adds r0, r0, r1
	ldr r1, _08017084
	b _080170EE
	.align 2, 0
_08017078: .4byte 0x020240B0
_0801707C: .4byte 0x08DFF6A4
_08017080: .4byte 0x00002298
_08017084: .4byte 0x7EDE89F9
_08017088:
	movs r6, #0
	movs r5, #0
	ldr r7, _080170D4
_0801708E:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _080170B8
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080170B2
	ldrh r0, [r4]
	bl sub_802607C
	cmp r0, #1
	beq _080170B8
_080170B2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080170B8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0801708E
	cmp r6, #0
	bne _080170E4
	ldr r0, _080170D8
	ldr r0, [r0]
	ldr r1, _080170DC
	adds r0, r0, r1
	ldr r1, _080170E0
	b _080170EE
	.align 2, 0
_080170D4: .4byte 0x02023FE4
_080170D8: .4byte 0x08DFF6A4
_080170DC: .4byte 0x00002298
_080170E0: .4byte 0x7EDE89F9
_080170E4:
	ldr r0, _080170F8
	ldr r0, [r0]
	ldr r1, _080170FC
	adds r0, r0, r1
	ldr r1, _08017100
_080170EE:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080170F8: .4byte 0x08DFF6A4
_080170FC: .4byte 0x00002298
_08017100: .4byte 0x7FF5516F

	THUMB_FUNC_START sub_8017104
sub_8017104: @ 0x08017104
	push {lr}
	ldr r0, _08017120
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _08017124
	cmp r1, r0
	beq _08017134
	ldr r0, _08017128
	ldr r0, [r0]
	ldr r1, _0801712C
	adds r0, r0, r1
	ldr r1, _08017130
	b _080171C6
	.align 2, 0
_08017120: .4byte 0x02023FC0
_08017124: .4byte 0x00000239
_08017128: .4byte 0x08DFF6A4
_0801712C: .4byte 0x00002298
_08017130: .4byte 0x7EDE89F9
_08017134:
	bl sub_8058744
	cmp r0, #0
	bne _08017168
	ldr r0, _08017154
	ldrh r1, [r0]
	ldr r0, _08017158
	cmp r1, r0
	bhi _08017194
	ldr r0, _0801715C
	ldr r0, [r0]
	ldr r1, _08017160
	adds r0, r0, r1
	ldr r1, _08017164
	b _080171C6
	.align 2, 0
_08017154: .4byte 0x02024258
_08017158: .4byte 0x000003E7
_0801715C: .4byte 0x08DFF6A4
_08017160: .4byte 0x00002298
_08017164: .4byte 0x7EDE89F9
_08017168:
	ldr r0, _08017180
	ldrh r1, [r0, #2]
	ldr r0, _08017184
	cmp r1, r0
	bhi _08017194
	ldr r0, _08017188
	ldr r0, [r0]
	ldr r1, _0801718C
	adds r0, r0, r1
	ldr r1, _08017190
	b _080171C6
	.align 2, 0
_08017180: .4byte 0x02024258
_08017184: .4byte 0x000003E7
_08017188: .4byte 0x08DFF6A4
_0801718C: .4byte 0x00002298
_08017190: .4byte 0x7EDE89F9
_08017194:
	ldr r0, _080171AC
	bl sub_8043528
	cmp r0, #0
	bgt _080171BC
	ldr r0, _080171B0
	ldr r0, [r0]
	ldr r1, _080171B4
	adds r0, r0, r1
	ldr r1, _080171B8
	b _080171C6
	.align 2, 0
_080171AC: .4byte 0x02023FF8
_080171B0: .4byte 0x08DFF6A4
_080171B4: .4byte 0x00002298
_080171B8: .4byte 0x7EDE89F9
_080171BC:
	ldr r0, _080171CC
	ldr r0, [r0]
	ldr r1, _080171D0
	adds r0, r0, r1
	ldr r1, _080171D4
_080171C6:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080171CC: .4byte 0x08DFF6A4
_080171D0: .4byte 0x00002298
_080171D4: .4byte 0x7FF32E86

	THUMB_FUNC_START sub_80171D8
sub_80171D8: @ 0x080171D8
	push {r4, r5, lr}
	ldr r0, _08017224
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08017228
	ldr r3, _0801722C
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08017230
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08017234
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08017244
	ldr r0, _08017238
	ldr r0, [r0]
	ldr r1, _0801723C
	adds r0, r0, r1
	ldr r1, _08017240
	b _08017286
	.align 2, 0
_08017224: .4byte 0x02021C00
_08017228: .4byte 0x02021AC0
_0801722C: .4byte 0x02023FD0
_08017230: .4byte 0x02023EC0
_08017234: .4byte 0x02021AD0
_08017238: .4byte 0x08DFF6A4
_0801723C: .4byte 0x00002298
_08017240: .4byte 0x7EDE89F9
_08017244:
	ldr r4, _08017268
	bl sub_8058744
	ldr r1, _0801726C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _0801727C
	ldr r0, _08017270
	ldr r0, [r0]
	ldr r1, _08017274
	adds r0, r0, r1
	ldr r1, _08017278
	b _08017286
	.align 2, 0
_08017268: .4byte 0x02024258
_0801726C: .4byte 0x080AED54
_08017270: .4byte 0x08DFF6A4
_08017274: .4byte 0x00002298
_08017278: .4byte 0x7FFFFFFF
_0801727C:
	ldr r0, _08017290
	ldr r0, [r0]
	ldr r1, _08017294
	adds r0, r0, r1
	ldr r1, _08017298
_08017286:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017290: .4byte 0x08DFF6A4
_08017294: .4byte 0x00002298
_08017298: .4byte 0x7FFFFFEC

	THUMB_FUNC_START sub_801729C
sub_801729C: @ 0x0801729C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080172C0
	bl sub_8043528
	cmp r0, #5
	bne _080172D0
	ldr r0, _080172C4
	ldr r0, [r0]
	ldr r1, _080172C8
	adds r0, r0, r1
	ldr r1, _080172CC
	b _080174BA
	.align 2, 0
_080172C0: .4byte 0x02023FE4
_080172C4: .4byte 0x08DFF6A4
_080172C8: .4byte 0x00002298
_080172CC: .4byte 0x7EDE89F9
_080172D0:
	bl sub_8058744
	cmp r0, #0
	bne _080172E8
	ldr r0, _080172E4
	ldrh r2, [r0, #2]
	mov sl, r2
	ldrh r0, [r0]
	b _080172F0
	.align 2, 0
_080172E4: .4byte 0x02024258
_080172E8:
	ldr r0, _080173BC
	ldrh r1, [r0]
	mov sl, r1
	ldrh r0, [r0, #2]
_080172F0:
	str r0, [sp, #4]
	ldr r0, _080173C0
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _080173C4
	ldr r3, _080173C8
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _080173CC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080173D0
	ldrh r2, [r0, #0x12]
	mov sb, r2
	ldrb r0, [r0, #0x17]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08017430
	mov r1, sl
	cmp r1, #0
	ble _08017436
_08017348:
	ldr r0, _080173C8
	ldr r2, [sp, #8]
	lsls r1, r2, #2
	adds r0, #0x14
	adds r1, r1, r0
	ldr r4, [r1]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08017410
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08017410
	ldrh r0, [r4]
	ldr r1, _080173C4
	strh r0, [r1]
	ldr r0, _080173CC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r4, #0
	bl sub_804069C
	ldr r2, _080173C4
	strb r0, [r2, #3]
	adds r0, r2, #0
	bl sub_800B318
	ldr r0, _080173D0
	ldrh r5, [r0, #0x12]
	adds r7, r5, #0
	ldrh r6, [r0, #0x14]
	mov r8, r6
	ldrb r0, [r0, #0x17]
	ldr r1, [sp]
	bl sub_803FBCC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080173EE
	cmp r0, #0
	bne _080173D4
	ldrb r1, [r4, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080173F8
	cmp sb, r5
	bls _080173F8
	mov r1, sb
	subs r0, r1, r5
	mov r2, sl
	subs r2, r2, r0
	mov sl, r2
	b _080173F8
	.align 2, 0
_080173BC: .4byte 0x02024258
_080173C0: .4byte 0x02021C00
_080173C4: .4byte 0x02021AC0
_080173C8: .4byte 0x02023FD0
_080173CC: .4byte 0x02023EC0
_080173D0: .4byte 0x02021AD0
_080173D4:
	ldrb r1, [r4, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080173F4
	cmp sb, r7
	bls _080173EE
	mov r1, sb
	subs r0, r1, r7
	mov r2, sl
	subs r2, r2, r0
	mov sl, r2
	b _080173F8
_080173EE:
	movs r0, #0
	str r0, [sp, #0x10]
	b _08017410
_080173F4:
	cmp sb, r6
	bls _08017404
_080173F8:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	b _08017410
_08017404:
	mov r1, r8
	mov r2, sb
	subs r0, r1, r2
	ldr r1, [sp, #4]
	subs r1, r1, r0
	str r1, [sp, #4]
_08017410:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08017430
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08017430
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08017430
	mov r1, sl
	cmp r1, #0
	bgt _08017348
_08017430:
	mov r2, sl
	cmp r2, #0
	bgt _08017450
_08017436:
	ldr r0, _08017444
	ldr r0, [r0]
	ldr r1, _08017448
	adds r0, r0, r1
	ldr r1, _0801744C
	b _080174BA
	.align 2, 0
_08017444: .4byte 0x08DFF6A4
_08017448: .4byte 0x00002298
_0801744C: .4byte 0x7FFFFFFF
_08017450:
	ldr r2, [sp, #4]
	cmp r2, #0
	bgt _08017470
	ldr r0, _08017464
	ldr r0, [r0]
	ldr r1, _08017468
	adds r0, r0, r1
	ldr r1, _0801746C
	b _080174BA
	.align 2, 0
_08017464: .4byte 0x08DFF6A4
_08017468: .4byte 0x00002298
_0801746C: .4byte 0x7EDE89F9
_08017470:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne _08017490
	ldr r0, _08017484
	ldr r0, [r0]
	ldr r1, _08017488
	adds r0, r0, r1
	ldr r1, _0801748C
	b _080174BA
	.align 2, 0
_08017484: .4byte 0x08DFF6A4
_08017488: .4byte 0x00002298
_0801748C: .4byte 0x7EDE89F9
_08017490:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080174B0
	ldr r0, _080174A4
	ldr r0, [r0]
	ldr r1, _080174A8
	adds r0, r0, r1
	ldr r1, _080174AC
	b _080174BA
	.align 2, 0
_080174A4: .4byte 0x08DFF6A4
_080174A8: .4byte 0x00002298
_080174AC: .4byte 0x7EDE89F9
_080174B0:
	ldr r0, _080174CC
	ldr r0, [r0]
	ldr r2, _080174D0
	adds r0, r0, r2
	ldr r1, _080174D4
_080174BA:
	str r1, [r0]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080174CC: .4byte 0x08DFF6A4
_080174D0: .4byte 0x00002298
_080174D4: .4byte 0x7EF1C3F5

	THUMB_FUNC_START sub_80174D8
sub_80174D8: @ 0x080174D8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	ldr r7, _08017534
_080174E0:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801750A
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08017504
	ldrh r0, [r4]
	bl sub_802607C
	cmp r0, #1
	beq _0801750A
_08017504:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0801750A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080174E0
	ldr r0, _08017538
	bl sub_8043528
	subs r0, #5
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08017548
	ldr r0, _0801753C
	ldr r0, [r0]
	ldr r1, _08017540
	adds r0, r0, r1
	ldr r1, _08017544
	b _08017552
	.align 2, 0
_08017534: .4byte 0x02023FE4
_08017538: .4byte 0x02023FD0
_0801753C: .4byte 0x08DFF6A4
_08017540: .4byte 0x00002298
_08017544: .4byte 0x7EDE89F9
_08017548:
	ldr r0, _0801755C
	ldr r0, [r0]
	ldr r1, _08017560
	adds r0, r0, r1
	ldr r1, _08017564
_08017552:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801755C: .4byte 0x08DFF6A4
_08017560: .4byte 0x00002298
_08017564: .4byte 0x7FF99745

	THUMB_FUNC_START sub_8017568
sub_8017568: @ 0x08017568
	push {lr}
	ldr r1, _08017580
	ldr r0, _08017584
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_08017580: .4byte 0x08E00330
_08017584: .4byte 0x0201CB44

	THUMB_FUNC_START sub_8017588
sub_8017588: @ 0x08017588
	push {lr}
	ldr r0, _080175C4
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _080175C8
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r2, _080175CC
	ldr r1, _080175D0
	ldrb r0, [r1, #0x1b]
	strb r0, [r2]
	ldr r2, _080175D4
	ldrb r0, [r1, #0x1b]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_080175C4: .4byte 0x02021C00
_080175C8: .4byte 0x02023FD0
_080175CC: .4byte 0x0201CB44
_080175D0: .4byte 0x02021AD0
_080175D4: .4byte 0x08E00150
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x10, 0xB5, 0x07, 0x4A, 0x10, 0x68, 0x07, 0x49, 0x44, 0x18, 0x07, 0x48, 0x20, 0x60, 0x00, 0x23
	.byte 0x06, 0x49, 0x08, 0x68, 0x00, 0x88, 0x00, 0x28, 0x0C, 0xD0, 0x05, 0x48, 0x20, 0x60, 0x19, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x04, 0x2B, 0x0A, 0xD8, 0x98, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0xF4, 0xD0, 0x10, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x98, 0x22, 0x00, 0x00
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x41, 0xF0, 0x63, 0xF8, 0x00, 0x06
	.byte 0x07, 0x49, 0xC0, 0x0D, 0x40, 0x18, 0x01, 0x88, 0x06, 0x48, 0x40, 0x1A, 0x06, 0x49, 0x88, 0x42
	.byte 0x12, 0xDC, 0x06, 0x48, 0x00, 0x68, 0x06, 0x49, 0x40, 0x18, 0x06, 0x49, 0x11, 0xE0, 0x00, 0x00
	.byte 0x58, 0x42, 0x02, 0x02, 0xE8, 0xFD, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xA3, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x20, 0xFF, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x20, 0x40, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xA1, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x07, 0x48, 0xC1, 0x21, 0x49, 0x00
	.byte 0x2B, 0xF0, 0x58, 0xFE, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0xB9, 0xFD, 0x03, 0x49
	.byte 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68
	.byte 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0xA2, 0xFD, 0x21, 0x68, 0x81, 0x42
	.byte 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xDA, 0x83, 0xFD, 0x7E, 0x28, 0x68, 0x80, 0x19
	.byte 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x07, 0x48, 0xC1, 0x21, 0x49, 0x00
	.byte 0x2B, 0xF0, 0x10, 0xFE, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x71, 0xFD, 0x03, 0x49
	.byte 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68
	.byte 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x5A, 0xFD, 0x21, 0x68, 0x81, 0x42
	.byte 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x78, 0xD5, 0xF2, 0x7E, 0x28, 0x68, 0x80, 0x19
	.byte 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x06, 0x4C, 0x20, 0x1C, 0x04, 0x21
	.byte 0x2B, 0xF0, 0xC8, 0xFD, 0x00, 0x28, 0x0D, 0xDD, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x1E, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x67, 0xD5, 0xF2, 0x7E, 0x20, 0x1C, 0x23, 0x21, 0x2B, 0xF0, 0xB4, 0xFD, 0x00, 0x28, 0x0B, 0xDD
	.byte 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x67, 0xD5, 0xF2, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D
	.byte 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20
	.byte 0x2B, 0xF0, 0xFE, 0xFC, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49
	.byte 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0xBF, 0xD1, 0xDD, 0x7F, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x07, 0x48, 0x01, 0x21, 0x2B, 0xF0, 0x6D, 0xFD, 0x00, 0x28, 0x0E, 0xDD, 0x02, 0x20
	.byte 0x2B, 0xF0, 0xDE, 0xFC, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x0B, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0xB8, 0xFC
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x79, 0xD5, 0xF2, 0x7E
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x06, 0x48
	.byte 0xF0, 0x30, 0x00, 0x78, 0x02, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x89, 0xFC, 0x03, 0x49
	.byte 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68
	.byte 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x72, 0xFC, 0x21, 0x68, 0x81, 0x42
	.byte 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F, 0x28, 0x68, 0x80, 0x19
	.byte 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x01, 0x20, 0x0B, 0x21, 0x2B, 0xF0
	.byte 0xB5, 0xFF, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49
	.byte 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x55, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0
	.byte 0x1F, 0xFC, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x08, 0xFC
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x01, 0x20
	.byte 0x05, 0x21, 0x2B, 0xF0, 0x7F, 0xFF, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0x03, 0x49, 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x54, 0x74, 0xF7, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x06, 0x49, 0x2B, 0xF0, 0x53, 0xFC, 0x00, 0x28
	.byte 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x01, 0x60, 0x11, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0x77, 0x01, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0xB3, 0xFB, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A
	.byte 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42
	.byte 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x9C, 0xFB, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68
	.byte 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x77, 0xD5, 0xF2, 0x7E, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x70, 0xB5, 0x10, 0x4D, 0x28, 0x1C, 0x60, 0x21, 0x2B, 0xF0, 0x0A, 0xFC
	.byte 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x28, 0x1C, 0x61, 0x21, 0x2B, 0xF0, 0x03, 0xFC, 0x00, 0x06
	.byte 0x06, 0x0E, 0x28, 0x1C, 0x62, 0x21, 0x2B, 0xF0, 0xFD, 0xFB, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x2C
	.byte 0x12, 0xD1, 0x00, 0x2E, 0x10, 0xD1, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49
	.byte 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x0F, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x59, 0xFB, 0x04, 0x49
	.byte 0x09, 0x68, 0x04, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x40, 0xFB
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x76, 0xD5, 0xF2, 0x7E
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x52, 0xFC, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6B, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0xB5, 0x06, 0x4D, 0x28, 0x1C, 0x2B, 0xF0
	.byte 0x2B, 0xFC, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x35, 0xE0, 0x00, 0x00, 0x20, 0x40, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x28, 0x1C, 0x3C, 0x38, 0x2B, 0xF0, 0x16, 0xFC, 0x05, 0x24, 0x26, 0x1A
	.byte 0x28, 0x1C, 0x28, 0x38, 0x2B, 0xF0, 0x10, 0xFC, 0x24, 0x1A, 0x01, 0x2C, 0x0C, 0xD8, 0x03, 0x48
	.byte 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x19, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xA6, 0x42, 0x0B, 0xD3, 0x02, 0x48, 0x00, 0x68
	.byte 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xA0, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78
	.byte 0x03, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x9B, 0xFA, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A
	.byte 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42
	.byte 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x84, 0xFA, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68
	.byte 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xF0, 0xB5, 0x00, 0x26, 0x00, 0x25, 0x10, 0x4F, 0xA8, 0x00, 0xC0, 0x19
	.byte 0x04, 0x68, 0x20, 0x88, 0x00, 0x28, 0x0B, 0xD0, 0x0E, 0xF0, 0x38, 0xF9, 0x01, 0x28, 0x07, 0xD0
	.byte 0x20, 0x88, 0xF3, 0xF7, 0xE7, 0xFA, 0x0A, 0x48, 0x80, 0x7D, 0x01, 0x28, 0x00, 0xD1, 0x01, 0x36
	.byte 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E, 0x04, 0x2D, 0xE8, 0xD9, 0x00, 0x2E, 0x10, 0xD1, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x53, 0x74, 0xF7, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x56, 0xFB, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x66, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x3A, 0xFB, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x73, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x0E, 0xFB, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x9B, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0xEA, 0xFA, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xBB, 0x6C, 0xEC, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x21, 0x09, 0x4A, 0x10, 0x68, 0x00, 0x88, 0x23, 0x28, 0x00, 0xD1
	.byte 0x01, 0x21, 0x50, 0x68, 0x00, 0x88, 0x23, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x01, 0x29, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x75, 0xD5, 0xF2, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x02, 0x20
	.byte 0x14, 0x21, 0x2B, 0xF0, 0x9D, 0xFC, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0x03, 0x49, 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x73, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0xA1, 0x21, 0x2B, 0xF0, 0xD3, 0xF9, 0x00, 0x28
	.byte 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x71, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x06, 0x48, 0xA0, 0x21, 0x2B, 0xF0, 0xAD, 0xF9, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48
	.byte 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x70, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x2A, 0xFA, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9D, 0x8F, 0xEE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x40, 0xF0, 0x15, 0xFB, 0x00, 0x06, 0x07, 0x49, 0xC0, 0x0D
	.byte 0x40, 0x18, 0x01, 0x88, 0x06, 0x48, 0x40, 0x1A, 0x06, 0x49, 0x88, 0x42, 0x12, 0xDC, 0x06, 0x48
	.byte 0x00, 0x68, 0x06, 0x49, 0x40, 0x18, 0x06, 0x49, 0x11, 0xE0, 0x00, 0x00, 0x58, 0x42, 0x02, 0x02
	.byte 0xE8, 0xFD, 0x00, 0x00, 0xF3, 0x01, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xA2, 0x8F, 0xEE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x08, 0x4C, 0x40, 0xF0, 0xE4, 0xFA, 0x07, 0x49, 0x40, 0x18
	.byte 0x00, 0x78, 0x40, 0x00, 0x00, 0x19, 0x00, 0x88, 0x32, 0x28, 0x0F, 0xD8, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0E, 0xE0, 0x58, 0x42, 0x02, 0x02, 0x54, 0xED, 0x0A, 0x08
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xBA, 0x6C, 0xEC, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78, 0x05, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0
	.byte 0x67, 0xF8, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x50, 0xF8
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x00, 0x22, 0x00, 0x21, 0x0B, 0x4C, 0x0B, 0x4B, 0x88, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x00, 0x88, 0x00, 0x28, 0x02, 0xD0, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E, 0x48, 0x1C, 0x00, 0x06
	.byte 0x01, 0x0E, 0x04, 0x29, 0xF1, 0xD9, 0x00, 0x2A, 0x0C, 0xD1, 0x20, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0B, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0xC4, 0x40, 0x02, 0x02, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x98, 0x22, 0x00, 0x00, 0x48, 0x5B, 0xEB, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x30, 0xF9, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x81, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x06, 0x49, 0x2B, 0xF0
	.byte 0x69, 0xF8, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49
	.byte 0x0F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0x2A, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x6E, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x0C, 0x21, 0x2B, 0xF0
	.byte 0x41, 0xF8, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6D, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78, 0x01, 0x28, 0x0F, 0xD1
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x3E, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x02, 0x20, 0x2A, 0xF0, 0x7D, 0xFF, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D
	.byte 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20
	.byte 0x2A, 0xF0, 0x66, 0xFF, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49
	.byte 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x3F, 0x18, 0xB3, 0x7F, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x06, 0x48, 0xB7, 0x21, 0x49, 0x00, 0x2A, 0xF0, 0xD4, 0xFF, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x6D, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x52, 0xF8, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x85, 0x2E, 0xF3, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x2E, 0xF8, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x24, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x07, 0x4C, 0x40, 0xF0
	.byte 0x29, 0xF9, 0x40, 0x00, 0x00, 0x19, 0x01, 0x88, 0xFA, 0x20, 0x80, 0x00, 0x81, 0x42, 0x0D, 0xD8
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x58, 0x42, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6C, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x06, 0x4C, 0x20, 0x1C, 0x2A, 0xF0, 0xF7, 0xFF, 0x03, 0x28, 0x0E, 0xDC, 0x04, 0x48
	.byte 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x1F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x1C, 0x14, 0x38
	.byte 0x2A, 0xF0, 0xE2, 0xFF, 0x05, 0x28, 0x0B, 0xD1, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18
	.byte 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x72, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0xB6, 0xFF, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x1E, 0xE0, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0
	.byte 0x3D, 0xFA, 0x01, 0x28, 0x0C, 0xD0, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49
	.byte 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9C, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x80, 0xFF, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x84, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0xB5, 0x00, 0x25, 0x00, 0x24, 0x0E, 0x4E
	.byte 0xA0, 0x00, 0x80, 0x19, 0x00, 0x68, 0x00, 0x88, 0xF2, 0xF7, 0xB4, 0xFE, 0x0B, 0x48, 0xC0, 0x7D
	.byte 0x02, 0x28, 0x1B, 0xD0, 0x01, 0x28, 0x02, 0xD1, 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E, 0x60, 0x1C
	.byte 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xEB, 0xD9, 0x00, 0x2D, 0x1B, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x1A, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x48, 0x00, 0x68
	.byte 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x6B, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x14, 0xFF
	.byte 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9B, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0xB5, 0x00, 0x25, 0x00, 0x24, 0x0E, 0x4E, 0xA0, 0x00, 0x80, 0x19, 0x00, 0x68, 0x00, 0x88
	.byte 0xF2, 0xF7, 0x48, 0xFE, 0x0B, 0x48, 0xC0, 0x7D, 0x01, 0x28, 0x1B, 0xD0, 0x02, 0x28, 0x02, 0xD1
	.byte 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xEB, 0xD9
	.byte 0x00, 0x2D, 0x1B, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x1A, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6B, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x02, 0x20, 0x0A, 0x21, 0x2B, 0xF0
	.byte 0xA7, 0xF8, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x01, 0x20, 0x0A, 0x21, 0x2B, 0xF0, 0xCE, 0xF8
	.byte 0x24, 0x18, 0x24, 0x06, 0x00, 0x2C, 0x0B, 0xD1, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18
	.byte 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x69, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x09, 0x4C, 0x3F, 0xF0, 0x84, 0xFF, 0x08, 0x49, 0x40, 0x18
	.byte 0x00, 0x78, 0x40, 0x00, 0x00, 0x19, 0x01, 0x88, 0xFA, 0x20, 0x00, 0x01, 0x81, 0x42, 0x0F, 0xD8
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0E, 0xE0, 0x58, 0x42, 0x02, 0x02
	.byte 0x54, 0xED, 0x0A, 0x08, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x41, 0x97, 0xF9, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x04, 0x20, 0x2B, 0xF0, 0x02, 0xF8, 0x00, 0x28, 0x0B, 0xD1
	.byte 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x3A, 0x32, 0x08, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x00, 0xB5, 0x07, 0x48
	.byte 0xC1, 0x21, 0x49, 0x00, 0x2A, 0xF0, 0x0E, 0xFD, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2A, 0xF0
	.byte 0x6F, 0xFC, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2A, 0xF0, 0x58, 0xFC
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x7A, 0xD5, 0xF2, 0x7E
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x21, 0x09, 0x4A
	.byte 0x10, 0x68, 0x00, 0x88, 0x23, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x50, 0x68, 0x00, 0x88, 0x23, 0x28
	.byte 0x00, 0xD1, 0x01, 0x21, 0x01, 0x29, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xC0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x74, 0xD5, 0xF2, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C, 0x06, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x9A, 0xFC
	.byte 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x22, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xF5, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x84, 0xFC, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x8F, 0x01, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9B, 0xE0, 0x12, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x06, 0x4C, 0x06, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x5C, 0xFC, 0x00, 0x28, 0x0F, 0xD1
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x22, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xE2, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x05, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x46, 0xFC, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x8F, 0x01, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x9B, 0xE0, 0x12, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C
	.byte 0x06, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x1E, 0xFC, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x22, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xE2, 0x02, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x49, 0x20, 0x1C
	.byte 0x2A, 0xF0, 0x08, 0xFC, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xF5, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x9B, 0xE0, 0x12, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x00, 0x21, 0x2A, 0xF0
	.byte 0x83, 0xFC, 0x01, 0x28, 0x0E, 0xDC, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x49, 0x5B, 0xEB, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x5E, 0xFC, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x9F, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C
	.byte 0x20, 0x1C, 0x2A, 0xF0, 0x39, 0xFC, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49
	.byte 0x40, 0x18, 0x04, 0x49, 0x1F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x1C, 0x14, 0x38, 0x2A, 0xF0, 0x2C, 0xFC
	.byte 0x05, 0x28, 0x0B, 0xD1, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xE6, 0xFF, 0xFF, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x08, 0xFC, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x71, 0x51, 0xF5, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0xC8, 0xFB, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x40, 0x97, 0xF9, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0xA4, 0xFB
	.byte 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x3D, 0x97, 0xF9, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x07, 0x4A, 0x10, 0x68, 0x07, 0x49, 0x44, 0x18, 0x07, 0x48, 0x20, 0x60, 0x00, 0x23
	.byte 0x06, 0x49, 0x08, 0x68, 0x00, 0x88, 0x00, 0x28, 0x0C, 0xD0, 0x05, 0x48, 0x20, 0x60, 0x19, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x04, 0x2B, 0x0A, 0xD8, 0x98, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0xF4, 0xD0, 0x10, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x98, 0x22, 0x00, 0x00
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x01, 0x20, 0x01, 0x21, 0x2A, 0xF0
	.byte 0x75, 0xFD, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49
	.byte 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x68, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x28, 0xFB, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x57, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0xB5, 0x3F, 0xF0, 0x07, 0xFC, 0x07, 0x49, 0x40, 0x00, 0x40, 0x18, 0x01, 0x88, 0x06, 0x48
	.byte 0x40, 0x1A, 0x06, 0x49, 0x88, 0x42, 0x11, 0xDC, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18
	.byte 0x05, 0x49, 0x3A, 0xE0, 0x58, 0x42, 0x02, 0x02, 0xE8, 0xFD, 0x00, 0x00, 0xF3, 0x01, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x09, 0x4C, 0x20, 0x1C
	.byte 0x2A, 0xF0, 0xDA, 0xFA, 0x05, 0x25, 0x2E, 0x1A, 0x14, 0x34, 0x20, 0x1C, 0x2A, 0xF0, 0xD4, 0xFA
	.byte 0x2D, 0x1A, 0x01, 0x2D, 0x0E, 0xD8, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x1B, 0xE0, 0x00, 0x00, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0xAE, 0x42, 0x0B, 0xD3, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18
	.byte 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xE8, 0xFF, 0xFF, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x9C, 0xFA
	.byte 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9E, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x78, 0xFA, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x80, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x01, 0x21, 0x2A, 0xF0
	.byte 0x81, 0xFA, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x72, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xA4, 0x8F, 0xEE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x1E, 0xFA, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x83, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x05, 0x48
	.byte 0x2A, 0xF0, 0x02, 0xFA, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x2A, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x09, 0x4C, 0x3F, 0xF0, 0xF5, 0xFA, 0x09, 0x49, 0x40, 0x18, 0x00, 0x78
	.byte 0x40, 0x00, 0x00, 0x19, 0x01, 0x88, 0xFA, 0x20, 0x40, 0x00, 0x81, 0x42, 0x10, 0xD8, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0x58, 0x42, 0x02, 0x02
	.byte 0x54, 0xED, 0x0A, 0x08, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x58, 0x74, 0xF7, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C, 0x20, 0x1C, 0x2A, 0xF0
	.byte 0xB3, 0xF9, 0x05, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x21, 0xE0, 0x00, 0x00, 0x20, 0x40, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x1C, 0x50, 0x38, 0x15, 0x21, 0x2A, 0xF0, 0xCB, 0xF9, 0x00, 0x28
	.byte 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0B, 0xE0, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x5A, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C
	.byte 0x20, 0x1C, 0x2A, 0xF0, 0x59, 0xF9, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49
	.byte 0x40, 0x18, 0x04, 0x49, 0x21, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0xA2, 0xF8
	.byte 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0x2B, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x82, 0x2E, 0xF3, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x0C, 0x4D, 0x0C, 0x49, 0x28, 0x1C, 0x2A, 0xF0, 0x7A, 0xF8
	.byte 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x0A, 0x49, 0x28, 0x1C, 0x2A, 0xF0, 0x73, 0xF8, 0x00, 0x06
	.byte 0x00, 0x0E, 0x00, 0x2C, 0x14, 0xD1, 0x00, 0x28, 0x20, 0xD1, 0x06, 0x48, 0x00, 0x68, 0x06, 0x49
	.byte 0x40, 0x18, 0x06, 0x49, 0x1F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0x3F, 0x02, 0x00, 0x00
	.byte 0x4E, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x00, 0x28, 0x0B, 0xD0, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x88, 0x2E, 0xF3, 0x7F, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x87, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x30, 0xB5, 0x0C, 0x4D, 0x28, 0x1C, 0x95, 0x21, 0x2A, 0xF0, 0x34, 0xF8, 0x04, 0x1C, 0x24, 0x06
	.byte 0x24, 0x0E, 0x09, 0x49, 0x28, 0x1C, 0x2A, 0xF0, 0x2D, 0xF8, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x2C
	.byte 0x12, 0xD1, 0x00, 0x28, 0x1E, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49
	.byte 0x1D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0x4E, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x00, 0x28, 0x0B, 0xD0, 0x02, 0x48, 0x00, 0x68
	.byte 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x88, 0x2E, 0xF3, 0x7F, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x87, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x0C, 0x4D, 0x28, 0x1C, 0x95, 0x21
	.byte 0x29, 0xF0, 0xF0, 0xFF, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x09, 0x49, 0x28, 0x1C, 0x29, 0xF0
	.byte 0xE9, 0xFF, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x2C, 0x12, 0xD1, 0x00, 0x28, 0x1E, 0xD1, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x1D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0x3F, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x00, 0x28, 0x0B, 0xD0, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x88, 0x2E, 0xF3, 0x7F, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x87, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x3F, 0xF0, 0x55, 0xF9, 0x00, 0x28, 0x14, 0xD1, 0x05, 0x48
	.byte 0x01, 0x88, 0x05, 0x48, 0x81, 0x42, 0x25, 0xD8, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x38, 0xE0, 0x58, 0x42, 0x02, 0x02, 0xE7, 0x03, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x48, 0x41, 0x88, 0x05, 0x48, 0x81, 0x42
	.byte 0x10, 0xD8, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x23, 0xE0, 0x00, 0x00
	.byte 0x58, 0x42, 0x02, 0x02, 0xE7, 0x03, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x48, 0x2A, 0xF0, 0x17, 0xF8, 0x05, 0x28, 0x0E, 0xD1, 0x04, 0x48
	.byte 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x59, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x00, 0x26, 0x00, 0x25, 0x11, 0x4F
	.byte 0xA8, 0x00, 0xC0, 0x19, 0x04, 0x68, 0x20, 0x88, 0x00, 0x28, 0x0E, 0xD0, 0x20, 0x1C, 0x26, 0xF0
	.byte 0xFB, 0xFE, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x04, 0xD1, 0x20, 0x88, 0x0C, 0xF0, 0x86, 0xFD
	.byte 0x01, 0x28, 0x02, 0xD0, 0x70, 0x1C, 0x00, 0x06, 0x06, 0x0E, 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E
	.byte 0x04, 0x2D, 0xE5, 0xD9, 0x00, 0x2E, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x45, 0x97, 0xF9, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_80199B8
sub_80199B8: @ 0x080199B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r5, #0
	movs r1, #0
_080199C8:
	lsls r0, r1, #2
	ldr r2, _08019A30
	adds r0, r0, r2
	ldr r0, [r0]
	mov sl, r0
	ldrh r0, [r0]
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, #0
	beq _08019AB6
	ldr r1, _08019A34
	strh r0, [r1]
	ldr r2, _08019A38
	ldrb r0, [r2]
	strb r0, [r1, #2]
	mov r0, sl
	bl sub_804069C
	ldr r1, _08019A34
	strb r0, [r1, #3]
	adds r0, r1, #0
	bl sub_800B318
	ldr r2, _08019A3C
	ldrh r2, [r2, #0x12]
	mov r8, r2
	ldr r0, _08019A3C
	ldrh r7, [r0, #0x14]
	ldrb r1, [r0, #0x17]
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r6, _08019A40
	ldr r0, _08019A34
	mov sb, r0
_08019A0E:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	ldr r2, _08019A44
	adds r0, r0, r2
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08019AA8
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08019A48
	ldrb r0, [r6, #2]
	b _08019AA6
	.align 2, 0
_08019A30: .4byte 0x02023FF8
_08019A34: .4byte 0x02021AC0
_08019A38: .4byte 0x02023FB0
_08019A3C: .4byte 0x02021AD0
_08019A40: .4byte 0x08E00534
_08019A44: .4byte 0x02023FE4
_08019A48:
	ldrh r0, [r4]
	mov r1, sb
	strh r0, [r1]
	ldr r2, _08019A84
	ldrb r0, [r2]
	strb r0, [r1, #2]
	adds r0, r4, #0
	bl sub_804069C
	mov r1, sb
	strb r0, [r1, #3]
	mov r0, sb
	bl sub_800B318
	ldr r2, _08019A88
	ldrh r4, [r2, #0x12]
	ldrb r0, [r2, #0x17]
	ldr r1, [sp]
	bl sub_803FBCC
	mov r0, sl
	ldrb r1, [r0, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019A94
	cmp r8, r4
	bne _08019A8C
	ldrb r0, [r6, #1]
	b _08019AA6
	.align 2, 0
_08019A84: .4byte 0x02023FB0
_08019A88: .4byte 0x02021AD0
_08019A8C:
	cmp r8, r4
	bhs _08019AA4
	ldrb r0, [r6, #3]
	b _08019AA6
_08019A94:
	cmp r7, r4
	bne _08019A9C
	ldrb r0, [r6, #1]
	b _08019AA6
_08019A9C:
	cmp r7, r4
	bhs _08019AA4
	ldrb r0, [r6, #3]
	b _08019AA6
_08019AA4:
	ldrb r0, [r6]
_08019AA6:
	adds r5, r5, r0
_08019AA8:
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #4
	bls _08019A0E
_08019AB6:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _080199C8
	adds r0, r5, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x06, 0x1C, 0x08, 0x88
	.byte 0x00, 0x28, 0x05, 0xD1, 0x01, 0x48, 0x80, 0x79, 0x37, 0xE0, 0x00, 0x00, 0x38, 0x05, 0xE0, 0x08
	.byte 0x1D, 0x4C, 0x20, 0x80, 0x1D, 0x4D, 0xF0, 0x35, 0x28, 0x78, 0xA0, 0x70, 0x08, 0x1C, 0x26, 0xF0
	.byte 0xCD, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0x07, 0xFC, 0x19, 0x48, 0x40, 0x8A, 0x81, 0x46
	.byte 0x00, 0x20, 0x80, 0x46, 0x00, 0x27, 0x30, 0x88, 0x00, 0x28, 0x15, 0xD0, 0x20, 0x80, 0x28, 0x78
	.byte 0xA0, 0x70, 0x30, 0x1C, 0x26, 0xF0, 0xBA, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0xF4, 0xFB
	.byte 0x0F, 0x49, 0x88, 0x7E, 0x02, 0x28, 0x07, 0xD1, 0x49, 0x8A, 0x89, 0x45, 0x04, 0xD2, 0x40, 0x46
	.byte 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x08, 0x36, 0x78, 0x1C, 0x00, 0x06, 0x07, 0x0E
	.byte 0x04, 0x2F, 0xE0, 0xD9, 0x07, 0x48, 0x40, 0x44, 0x00, 0x78, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xC0, 0x1A, 0x02, 0x02, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x38, 0x05, 0xE0, 0x08, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4
	.byte 0x06, 0x1C, 0x08, 0x88, 0x00, 0x28, 0x05, 0xD1, 0x01, 0x48, 0x80, 0x79, 0x37, 0xE0, 0x00, 0x00
	.byte 0x3F, 0x05, 0xE0, 0x08, 0x1D, 0x4C, 0x20, 0x80, 0x1D, 0x4D, 0xF0, 0x35, 0x28, 0x78, 0xA0, 0x70
	.byte 0x08, 0x1C, 0x26, 0xF0, 0x7B, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0xB5, 0xFB, 0x19, 0x48
	.byte 0x80, 0x8A, 0x81, 0x46, 0x00, 0x20, 0x80, 0x46, 0x00, 0x27, 0x30, 0x88, 0x00, 0x28, 0x15, 0xD0
	.byte 0x20, 0x80, 0x28, 0x78, 0xA0, 0x70, 0x30, 0x1C, 0x26, 0xF0, 0x68, 0xFD, 0xE0, 0x70, 0x20, 0x1C
	.byte 0xF1, 0xF7, 0xA2, 0xFB, 0x0F, 0x49, 0x88, 0x7E, 0x02, 0x28, 0x07, 0xD1, 0x89, 0x8A, 0x89, 0x45
	.byte 0x04, 0xD2, 0x40, 0x46, 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x08, 0x36, 0x78, 0x1C
	.byte 0x00, 0x06, 0x07, 0x0E, 0x04, 0x2F, 0xE0, 0xD9, 0x07, 0x48, 0x40, 0x44, 0x00, 0x78, 0x18, 0xBC
	.byte 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xC0, 0x1A, 0x02, 0x02
	.byte 0xC0, 0x3E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x3F, 0x05, 0xE0, 0x08, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x06, 0x1C, 0x08, 0x88, 0x00, 0x28, 0x05, 0xD1, 0x01, 0x48, 0x80, 0x79
	.byte 0x3B, 0xE0, 0x00, 0x00, 0x46, 0x05, 0xE0, 0x08, 0x1F, 0x4C, 0x20, 0x80, 0x1F, 0x4D, 0xF0, 0x35
	.byte 0x28, 0x78, 0xA0, 0x70, 0x08, 0x1C, 0x26, 0xF0, 0x29, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7
	.byte 0x63, 0xFB, 0x1B, 0x48, 0x41, 0x8A, 0x80, 0x8A, 0x09, 0x18, 0x89, 0x46, 0x00, 0x20, 0x80, 0x46
	.byte 0x00, 0x27, 0x30, 0x88, 0x00, 0x28, 0x17, 0xD0, 0x20, 0x80, 0x28, 0x78, 0xA0, 0x70, 0x30, 0x1C
	.byte 0x26, 0xF0, 0x14, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0x4E, 0xFB, 0x10, 0x49, 0x88, 0x7E
	.byte 0x02, 0x28, 0x09, 0xD1, 0x48, 0x8A, 0x89, 0x8A, 0x40, 0x18, 0x81, 0x45, 0x04, 0xD2, 0x40, 0x46
	.byte 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x08, 0x36, 0x78, 0x1C, 0x00, 0x06, 0x07, 0x0E
	.byte 0x04, 0x2F, 0xDE, 0xD9, 0x07, 0x48, 0x40, 0x44, 0x00, 0x78, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xC0, 0x1A, 0x02, 0x02, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x46, 0x05, 0xE0, 0x08, 0x10, 0xB5, 0x00, 0xF0, 0x0B, 0xF8, 0x04, 0x1C
	.byte 0x65, 0x20, 0x44, 0x43, 0xFF, 0xF7, 0x70, 0xFE, 0x24, 0x18, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8019CE4
sub_8019CE4: @ 0x08019CE4
	push {r4, r5, r6, lr}
	ldr r6, _08019D1C
	adds r0, r6, #0
	bl sub_8043528
	adds r5, r0, #0
	movs r4, #5
	subs r5, r4, r5
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	subs r6, #0x14
	adds r0, r6, #0
	bl sub_8043528
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08019D20
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r4, r1
	ldrb r0, [r4]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08019D1C: .4byte 0x02023FF8
_08019D20: .4byte 0x08E00510

	THUMB_FUNC_START sub_8019D24
sub_8019D24: @ 0x08019D24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08019D54
	strh r0, [r1]
	ldr r2, _08019D58
	ldr r1, _08019D5C
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2]
	ldrb r1, [r0, #2]
	strb r1, [r2, #2]
	ldrb r1, [r0, #3]
	strb r1, [r2, #3]
	ldrb r1, [r0, #4]
	strb r1, [r2, #4]
	ldrb r1, [r0, #5]
	strb r1, [r2, #5]
	ldrb r1, [r0, #6]
	strb r1, [r2, #6]
	ldrb r0, [r0, #7]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_08019D54: .4byte 0x02021BF8
_08019D58: .4byte 0x02021C00
_08019D5C: .4byte 0x080AED58

	THUMB_FUNC_START sub_8019D60
sub_8019D60: @ 0x08019D60
	ldr r0, _08019D7C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08019D80
	movs r2, #0
	strh r2, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
_08019D7C: .4byte 0x02021BF8
_08019D80: .4byte 0x02021C00

	THUMB_FUNC_START sub_8019D84
sub_8019D84: @ 0x08019D84
	push {r4, r5, r6, lr}
	bl sub_802B6A8
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08019E5C
	bl sub_8029820
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08019E5C
	ldr r6, _08019DAC
	b _08019E40
	.align 2, 0
_08019DAC: .4byte 0x02021C08
_08019DB0:
	bl sub_8019D60
	bl sub_800F108
	movs r4, #0
	movs r0, #1
	strb r0, [r6]
	ldr r5, _08019E24
_08019DC0:
	adds r0, r4, #0
	bl sub_8019D24
	bl sub_801A08C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08019DEA
	bl sub_800EE24
	bl sub_800F1EC
	bl sub_800E0F8
	bl sub_8029820
	bl sub_800F248
	bl sub_800EE94
_08019DEA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bls _08019DC0
	movs r0, #0
	strb r0, [r6]
	bl sub_800EF0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08019E4C
	bl sub_8019D24
	bl sub_8019E64
	bl sub_800E0D4
	ldr r0, _08019E28
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08019E2C
	bl sub_801B66C
	bl sub_8040EF0
	b _08019E30
	.align 2, 0
_08019E24: .4byte 0x000003B1
_08019E28: .4byte 0x02023EA0
_08019E2C:
	bl sub_8041104
_08019E30:
	bl sub_8019F60
	bl sub_803EF64
	bl sub_80205D4
	bl sub_8029820
_08019E40:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08019DB0
_08019E4C:
	movs r4, #0
_08019E4E:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _08019E4E
_08019E5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8019E64
sub_8019E64: @ 0x08019E64
	push {r4, lr}
	sub sp, #8
	ldr r1, _08019E84
	ldrb r0, [r1, #2]
	lsrs r3, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldrh r0, [r1]
	cmp r0, #0x18
	bhi _08019F50
	lsls r0, r0, #2
	ldr r1, _08019E88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019E84: .4byte 0x02021C00
_08019E88: .4byte 0x08019E8C
_08019E8C: @ jump table
	.4byte _08019F50 @ case 0
	.4byte _08019F50 @ case 1
	.4byte _08019F50 @ case 2
	.4byte _08019F50 @ case 3
	.4byte _08019F50 @ case 4
	.4byte _08019F50 @ case 5
	.4byte _08019F50 @ case 6
	.4byte _08019EF0 @ case 7
	.4byte _08019EF0 @ case 8
	.4byte _08019EF0 @ case 9
	.4byte _08019EF0 @ case 10
	.4byte _08019F50 @ case 11
	.4byte _08019EF0 @ case 12
	.4byte _08019EF0 @ case 13
	.4byte _08019F50 @ case 14
	.4byte _08019F50 @ case 15
	.4byte _08019F50 @ case 16
	.4byte _08019F50 @ case 17
	.4byte _08019F50 @ case 18
	.4byte _08019F50 @ case 19
	.4byte _08019F50 @ case 20
	.4byte _08019F50 @ case 21
	.4byte _08019F50 @ case 22
	.4byte _08019F30 @ case 23
	.4byte _08019F50 @ case 24
_08019EF0:
	ldr r0, _08019F20
	ldrh r1, [r0, #0x30]
	ldr r0, _08019F24
	ldr r2, [sp]
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	ldr r1, _08019F28
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08019F2C
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	bl sub_801A008
	b _08019F50
	.align 2, 0
_08019F20: .4byte 0x02021D10
_08019F24: .4byte 0xFFFF0000
_08019F28: .4byte 0x02023FD0
_08019F2C: .4byte 0x0000FFFF
_08019F30:
	ldr r0, _08019F58
	ldrh r1, [r0, #0x30]
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08019F5C
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	mov r0, sp
	strh r1, [r0, #2]
	bl sub_801A028
_08019F50:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019F58: .4byte 0x02021D10
_08019F5C: .4byte 0x02023FD0

	THUMB_FUNC_START sub_8019F60
sub_8019F60: @ 0x08019F60
	push {lr}
	ldr r0, _08019F74
	ldrh r0, [r0]
	cmp r0, #0x18
	bhi _08019FF6
	lsls r0, r0, #2
	ldr r1, _08019F78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019F74: .4byte 0x02021C00
_08019F78: .4byte 0x08019F7C
_08019F7C: @ jump table
	.4byte _08019FF6 @ case 0
	.4byte _08019FE0 @ case 1
	.4byte _08019FE8 @ case 2
	.4byte _08019FE8 @ case 3
	.4byte _08019FE8 @ case 4
	.4byte _08019FF0 @ case 5
	.4byte _08019FF0 @ case 6
	.4byte _08019FF6 @ case 7
	.4byte _08019FF6 @ case 8
	.4byte _08019FF6 @ case 9
	.4byte _08019FF6 @ case 10
	.4byte _08019FE8 @ case 11
	.4byte _08019FF6 @ case 12
	.4byte _08019FF6 @ case 13
	.4byte _08019FE8 @ case 14
	.4byte _08019FE8 @ case 15
	.4byte _08019FF6 @ case 16
	.4byte _08019FF6 @ case 17
	.4byte _08019FE8 @ case 18
	.4byte _08019FF6 @ case 19
	.4byte _08019FF6 @ case 20
	.4byte _08019FE8 @ case 21
	.4byte _08019FF6 @ case 22
	.4byte _08019FF6 @ case 23
	.4byte _08019FF6 @ case 24
_08019FE0:
	movs r0, #0x3e
	bl sub_8034F60
	b _08019FF6
_08019FE8:
	movs r0, #0x3a
	bl sub_8034F60
	b _08019FF6
_08019FF0:
	movs r0, #0x3c
	bl sub_8034F60
_08019FF6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x3D, 0x20
	.byte 0x1A, 0xF0, 0xAE, 0xFF, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_801A008
sub_801A008: @ 0x0801A008
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801A024
	bl sub_801A048
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A01E
	ldrh r0, [r4, #4]
	bl sub_8034F60
_0801A01E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A024: .4byte 0x080B0AE8

	THUMB_FUNC_START sub_801A028
sub_801A028: @ 0x0801A028
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801A044
	bl sub_801A048
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A03E
	ldrh r0, [r4, #4]
	bl sub_8034F60
_0801A03E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A044: .4byte 0x080B0B18

	THUMB_FUNC_START sub_801A048
sub_801A048: @ 0x0801A048
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r3, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801A080
	ldrh r5, [r4]
_0801A056:
	lsls r0, r3, #3
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r5
	bne _0801A070
	ldrh r0, [r2, #2]
	ldrh r6, [r4, #2]
	cmp r0, r6
	bne _0801A070
	ldrh r0, [r2, #4]
	strh r0, [r4, #4]
	movs r0, #1
	b _0801A084
_0801A070:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801A056
_0801A080:
	movs r0, #0
	strh r0, [r4, #4]
_0801A084:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801A08C
sub_801A08C: @ 0x0801A08C
	push {lr}
	ldr r1, _0801A0A8
	ldr r0, _0801A0AC
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_0801A0A8: .4byte 0x08E00550
_0801A0AC: .4byte 0x02021C00

	THUMB_FUNC_START sub_801A0B0
sub_801A0B0: @ 0x0801A0B0
	push {r4, lr}
	ldr r0, _0801A0F0
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801A0F4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A0FC
	adds r0, r3, #0
	adds r0, #0x50
	bl sub_8043528
	cmp r0, #0
	bne _0801A0FC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A0F8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A0FC
	movs r0, #1
	b _0801A0FE
	.align 2, 0
_0801A0F0: .4byte 0x02021C00
_0801A0F4: .4byte 0x02023FD0
_0801A0F8: .4byte 0x02021AD0
_0801A0FC:
	movs r0, #0
_0801A0FE:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x0F, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40
	.byte 0x0D, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0x00, 0x28, 0x15, 0xD0, 0x18, 0x1C, 0x50, 0x30, 0x29, 0xF0, 0xFE, 0xF9, 0x00, 0x28, 0x0F, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0xF1, 0xF7, 0x56, 0xF9, 0x04, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x07, 0xD0
	.byte 0x01, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A158
sub_801A158: @ 0x0801A158
	push {r4, r5, r6, r7, lr}
	ldr r3, _0801A1C0
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _0801A1C4
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A1C8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A1BC
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A1BC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #0
	bne _0801A1BC
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801A1CC
	adds r0, r2, #0
	bl sub_80406D8
	cmp r0, #0
	beq _0801A1CC
_0801A1BC:
	movs r0, #0
	b _0801A1CE
	.align 2, 0
_0801A1C0: .4byte 0x02021C00
_0801A1C4: .4byte 0x02023FD0
_0801A1C8: .4byte 0x02021AD0
_0801A1CC:
	movs r0, #1
_0801A1CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xF0, 0xB5, 0x19, 0x4B, 0x98, 0x78, 0x04, 0x09, 0x0F, 0x22, 0x11, 0x1C
	.byte 0x01, 0x40, 0xD8, 0x78, 0x06, 0x09, 0x15, 0x1C, 0x05, 0x40, 0x15, 0x4F, 0xA0, 0x00, 0x00, 0x19
	.byte 0x40, 0x18, 0x80, 0x00, 0xC4, 0x19, 0x20, 0x68, 0x00, 0x88, 0xF1, 0xF7, 0xF3, 0xF8, 0x11, 0x48
	.byte 0x80, 0x7F, 0x00, 0x28, 0x18, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x70, 0xFA, 0x01, 0x28, 0x13, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0x2B, 0xF0, 0xBC, 0xF8, 0x00, 0x28, 0x0D, 0xD1, 0xB0, 0x00, 0x80, 0x19
	.byte 0x40, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x02, 0x68, 0x10, 0x88, 0x00, 0x28, 0x0C, 0xD0, 0x10, 0x1C
	.byte 0x26, 0xF0, 0x52, 0xFA, 0x00, 0x28, 0x07, 0xD0, 0x00, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x01, 0x20, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A250
sub_801A250: @ 0x0801A250
	push {r4, r5, r6, r7, lr}
	ldr r3, _0801A2B0
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _0801A2B4
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A2B8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A2BC
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A2BC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #1
	bne _0801A2BC
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A2BC
	movs r0, #1
	b _0801A2BE
	.align 2, 0
_0801A2B0: .4byte 0x02021C00
_0801A2B4: .4byte 0x02023FD0
_0801A2B8: .4byte 0x02021AD0
_0801A2BC:
	movs r0, #0
_0801A2BE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xF0, 0xB5, 0x17, 0x4B, 0x98, 0x78, 0x04, 0x09, 0x0F, 0x22, 0x11, 0x1C
	.byte 0x01, 0x40, 0xD8, 0x78, 0x06, 0x09, 0x15, 0x1C, 0x05, 0x40, 0x13, 0x4F, 0xA0, 0x00, 0x00, 0x19
	.byte 0x40, 0x18, 0x80, 0x00, 0xC4, 0x19, 0x20, 0x68, 0x00, 0x88, 0xF1, 0xF7, 0x7B, 0xF8, 0x0F, 0x48
	.byte 0x80, 0x7F, 0x00, 0x28, 0x1C, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0xF8, 0xF9, 0x01, 0x28, 0x17, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0x2B, 0xF0, 0x44, 0xF8, 0x01, 0x28, 0x11, 0xD1, 0xB0, 0x00, 0x80, 0x19
	.byte 0x40, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x29, 0xF0, 0xE8, 0xF9, 0x01, 0x28, 0x07, 0xD1
	.byte 0x01, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x00, 0x20, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A338
sub_801A338: @ 0x0801A338
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801A3C4
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov r8, r5
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	mov sb, r2
	adds r6, r1, #0
	ands r6, r0
	ldr r7, _0801A3C8
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, r0, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A3CC
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A3D0
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A3D0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #2
	bne _0801A3D0
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A3D0
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A3D0
	movs r0, #1
	b _0801A3D2
	.align 2, 0
_0801A3C4: .4byte 0x02021C00
_0801A3C8: .4byte 0x02023FD0
_0801A3CC: .4byte 0x02021AD0
_0801A3D0:
	movs r0, #0
_0801A3D2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	.byte 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x20, 0x4A, 0x90, 0x78, 0x04, 0x09, 0x0F, 0x21
	.byte 0x0B, 0x1C, 0x03, 0x40, 0xD0, 0x78, 0x05, 0x09, 0xA8, 0x46, 0x0D, 0x1C, 0x05, 0x40, 0x10, 0x79
	.byte 0x02, 0x09, 0x91, 0x46, 0x0E, 0x1C, 0x06, 0x40, 0x19, 0x4F, 0xA0, 0x00, 0x00, 0x19, 0xC0, 0x18
	.byte 0x80, 0x00, 0xC4, 0x19, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0xE4, 0xFF, 0x15, 0x48, 0x80, 0x7F
	.byte 0x00, 0x28, 0x29, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x61, 0xF9, 0x01, 0x28, 0x24, 0xD1, 0x20, 0x68
	.byte 0x00, 0x88, 0x2A, 0xF0, 0xAD, 0xFF, 0x02, 0x28, 0x1E, 0xD1, 0x41, 0x46, 0x88, 0x00, 0x40, 0x44
	.byte 0x40, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x29, 0xF0, 0x50, 0xF9, 0x01, 0x28, 0x13, 0xD1
	.byte 0x4A, 0x46, 0x90, 0x00, 0x48, 0x44, 0x80, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x29, 0xF0
	.byte 0x45, 0xF9, 0x01, 0x28, 0x08, 0xD1, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801A488
sub_801A488: @ 0x0801A488
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0801A53C
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov sb, r5
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r6, r0, #4
	mov sl, r6
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _0801A540
	mov r8, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A544
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A548
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #3
	bne _0801A548
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	mov r5, sl
	lsls r0, r5, #2
	add r0, sl
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	ldr r6, [sp]
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	movs r0, #1
	b _0801A54A
	.align 2, 0
_0801A53C: .4byte 0x02021C00
_0801A540: .4byte 0x02023FD0
_0801A544: .4byte 0x02021AD0
_0801A548:
	movs r0, #0
_0801A54A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x29, 0x4A, 0x90, 0x78, 0x04, 0x09, 0x0F, 0x21
	.byte 0x0B, 0x1C, 0x03, 0x40, 0xD0, 0x78, 0x05, 0x09, 0xA9, 0x46, 0x0D, 0x1C, 0x05, 0x40, 0x10, 0x79
	.byte 0x06, 0x09, 0xB2, 0x46, 0x0E, 0x1C, 0x06, 0x40, 0x50, 0x79, 0x02, 0x09, 0x00, 0x92, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x20, 0x48, 0x80, 0x46, 0xA0, 0x00, 0x00, 0x19, 0xC0, 0x18, 0x80, 0x00, 0x41, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x1D, 0xFF, 0x1B, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x34, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x9A, 0xF8, 0x01, 0x28, 0x2F, 0xD1, 0x20, 0x68, 0x00, 0x88
	.byte 0x2A, 0xF0, 0xE6, 0xFE, 0x03, 0x28, 0x29, 0xD1, 0x4A, 0x46, 0x90, 0x00, 0x48, 0x44, 0x40, 0x19
	.byte 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x29, 0xF0, 0x89, 0xF8, 0x01, 0x28, 0x1E, 0xD1, 0x55, 0x46
	.byte 0xA8, 0x00, 0x50, 0x44, 0x80, 0x19, 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x29, 0xF0, 0x7E, 0xF8
	.byte 0x01, 0x28, 0x13, 0xD1, 0x00, 0x9E, 0xB0, 0x00, 0x80, 0x19, 0xC0, 0x19, 0x80, 0x00, 0x40, 0x44
	.byte 0x00, 0x68, 0x29, 0xF0, 0x73, 0xF8, 0x01, 0x28, 0x08, 0xD1, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x01, 0xB0
	.byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801A630
sub_801A630: @ 0x0801A630
	push {r4, r5, lr}
	movs r5, #0
	ldr r0, _0801A66C
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801A668
	ldr r0, _0801A670
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801A674
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A678
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0801A67C
_0801A668:
	movs r0, #0
	b _0801A68A
	.align 2, 0
_0801A66C: .4byte 0x02023FC0
_0801A670: .4byte 0x02021C00
_0801A674: .4byte 0x02023FD0
_0801A678: .4byte 0x02021AD0
_0801A67C:
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A688
	movs r5, #1
_0801A688:
	adds r0, r5, #0
_0801A68A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x10, 0x48, 0x00, 0x68, 0x81, 0x78, 0x04, 0x20, 0x08, 0x40, 0x00, 0x28, 0x21, 0xD1
	.byte 0x0D, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0C, 0x4B, 0x90, 0x00, 0x80, 0x18
	.byte 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x93, 0xFE, 0x08, 0x48
	.byte 0x80, 0x7F, 0x00, 0x28, 0x0E, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x10, 0xF8, 0x01, 0x28, 0x09, 0xD1
	.byte 0x01, 0x20, 0x08, 0xE0, 0xC0, 0x3F, 0x02, 0x02, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A6EC
sub_801A6EC: @ 0x0801A6EC
	push {r4, lr}
	ldr r0, _0801A724
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801A728
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A72C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A730
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A730
	movs r0, #1
	b _0801A732
	.align 2, 0
_0801A724: .4byte 0x02021C00
_0801A728: .4byte 0x02023FD0
_0801A72C: .4byte 0x02021AD0
_0801A730:
	movs r0, #0
_0801A732:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x0D, 0x48, 0x80, 0x78, 0x02, 0x09
	.byte 0x0F, 0x21, 0x01, 0x40, 0x0B, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18
	.byte 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x46, 0xFE, 0x07, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x0D, 0xD0
	.byte 0x20, 0x68, 0x28, 0xF0, 0xC3, 0xFF, 0x01, 0x28, 0x08, 0xD1, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A784
sub_801A784: @ 0x0801A784
	push {r4, r5, r6, lr}
	ldr r0, _0801A7F8
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r6, #0xf
	ands r6, r0
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A80C
	ldr r0, _0801A7FC
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801A80C
	ldr r1, _0801A800
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A804
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A80C
	ldr r1, _0801A808
	strb r5, [r1, #2]
	strb r6, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801A80C
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A80C
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _0801A80C
	movs r0, #1
	b _0801A80E
	.align 2, 0
_0801A7F8: .4byte 0x02021C00
_0801A7FC: .4byte 0x02023FC0
_0801A800: .4byte 0x02023FD0
_0801A804: .4byte 0x02021AD0
_0801A808: .4byte 0x020245A0
_0801A80C:
	movs r0, #0
_0801A80E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x70, 0xB5, 0x1C, 0x48, 0x80, 0x78, 0x05, 0x09, 0x0F, 0x26, 0x06, 0x40
	.byte 0x3D, 0xF0, 0x90, 0xFF, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0x84, 0xFE, 0x00, 0x06, 0x00, 0x28
	.byte 0x34, 0xD0, 0x16, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2D, 0xD1
	.byte 0x13, 0x49, 0xA8, 0x00, 0x40, 0x19, 0x80, 0x19, 0x80, 0x00, 0x44, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0xF0, 0xF7, 0xC8, 0xFD, 0x0F, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x1F, 0xD0, 0x0E, 0x49, 0x8D, 0x70
	.byte 0xCE, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0, 0x38, 0xFF, 0x01, 0x28, 0x15, 0xD0
	.byte 0x20, 0x68, 0x28, 0xF0, 0x3B, 0xFF, 0x01, 0x28, 0x10, 0xD1, 0x01, 0x20, 0x28, 0xF0, 0xAA, 0xFF
	.byte 0x00, 0x28, 0x0B, 0xD1, 0x01, 0x20, 0x0A, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x70, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A8A4
sub_801A8A4: @ 0x0801A8A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801A950
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A964
	ldr r0, _0801A954
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801A964
	ldr r0, _0801A958
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801A95C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A964
	ldr r1, _0801A960
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801A964
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A964
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801A964
	bl sub_803FCBC
	cmp r0, #1
	bne _0801A964
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801A964
	movs r0, #1
	b _0801A966
	.align 2, 0
_0801A950: .4byte 0x02021C00
_0801A954: .4byte 0x02023FC0
_0801A958: .4byte 0x02023FD0
_0801A95C: .4byte 0x02021AD0
_0801A960: .4byte 0x020245A0
_0801A964:
	movs r0, #0
_0801A966:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x3D, 0xF0, 0xD7, 0xFE, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0xCB, 0xFD, 0x00, 0x06
	.byte 0x00, 0x28, 0x47, 0xD0, 0x1F, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x40, 0xD1, 0x1D, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x0D, 0xFD, 0x18, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x30, 0xD0, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0x7D, 0xFE, 0x01, 0x28, 0x26, 0xD0, 0x20, 0x68, 0x28, 0xF0, 0x80, 0xFE, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x25, 0xF0, 0x59, 0xF9, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801AA44
sub_801AA44: @ 0x0801AA44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801AAF0
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _0801AAF4
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801AAF8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801AB04
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AB04
	ldr r0, _0801AAFC
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801AB04
	ldr r1, _0801AB00
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801AB04
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801AB04
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801AB04
	bl sub_803FCBC
	cmp r0, #1
	bne _0801AB04
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801AB04
	movs r0, #1
	b _0801AB06
	.align 2, 0
_0801AAF0: .4byte 0x02021C00
_0801AAF4: .4byte 0x02023FD0
_0801AAF8: .4byte 0x02021AD0
_0801AAFC: .4byte 0x02023FC0
_0801AB00: .4byte 0x020245A0
_0801AB04:
	movs r0, #0
_0801AB06:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x24, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x4D, 0xFC, 0x1F, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x40, 0xD0, 0x3D, 0xF0, 0xF7, 0xFD, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0xEB, 0xFC, 0x00, 0x06
	.byte 0x00, 0x28, 0x37, 0xD0, 0x19, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x30, 0xD1, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0xAD, 0xFD, 0x01, 0x28, 0x26, 0xD0, 0x20, 0x68, 0x28, 0xF0, 0xB0, 0xFD, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x25, 0xF0, 0x89, 0xF8, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD1, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801ABE4
sub_801ABE4: @ 0x0801ABE4
	push {r4, r5, r6, lr}
	ldr r0, _0801AC58
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r6, #0xf
	ands r6, r0
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AC6C
	ldr r0, _0801AC5C
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801AC6C
	ldr r1, _0801AC60
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801AC64
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801AC6C
	ldr r1, _0801AC68
	strb r5, [r1, #2]
	strb r6, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801AC6C
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801AC6C
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _0801AC6C
	movs r0, #1
	b _0801AC6E
	.align 2, 0
_0801AC58: .4byte 0x02021C00
_0801AC5C: .4byte 0x02023FC0
_0801AC60: .4byte 0x02023FD0
_0801AC64: .4byte 0x02021AD0
_0801AC68: .4byte 0x020245A0
_0801AC6C:
	movs r0, #0
_0801AC6E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x70, 0xB5, 0x1C, 0x48, 0x80, 0x78, 0x05, 0x09, 0x0F, 0x26, 0x06, 0x40
	.byte 0x3D, 0xF0, 0x60, 0xFD, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0x54, 0xFC, 0x00, 0x06, 0x00, 0x28
	.byte 0x34, 0xD0, 0x16, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2D, 0xD1
	.byte 0x13, 0x49, 0xA8, 0x00, 0x40, 0x19, 0x80, 0x19, 0x80, 0x00, 0x44, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0xF0, 0xF7, 0x98, 0xFB, 0x0F, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x1F, 0xD0, 0x0E, 0x49, 0x8D, 0x70
	.byte 0xCE, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0, 0x08, 0xFD, 0x01, 0x28, 0x15, 0xD1
	.byte 0x20, 0x68, 0x28, 0xF0, 0x0B, 0xFD, 0x01, 0x28, 0x10, 0xD1, 0x01, 0x20, 0x28, 0xF0, 0x7A, 0xFD
	.byte 0x00, 0x28, 0x0B, 0xD1, 0x01, 0x20, 0x0A, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x70, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801AD04
sub_801AD04: @ 0x0801AD04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801ADB0
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801ADC4
	ldr r0, _0801ADB4
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801ADC4
	ldr r0, _0801ADB8
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801ADBC
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801ADC4
	ldr r1, _0801ADC0
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801ADC4
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801ADC4
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801ADC4
	bl sub_803FCBC
	cmp r0, #1
	bne _0801ADC4
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801ADC4
	movs r0, #1
	b _0801ADC6
	.align 2, 0
_0801ADB0: .4byte 0x02021C00
_0801ADB4: .4byte 0x02023FC0
_0801ADB8: .4byte 0x02023FD0
_0801ADBC: .4byte 0x02021AD0
_0801ADC0: .4byte 0x020245A0
_0801ADC4:
	movs r0, #0
_0801ADC6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x3D, 0xF0, 0xA7, 0xFC, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0x9B, 0xFB, 0x00, 0x06
	.byte 0x00, 0x28, 0x47, 0xD0, 0x1F, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x40, 0xD1, 0x1D, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0xDD, 0xFA, 0x18, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x30, 0xD0, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0x4D, 0xFC, 0x01, 0x28, 0x26, 0xD1, 0x20, 0x68, 0x28, 0xF0, 0x50, 0xFC, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x24, 0xF0, 0x29, 0xFF, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801AEA4
sub_801AEA4: @ 0x0801AEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801AF50
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _0801AF54
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801AF58
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801AF64
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AF64
	ldr r0, _0801AF5C
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801AF64
	ldr r1, _0801AF60
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801AF64
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801AF64
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801AF64
	bl sub_803FCBC
	cmp r0, #1
	bne _0801AF64
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801AF64
	movs r0, #1
	b _0801AF66
	.align 2, 0
_0801AF50: .4byte 0x02021C00
_0801AF54: .4byte 0x02023FD0
_0801AF58: .4byte 0x02021AD0
_0801AF5C: .4byte 0x02023FC0
_0801AF60: .4byte 0x020245A0
_0801AF64:
	movs r0, #0
_0801AF66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x24, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x1D, 0xFA, 0x1F, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x40, 0xD0, 0x3D, 0xF0, 0xC7, 0xFB, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0xBB, 0xFA, 0x00, 0x06
	.byte 0x00, 0x28, 0x37, 0xD0, 0x19, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x30, 0xD1, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0x7D, 0xFB, 0x01, 0x28, 0x26, 0xD1, 0x20, 0x68, 0x28, 0xF0, 0x80, 0xFB, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x24, 0xF0, 0x59, 0xFE, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD1, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x01, 0x20, 0x70, 0x47, 0x00, 0xB5, 0x09, 0x48
	.byte 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x07, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18
	.byte 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x28, 0xF0, 0x55, 0xFB, 0x01, 0x28, 0x06, 0xD1, 0x01, 0x20
	.byte 0x05, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0x00, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801B084
sub_801B084: @ 0x0801B084
	push {r4, lr}
	ldr r0, _0801B0C8
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B0CC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801B0D0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801B0D4
	ldr r0, [r4]
	bl sub_804374C
	cmp r0, #1
	bne _0801B0D4
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_803EFAC
	cmp r0, #0
	bgt _0801B0D4
	movs r0, #1
	b _0801B0D6
	.align 2, 0
_0801B0C8: .4byte 0x02021C00
_0801B0CC: .4byte 0x02023FD0
_0801B0D0: .4byte 0x02021AD0
_0801B0D4:
	movs r0, #0
_0801B0D6:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x0C, 0x48
	.byte 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0A, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18
	.byte 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x28, 0xF0, 0x29, 0xFB, 0x01, 0x28, 0x05, 0xD1, 0x20, 0x68
	.byte 0x00, 0x88, 0x23, 0xF0, 0x53, 0xFF, 0x00, 0x28, 0x06, 0xDC, 0x00, 0x20, 0x05, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x10, 0xB5, 0x10, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0E, 0x4B, 0x90, 0x00
	.byte 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x52, 0xF9
	.byte 0x0A, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x13, 0xD0, 0x20, 0x68, 0x28, 0xF0, 0xFF, 0xFA, 0x01, 0x28
	.byte 0x0E, 0xD1, 0x20, 0x68, 0x00, 0x88, 0x23, 0xF0, 0x29, 0xFF, 0x00, 0x28, 0x08, 0xDC, 0x01, 0x20
	.byte 0x07, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801B178
sub_801B178: @ 0x0801B178
	push {lr}
	ldr r0, _0801B1A0
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B1A4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_804376C
	cmp r0, #1
	bne _0801B1A8
	movs r0, #1
	b _0801B1AA
	.align 2, 0
_0801B1A0: .4byte 0x02021C00
_0801B1A4: .4byte 0x02023FD0
_0801B1A8:
	movs r0, #0
_0801B1AA:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801B1B0
sub_801B1B0: @ 0x0801B1B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0801B218
	ldrb r1, [r3, #2]
	lsrs r0, r1, #4
	adds r5, r0, #0
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	mov r8, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r4, r2, #0
	ands r4, r0
	ldr r0, _0801B21C
	mov sb, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	add r0, r8
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_804376C
	cmp r0, #1
	bne _0801B224
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801B224
	ldr r1, _0801B220
	strb r5, [r1, #2]
	mov r0, r8
	strb r0, [r1, #3]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801B224
	movs r0, #1
	b _0801B226
	.align 2, 0
_0801B218: .4byte 0x02021C00
_0801B21C: .4byte 0x02023FD0
_0801B220: .4byte 0x020245A0
_0801B224:
	movs r0, #0
_0801B226:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801B234
sub_801B234: @ 0x0801B234
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0801B29C
	ldrb r1, [r3, #2]
	lsrs r0, r1, #4
	adds r5, r0, #0
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	mov r8, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r4, r2, #0
	ands r4, r0
	ldr r0, _0801B2A0
	mov sb, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	add r0, r8
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_804376C
	cmp r0, #1
	bne _0801B2A8
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801B2A8
	ldr r1, _0801B2A4
	strb r5, [r1, #2]
	mov r0, r8
	strb r0, [r1, #3]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801B2A8
	movs r0, #1
	b _0801B2AA
	.align 2, 0
_0801B29C: .4byte 0x02021C00
_0801B2A0: .4byte 0x02023FD0
_0801B2A4: .4byte 0x020245A0
_0801B2A8:
	movs r0, #0
_0801B2AA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801B2B8
sub_801B2B8: @ 0x0801B2B8
	push {r4, lr}
	ldr r0, _0801B2F0
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B2F4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	bl sub_8043790
	cmp r0, #1
	bne _0801B2FC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0801B2F8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801B2FC
	movs r0, #1
	b _0801B2FE
	.align 2, 0
_0801B2F0: .4byte 0x02021C00
_0801B2F4: .4byte 0x02023FD0
_0801B2F8: .4byte 0x02021AD0
_0801B2FC:
	movs r0, #0
_0801B2FE:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x10, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40
	.byte 0x0E, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0x24, 0xF0, 0xCC, 0xFC, 0x02, 0x28, 0x15, 0xD1, 0x20, 0x68, 0x00, 0x88, 0x24, 0xF0, 0xDE, 0xFC
	.byte 0x02, 0x28, 0x0F, 0xD1, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x54, 0xF8, 0x04, 0x48, 0x80, 0x7F
	.byte 0x00, 0x28, 0x07, 0xD0, 0x01, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801B35C
sub_801B35C: @ 0x0801B35C
	push {r4, r5, r6, lr}
	ldr r0, _0801B398
	ldrb r0, [r0, #2]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	ldr r1, _0801B39C
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_8043790
	cmp r0, #1
	bne _0801B3A4
	ldr r1, _0801B3A0
	strb r4, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801B3A4
	movs r0, #1
	b _0801B3A6
	.align 2, 0
_0801B398: .4byte 0x02021C00
_0801B39C: .4byte 0x02023FD0
_0801B3A0: .4byte 0x020245A0
_0801B3A4:
	movs r0, #0
_0801B3A6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_801B3AC
sub_801B3AC: @ 0x0801B3AC
	push {r4, r5, r6, lr}
	ldr r0, _0801B3E8
	ldrb r0, [r0, #2]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	ldr r1, _0801B3EC
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_8043790
	cmp r0, #1
	bne _0801B3F4
	ldr r1, _0801B3F0
	strb r4, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801B3F4
	movs r0, #1
	b _0801B3F6
	.align 2, 0
_0801B3E8: .4byte 0x02021C00
_0801B3EC: .4byte 0x02023FD0
_0801B3F0: .4byte 0x020245A0
_0801B3F4:
	movs r0, #0
_0801B3F6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_801B3FC
sub_801B3FC: @ 0x0801B3FC
	push {lr}
	ldr r0, _0801B424
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B428
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80437B4
	cmp r0, #1
	bne _0801B42C
	movs r0, #1
	b _0801B42E
	.align 2, 0
_0801B424: .4byte 0x02021C00
_0801B428: .4byte 0x02023FD0
_0801B42C:
	movs r0, #0
_0801B42E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0
	.byte 0x28, 0x4A, 0x90, 0x78, 0x04, 0x09, 0x0F, 0x21, 0x0B, 0x1C, 0x03, 0x40, 0xD0, 0x78, 0x05, 0x09
	.byte 0xA9, 0x46, 0x0F, 0x1C, 0x07, 0x40, 0x10, 0x79, 0x05, 0x09, 0xAA, 0x46, 0x0D, 0x1C, 0x05, 0x40
	.byte 0x50, 0x79, 0x02, 0x09, 0x01, 0x92, 0x0E, 0x1C, 0x06, 0x40, 0x1F, 0x48, 0x80, 0x46, 0xA0, 0x00
	.byte 0x00, 0x19, 0xC0, 0x18, 0x80, 0x00, 0x41, 0x46, 0x44, 0x18, 0x20, 0x68, 0x28, 0xF0, 0x9A, 0xF9
	.byte 0x01, 0x28, 0x53, 0xD1, 0x4A, 0x46, 0x90, 0x00, 0x48, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x40, 0x44
	.byte 0x00, 0x68, 0x28, 0xF0, 0x2B, 0xF9, 0x01, 0x28, 0x48, 0xD1, 0x51, 0x46, 0x88, 0x00, 0x50, 0x44
	.byte 0x40, 0x19, 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x28, 0xF0, 0x20, 0xF9, 0x01, 0x28, 0x3D, 0xD1
	.byte 0x01, 0x9A, 0x90, 0x00, 0x80, 0x18, 0x80, 0x19, 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x28, 0xF0
	.byte 0x15, 0xF9, 0x01, 0x28, 0x32, 0xD1, 0x20, 0x68, 0x00, 0x88, 0xEF, 0xF7, 0x8B, 0xFF, 0x07, 0x48
	.byte 0x41, 0x7F, 0x05, 0x29, 0x0E, 0xD0, 0x18, 0x29, 0x2C, 0xD0, 0xC9, 0x00, 0x04, 0x48, 0x09, 0x18
	.byte 0x32, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA8, 0x0F, 0xE0, 0x08, 0x0E, 0x4C, 0x68, 0x46, 0x21, 0x1C, 0x2F, 0xF0, 0x23, 0xFE, 0x01, 0x28
	.byte 0x28, 0xD0, 0x21, 0x1C, 0x08, 0x39, 0x68, 0x46, 0x2F, 0xF0, 0x1C, 0xFE, 0x01, 0x28, 0x21, 0xD0
	.byte 0x21, 0x1C, 0x10, 0x39, 0x68, 0x46, 0x2F, 0xF0, 0x15, 0xFE, 0x01, 0x28, 0x1A, 0xD0, 0x21, 0x1C
	.byte 0xC0, 0x39, 0x68, 0x46, 0x2F, 0xF0, 0x0E, 0xFE, 0x01, 0x28, 0x13, 0xD0, 0x00, 0x20, 0x12, 0xE0
	.byte 0x90, 0x10, 0xE0, 0x08, 0x0C, 0x4C, 0x38, 0x1C, 0x21, 0x1C, 0x00, 0xF0, 0x3F, 0xF8, 0x00, 0x06
	.byte 0x00, 0x28, 0x07, 0xD1, 0x21, 0x1C, 0x10, 0x39, 0x38, 0x1C, 0x00, 0xF0, 0x37, 0xF8, 0x00, 0x06
	.byte 0x00, 0x28, 0xEB, 0xD0, 0x01, 0x20, 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x78, 0x10, 0xE0, 0x08, 0x10, 0xB5, 0x10, 0x48
	.byte 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0E, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18
	.byte 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88, 0xEF, 0xF7, 0x2C, 0xFF, 0x0A, 0x48, 0x80, 0x7F
	.byte 0x00, 0x28, 0x09, 0xD0, 0x20, 0x68, 0x00, 0x88, 0x24, 0xF0, 0x90, 0xFB, 0x02, 0x28, 0x03, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0x24, 0xF0, 0xA2, 0xFB, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02

	THUMB_FUNC_START sub_801B5BC
sub_801B5BC: @ 0x0801B5BC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _0801B5E4
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0801B5E8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	cmp r0, r6
	bne _0801B5E8
	movs r0, #1
	b _0801B5EA
	.align 2, 0
_0801B5E4: .4byte 0x02023FF8
_0801B5E8:
	movs r0, #0
_0801B5EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x30, 0xB5, 0x03, 0x1C, 0x0C, 0x1C, 0x0C, 0x48, 0x01, 0x3B, 0x00, 0x2B, 0x0D, 0xDB, 0x0B, 0x4D
	.byte 0x02, 0x02, 0x00, 0x0A, 0x21, 0x78, 0x48, 0x40, 0x40, 0x19, 0x00, 0x78, 0x50, 0x40, 0x00, 0x04
	.byte 0x00, 0x0C, 0x01, 0x34, 0x01, 0x3B, 0x00, 0x2B, 0xF2, 0xDA, 0xC0, 0x43, 0x00, 0x04, 0x00, 0x0C
	.byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x20, 0x0B, 0x0B, 0x08
	.byte 0x30, 0xB5, 0x03, 0x1C, 0x0C, 0x1C, 0x0B, 0x4A, 0x01, 0x3B, 0x00, 0x2B, 0x0C, 0xDB, 0x0A, 0x4D
	.byte 0x11, 0x0A, 0x20, 0x78, 0x42, 0x40, 0x10, 0x06, 0x00, 0x0E, 0x40, 0x19, 0x02, 0x78, 0x4A, 0x40
	.byte 0x01, 0x34, 0x01, 0x3B, 0x00, 0x2B, 0xF3, 0xDA, 0xD0, 0x43, 0x00, 0x04, 0x00, 0x0C, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xFF, 0xFF, 0x00, 0x00, 0x20, 0x0C, 0x0B, 0x08

	THUMB_FUNC_START sub_801B66C
sub_801B66C: @ 0x0801B66C
	push {r4, r5, lr}
	ldr r0, _0801B70C
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B678
	b _0801B7F8
_0801B678:
	bl sub_803EDB4
	bl sub_803EDD8
	bl sub_803EE20
	bl sub_801B808
	bl sub_801B83C
	movs r0, #1
	movs r1, #0
	bl sub_801BAEC
	ldr r4, _0801B710
	ldrb r1, [r4]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B6A8
	movs r0, #1
	bl sub_800B288
_0801B6A8:
	movs r0, #0
	movs r1, #1
	bl sub_801BAEC
	ldrb r1, [r4, #4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B6C0
	movs r0, #0
	bl sub_800B288
_0801B6C0:
	ldr r0, _0801B714
	bl sub_80081DC
	bl sub_8008220
	bl sub_801BB7C
	ldr r0, _0801B718
	bl sub_80081DC
	bl sub_8008220
	movs r4, #0
_0801B6DA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0801B6DA
	ldr r0, _0801B710
	ldrb r1, [r0, #4]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0801B77A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B732
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B71C
	movs r0, #1
	bl sub_801CDEC
	b _0801B722
	.align 2, 0
_0801B70C: .4byte 0x02023EA0
_0801B710: .4byte 0x0201CB48
_0801B714: .4byte 0x0801BC4D
_0801B718: .4byte 0x0801BC59
_0801B71C:
	movs r0, #1
	bl sub_801C6BC
_0801B722:
	movs r4, #0
_0801B724:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0801B724
_0801B732:
	ldr r4, _0801B7A0
	ldrb r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B744
	movs r0, #1
	bl sub_801C1DC
_0801B744:
	ldrb r1, [r4, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B754
	movs r0, #1
	bl sub_801C7B8
_0801B754:
	ldrb r1, [r4, #4]
	movs r2, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B77A
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B7DC
	movs r4, #0
_0801B76C:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _0801B76C
_0801B77A:
	ldr r0, _0801B7A0
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0801B7DC
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B7BA
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B7A4
	movs r0, #0
	bl sub_801CDEC
	b _0801B7AA
	.align 2, 0
_0801B7A0: .4byte 0x0201CB48
_0801B7A4:
	movs r0, #0
	bl sub_801C6BC
_0801B7AA:
	movs r4, #0
_0801B7AC:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0801B7AC
_0801B7BA:
	ldr r4, _0801B800
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B7CC
	movs r0, #0
	bl sub_801C1DC
_0801B7CC:
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B7DC
	movs r0, #0
	bl sub_801C7B8
_0801B7DC:
	ldr r0, _0801B804
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	beq _0801B7E8
	cmp r0, #8
	bne _0801B7F8
_0801B7E8:
	movs r4, #0
_0801B7EA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _0801B7EA
_0801B7F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B800: .4byte 0x0201CB48
_0801B804: .4byte 0x02023EA0

	THUMB_FUNC_START sub_801B808
sub_801B808: @ 0x0801B808
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	ldr r3, _0801B838
	movs r7, #9
	rsbs r7, r7, #0
	movs r0, #0x11
	rsbs r0, r0, #0
	mov ip, r0
_0801B81C:
	lsls r0, r2, #2
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0801B81C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B838: .4byte 0x0201CB48

	THUMB_FUNC_START sub_801B83C
sub_801B83C: @ 0x0801B83C
	push {r4, r5, r6, lr}
	ldr r0, _0801B854
	ldrb r0, [r0, #0x18]
	cmp r0, #0x11
	bls _0801B848
	b _0801BAE2
_0801B848:
	lsls r0, r0, #2
	ldr r1, _0801B858
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B854: .4byte 0x02023EA0
_0801B858: .4byte 0x0801B85C
_0801B85C: @ jump table
	.4byte _0801BAE2 @ case 0
	.4byte _0801B8A4 @ case 1
	.4byte _0801B8CC @ case 2
	.4byte _0801B8FC @ case 3
	.4byte _0801B914 @ case 4
	.4byte _0801B93C @ case 5
	.4byte _0801B958 @ case 6
	.4byte _0801B97C @ case 7
	.4byte _0801B9A0 @ case 8
	.4byte _0801B9BC @ case 9
	.4byte _0801B9E4 @ case 10
	.4byte _0801BA08 @ case 11
	.4byte _0801BA18 @ case 12
	.4byte _0801BA3C @ case 13
	.4byte _0801BA60 @ case 14
	.4byte _0801BA74 @ case 15
	.4byte _0801BA98 @ case 16
	.4byte _0801BAC0 @ case 17
_0801B8A4:
	ldr r2, _0801B8C8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r3, #8
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B8C8: .4byte 0x0201CB48
_0801B8CC:
	ldr r1, _0801B8F8
	ldrb r0, [r1]
	movs r6, #1
	orrs r0, r6
	movs r5, #2
	orrs r0, r5
	movs r4, #4
	orrs r0, r4
	movs r3, #8
	orrs r0, r3
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r1, #4]
	orrs r0, r6
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	orrs r0, r2
	strb r0, [r1, #4]
	b _0801BAE2
	.align 2, 0
_0801B8F8: .4byte 0x0201CB48
_0801B8FC:
	ldr r2, _0801B910
	ldrb r0, [r2]
	movs r4, #1
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r3, #8
	b _0801BAD2
	.align 2, 0
_0801B910: .4byte 0x0201CB48
_0801B914:
	ldr r2, _0801B938
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B938: .4byte 0x0201CB48
_0801B93C:
	ldr r2, _0801B954
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B954: .4byte 0x0201CB48
_0801B958:
	ldr r2, _0801B978
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B978: .4byte 0x0201CB48
_0801B97C:
	ldr r2, _0801B99C
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B99C: .4byte 0x0201CB48
_0801B9A0:
	ldr r2, _0801B9B8
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B9B8: .4byte 0x0201CB48
_0801B9BC:
	ldr r2, _0801B9E0
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B9E0: .4byte 0x0201CB48
_0801B9E4:
	ldr r2, _0801BA04
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA04: .4byte 0x0201CB48
_0801BA08:
	ldr r2, _0801BA14
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	b _0801BA32
	.align 2, 0
_0801BA14: .4byte 0x0201CB48
_0801BA18:
	ldr r2, _0801BA38
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
_0801BA32:
	orrs r0, r1
	strb r0, [r2]
	b _0801BAE2
	.align 2, 0
_0801BA38: .4byte 0x0201CB48
_0801BA3C:
	ldr r2, _0801BA5C
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA5C: .4byte 0x0201CB48
_0801BA60:
	ldr r2, _0801BA70
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA70: .4byte 0x0201CB48
_0801BA74:
	ldr r2, _0801BA94
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA94: .4byte 0x0201CB48
_0801BA98:
	ldr r2, _0801BABC
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BABC: .4byte 0x0201CB48
_0801BAC0:
	ldr r2, _0801BAE8
	ldrb r0, [r2]
	movs r4, #1
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r3, #0x20
_0801BAD2:
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r4
	orrs r0, r3
_0801BAE0:
	strb r0, [r2, #4]
_0801BAE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAE8: .4byte 0x0201CB48

	THUMB_FUNC_START sub_801BAEC
sub_801BAEC: @ 0x0801BAEC
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _0801BB18
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r0, [r5]
	bl SetCardData
	ldr r1, _0801BB1C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0801BB24
	ldr r1, _0801BB20
	ldrh r0, [r5, #6]
	b _0801BB28
	.align 2, 0
_0801BB18: .4byte 0x02023EA0
_0801BB1C: .4byte 0x0201CB48
_0801BB20: .4byte 0x02021AD0
_0801BB24:
	ldr r1, _0801BB4C
	ldr r0, _0801BB50
_0801BB28:
	strh r0, [r1, #0x12]
	adds r3, r1, #0
	ldr r1, _0801BB54
	lsls r2, r4, #2
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	adds r5, r1, #0
	cmp r0, #0
	bge _0801BB5C
	ldr r0, _0801BB58
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	b _0801BB5E
	.align 2, 0
_0801BB4C: .4byte 0x02021AD0
_0801BB50: .4byte 0x0000FFFF
_0801BB54: .4byte 0x0201CB48
_0801BB58: .4byte 0x02023EA0
_0801BB5C:
	ldr r0, _0801BB78
_0801BB5E:
	strh r0, [r3, #0x14]
	movs r0, #0
	strb r0, [r3, #0x16]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #0
	bne _0801BB72
	strb r0, [r3, #0x17]
_0801BB72:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BB78: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_801BB7C
sub_801BB7C: @ 0x0801BB7C
	push {r4, r5, lr}
	bl sub_8045640
	bl sub_8045658
	bl sub_8045690
	movs r1, #0
	movs r5, #0
	ldr r0, _0801BBE0
	movs r4, #0xa0
	movs r3, #0xf0
	movs r2, #0xc0
	lsls r2, r2, #4
_0801BB98:
	strh r4, [r0]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	strh r5, [r0, #6]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x7f
	bls _0801BB98
	movs r4, #0
	bl sub_80454C8
	ldr r0, _0801BBE4
	movs r1, #4
	strh r1, [r0]
	ldr r2, _0801BBE8
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0801BBEC
	strh r1, [r0]
	ldr r0, _0801BBF0
	strh r1, [r0]
	bl sub_8045434
	ldr r0, _0801BBF4
	strh r4, [r0]
	ldr r0, _0801BBF8
	strh r4, [r0]
	ldr r0, _0801BBFC
	strh r4, [r0]
	bl sub_804549C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BBE0: .4byte 0x02018400
_0801BBE4: .4byte 0x0202420C
_0801BBE8: .4byte 0x0202424C
_0801BBEC: .4byte 0x02024218
_0801BBF0: .4byte 0x02024204
_0801BBF4: .4byte 0x02024228
_0801BBF8: .4byte 0x02024238
_0801BBFC: .4byte 0x02024230

	THUMB_FUNC_START sub_801BC00
sub_801BC00: @ 0x0801BC00
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _0801BC40
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801BC34
	mov r0, sp
	bl sub_80240BC
	mov r1, sp
	movs r0, #0x18
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_802408C
	ldr r1, _0801BC44
	movs r0, #4
	strb r0, [r1]
	bl sub_8024548
	ldr r4, _0801BC48
_0801BC2A:
	bl sub_8024354
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801BC2A
_0801BC34:
	bl sub_801B66C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BC40: .4byte 0x020241FC
_0801BC44: .4byte 0x02021D98
_0801BC48: .4byte 0x03000C6C

	THUMB_FUNC_START sub_801BC4C
sub_801BC4C: @ 0x0801BC4C
	push {lr}
	bl sub_8045718
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801BC58
sub_801BC58: @ 0x0801BC58
	push {lr}
	bl sub_80454E0
	ldr r1, _0801BC7C
	ldr r2, _0801BC80
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801BC84
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801BC7C: .4byte 0x0400000C
_0801BC80: .4byte 0x00001E81
_0801BC84: .4byte 0x00001F86

	THUMB_FUNC_START sub_801BC88
sub_801BC88: @ 0x0801BC88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	mov sl, r1
	cmp r0, #1
	bne _0801BCA2
	movs r0, #0x80
	mov sl, r0
_0801BCA2:
	movs r6, #2
	movs r5, #0
	movs r4, #2
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r0, _0801BCDC
	mov r8, r0
	subs r1, #0x5d
	mov ip, r1
	movs r7, #0x1f
_0801BCB8:
	mov r1, sl
	adds r0, r5, r1
	lsls r0, r0, #1
	ldr r1, _0801BCE0
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801BCE4
	subs r0, r0, r6
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0801BCEC
	.align 2, 0
_0801BCDC: .4byte 0xFFFFFC1F
_0801BCE0: .4byte 0x02000000
_0801BCE4:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_0801BCEC:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801BD0A
	adds r1, r0, #0
	subs r1, r1, r6
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _0801BD10
_0801BD0A:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_0801BD10:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801BD2E
	subs r0, r0, r6
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, ip
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0801BD36
_0801BD2E:
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
_0801BD36:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _0801BCB8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801BD50
sub_801BD50: @ 0x0801BD50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r4, _0801BD78
	movs r1, #3
	bl sub_805B940
	adds r2, r0, #0
_0801BD66:
	ldr r1, [r4]
	lsls r0, r7, #5
	adds r1, r0, r1
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _0801BD7C
	subs r0, #1
	strb r0, [r1, #0x1a]
	b _0801BDB0
	.align 2, 0
_0801BD78: .4byte 0x08E0061C
_0801BD7C:
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	beq _0801BDB0
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	beq _0801BD8E
	subs r0, #1
	strb r0, [r1, #0x1b]
	b _0801BDB0
_0801BD8E:
	cmp r2, #0
	bne _0801BD9E
	ldrb r0, [r1, #0x1d]
	cmp r0, #1
	beq _0801BDA4
	movs r0, #1
	strb r0, [r1, #0x1d]
	b _0801BDB0
_0801BD9E:
	ldrb r0, [r1, #0x1d]
	cmp r0, #1
	bne _0801BDB0
_0801BDA4:
	ldr r0, [r4]
	lsls r1, r7, #5
	adds r1, r1, r0
	ldrb r0, [r1, #0x1c]
	subs r0, #1
	strb r0, [r1, #0x1c]
_0801BDB0:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0801BD66
	movs r7, #0
	ldr r0, _0801BE2C
	mov ip, r0
	ldr r1, _0801BE30
	mov r8, r1
	ldr r0, _0801BE34
	mov sb, r0
	movs r1, #4
	rsbs r1, r1, #0
	add r1, r8
	mov sl, r1
_0801BDD0:
	mov r1, ip
	ldr r0, [r1]
	lsls r3, r7, #5
	adds r1, r3, r0
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	beq _0801BE3A
	ldrb r6, [r1, #0x1a]
	cmp r6, #0
	bne _0801BE3A
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	mov r1, ip
	ldr r0, [r1]
	adds r2, r3, r0
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #3
	add r0, sl
	ldrb r1, [r2, #0x19]
	ldrb r0, [r0]
	cmp r1, r0
	blo _0801BE3A
	strb r6, [r2, #0x19]
	mov r1, ip
	ldr r0, [r1]
	adds r4, r3, r0
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	add r0, r8
	ldr r0, [r0]
	ldrh r3, [r0, #4]
	adds r5, r1, #1
	lsls r0, r5, #3
	add r0, r8
	ldr r0, [r0]
	ldrh r2, [r0, #4]
	mov r1, sb
	ands r1, r3
	mov r0, sb
	ands r0, r2
	cmp r1, r0
	bne _0801BE38
	strb r6, [r4, #0x18]
	b _0801BE3A
	.align 2, 0
_0801BE2C: .4byte 0x08E0061C
_0801BE30: .4byte 0x080B0D24
_0801BE34: .4byte 0x000003FF
_0801BE38:
	strb r5, [r4, #0x18]
_0801BE3A:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0801BDD0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801BE54
sub_801BE54: @ 0x0801BE54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0801BEDC
	ldr r2, _0801BEE0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	movs r0, #0
	ldr r1, _0801BEE4
	mov sb, r1
	mov r8, r4
_0801BE7C:
	movs r7, #0
	adds r1, r0, #1
	mov sl, r1
	lsls r0, r0, #5
	mov ip, r0
_0801BE86:
	mov r1, sb
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0801BF58
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _0801BF58
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	beq _0801BEF8
	lsls r3, r6, #3
	ldr r0, _0801BEE8
	adds r4, r3, r0
	lsls r1, r7, #2
	adds r1, r5, r1
	movs r2, #5
	ldrsb r2, [r1, r2]
	ldrh r0, [r5, #2]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	movs r0, #4
	ldrsb r0, [r1, r0]
	ldrh r1, [r5]
	adds r0, r0, r1
	ldr r1, _0801BEEC
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r1, _0801BEF0
	orrs r0, r1
	orrs r2, r0
	ldrb r1, [r5, #0x1e]
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #0x1c
	orrs r2, r0
	str r2, [r4]
	ldr r0, _0801BEF4
	b _0801BF30
	.align 2, 0
_0801BEDC: .4byte 0x02018400
_0801BEE0: .4byte 0x01000200
_0801BEE4: .4byte 0x08E0061C
_0801BEE8: .4byte 0x020185E0
_0801BEEC: .4byte 0x000001FF
_0801BEF0: .4byte 0xC0008400
_0801BEF4: .4byte 0x020185E4
_0801BEF8:
	lsls r3, r6, #3
	mov r0, r8
	adds r4, r3, r0
	lsls r1, r7, #2
	adds r1, r5, r1
	movs r2, #5
	ldrsb r2, [r1, r2]
	ldrh r0, [r5, #2]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	movs r0, #4
	ldrsb r0, [r1, r0]
	ldrh r1, [r5]
	adds r0, r0, r1
	ldr r1, _0801BF48
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r1, _0801BF4C
	orrs r0, r1
	orrs r2, r0
	ldrb r1, [r5, #0x1e]
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #0x1c
	orrs r2, r0
	str r2, [r4]
	ldr r0, _0801BF50
_0801BF30:
	adds r3, r3, r0
	mov r1, sb
	ldr r0, [r1]
	add r0, ip
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #3
	ldr r1, _0801BF54
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	str r0, [r3]
	b _0801BF82
	.align 2, 0
_0801BF48: .4byte 0x000001FF
_0801BF4C: .4byte 0xC0008000
_0801BF50: .4byte 0x02018404
_0801BF54: .4byte 0x080B0D24
_0801BF58:
	lsls r0, r6, #3
	add r0, r8
	movs r1, #0xa0
	strh r1, [r0]
	lsls r2, r6, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	add r2, r8
	movs r0, #0
	strh r0, [r2]
_0801BF82:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _0801BF94
	b _0801BE86
_0801BF94:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0801BFA0
	b _0801BE7C
_0801BFA0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801BFB0
sub_801BFB0: @ 0x0801BFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	movs r1, #3
	bl sub_8056258
	lsls r0, r0, #0x18
	ldr r1, _0801BFEC
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80562CC
	ldr r1, _0801BFF0
	ldr r2, _0801BFF4
	adds r0, r2, #0
	strh r0, [r1]
	cmp r4, #0
	bne _0801BFF8
	movs r0, #4
	str r0, [sp]
	b _0801BFFC
	.align 2, 0
_0801BFEC: .4byte 0x08E00620
_0801BFF0: .4byte 0x02024228
_0801BFF4: .4byte 0x00002C10
_0801BFF8:
	movs r1, #0x7a
	str r1, [sp]
_0801BFFC:
	movs r7, #0
	ldr r6, _0801C098
	ldr r2, _0801C09C
	mov r8, r2
	ldr r3, _0801C0A0
	movs r5, #0
	movs r4, #0xa0
_0801C00A:
	lsls r0, r7, #3
	adds r0, r0, r3
	strh r4, [r0]
	lsls r2, r7, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r3
	strh r5, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x7f
	bls _0801C00A
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0801C0A4
	movs r0, #0
	movs r2, #0x80
	bl sub_803EEFC
	movs r7, #0
	ldr r0, _0801C0A8
	mov sl, r0
_0801C054:
	movs r6, #0
	lsls r1, r7, #2
	mov r8, r1
	mov sb, r8
	adds r0, r1, r7
	lsls r0, r0, #3
	ldr r2, [sp]
	adds r0, r2, r0
	str r0, [sp, #4]
_0801C066:
	mov r1, sb
	adds r0, r1, r6
	mov r2, sl
	ldr r1, [r2]
	lsls r0, r0, #5
	adds r4, r0, r1
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #4
	movs r1, #3
	bl sub_805AF28
	movs r2, #0x5e
	subs r1, r2, r0
	cmp r1, #0
	bge _0801C0B0
	ldr r1, _0801C0AC
	adds r0, r0, r1
	subs r0, r2, r0
	strh r0, [r4, #2]
	b _0801C0B2
	.align 2, 0
_0801C098: .4byte 0x080B1E74
_0801C09C: .4byte 0x02000200
_0801C0A0: .4byte 0x02018400
_0801C0A4: .4byte 0x080B0E74
_0801C0A8: .4byte 0x08E0061C
_0801C0AC: .4byte 0xFFFFFF00
_0801C0B0:
	strh r1, [r4, #2]
_0801C0B2:
	mov r2, sb
	adds r1, r2, r6
	ldr r5, _0801C0F8
	ldr r0, [r5]
	lsls r4, r1, #5
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0, #0x18]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r1, [r0, #0x19]
	ldr r0, [r5]
	adds r0, r4, r0
	movs r1, #4
	strb r1, [r0, #0x1b]
	cmp r6, #0
	bne _0801C0FC
	bl sub_8056208
	adds r3, r0, #0
	ldr r1, [r5]
	lsls r0, r7, #7
	adds r1, r0, r1
	adds r0, r3, #0
	cmp r3, #0
	bge _0801C0E8
	adds r0, r3, #3
_0801C0E8:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r3, r0
	ldrb r2, [r1, #0x1a]
	adds r0, r0, r2
	strb r0, [r1, #0x1a]
	b _0801C11E
	.align 2, 0
_0801C0F8: .4byte 0x08E0061C
_0801C0FC:
	bl sub_8056208
	ldr r2, [r5]
	adds r2, r4, r2
	adds r3, r2, #0
	subs r3, #0x20
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	ldrb r3, [r3, #0x1a]
	adds r0, r0, r3
	adds r0, #1
	ldrb r1, [r2, #0x1a]
	adds r0, r0, r1
	strb r0, [r2, #0x1a]
_0801C11E:
	mov r2, r8
	adds r4, r2, r6
	mov r0, sl
	ldr r1, [r0]
	lsls r4, r4, #5
	adds r1, r4, r1
	movs r0, #3
	strb r0, [r1, #0x1c]
	mov r1, sl
	ldr r0, [r1]
	adds r0, r4, r0
	movs r2, #0
	strb r2, [r0, #0x1d]
	bl sub_8056208
	mov r2, sl
	ldr r1, [r2]
	adds r4, r4, r1
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	strb r0, [r4, #0x1e]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _0801C066
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bhi _0801C164
	b _0801C054
_0801C164:
	movs r7, #0
	ldr r0, _0801C1D8
	mov sb, r0
_0801C16A:
	movs r6, #0
	adds r1, r7, #1
	mov r8, r1
	lsls r7, r7, #5
_0801C172:
	bl sub_8056208
	adds r1, r0, #0
	mov r2, sb
	ldr r0, [r2]
	adds r0, r7, r0
	lsls r5, r6, #2
	adds r2, r0, r5
	adds r0, r1, #0
	cmp r1, #0
	bge _0801C18A
	adds r0, #0x1f
_0801C18A:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	movs r1, #0x10
	subs r1, r1, r0
	strb r1, [r2, #4]
	bl sub_8056208
	mov r1, sb
	ldr r4, [r1]
	adds r4, r7, r4
	adds r4, r4, r5
	movs r1, #0x28
	bl sub_805B004
	movs r1, #0x14
	subs r1, r1, r0
	strb r1, [r4, #5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0801C172
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0801C16A
	bl sub_80562E0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C1D8: .4byte 0x08E0061C

	THUMB_FUNC_START sub_801C1DC
sub_801C1DC: @ 0x0801C1DC
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0801C200
	ldr r2, _0801C204
	mov r0, sp
	bl CpuSet
	cmp r4, #0
	bne _0801C208
	bl sub_801C2A0
	b _0801C210
	.align 2, 0
_0801C200: .4byte 0x02018800
_0801C204: .4byte 0x0100218A
_0801C208:
	cmp r4, #1
	bne _0801C210
	bl sub_801C218
_0801C210:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801C218
sub_801C218: @ 0x0801C218
	push {r4, r5, lr}
	movs r5, #0
	movs r0, #1
	bl sub_801BFB0
	ldr r0, _0801C294
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3C0
	movs r4, #1
	movs r0, #0x46
	bl sub_8034F60
_0801C238:
	cmp r5, #0
	bne _0801C254
	adds r0, r4, #0
	bl sub_801BD50
	movs r0, #1
	adds r1, r4, #0
	bl sub_801BC88
	bl sub_801BE54
	adds r0, r4, #0
	bl sub_801C334
_0801C254:
	ldr r0, _0801C298
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3CC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0801C274
	movs r5, #0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801C274:
	adds r0, r4, #0
	movs r1, #1
	bl sub_801C328
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C238
	ldr r0, _0801C29C
	bl sub_80081DC
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C294: .4byte 0x0801C369
_0801C298: .4byte 0x0801C38D
_0801C29C: .4byte 0x0801C3AD

	THUMB_FUNC_START sub_801C2A0
sub_801C2A0: @ 0x0801C2A0
	push {r4, r5, lr}
	movs r5, #0
	movs r0, #0
	bl sub_801BFB0
	ldr r0, _0801C31C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3C0
	movs r4, #1
	movs r0, #0x46
	bl sub_8034F60
_0801C2C0:
	cmp r5, #0
	bne _0801C2DC
	adds r0, r4, #0
	bl sub_801BD50
	movs r0, #0
	adds r1, r4, #0
	bl sub_801BC88
	bl sub_801BE54
	adds r0, r4, #0
	bl sub_801C334
_0801C2DC:
	ldr r0, _0801C320
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3D8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0801C2FC
	movs r5, #0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801C2FC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_801C328
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C2C0
	ldr r0, _0801C324
	bl sub_80081DC
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C31C: .4byte 0x0801C369
_0801C320: .4byte 0x0801C39D
_0801C324: .4byte 0x0801C3AD

	THUMB_FUNC_START sub_801C328
sub_801C328: @ 0x0801C328
	movs r1, #0
	cmp r0, #0x11
	bhi _0801C330
	movs r1, #1
_0801C330:
	adds r0, r1, #0
	bx lr

	THUMB_FUNC_START sub_801C334
sub_801C334: @ 0x0801C334
	push {r4, lr}
	ldr r4, _0801C360
	movs r1, #3
	bl sub_805B940
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801C364
	movs r1, #0x1f
	ands r0, r1
	ands r2, r1
	lsls r2, r2, #8
	orrs r0, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C360: .4byte 0x080B0D50
_0801C364: .4byte 0x02024238

	THUMB_FUNC_START sub_801C368
sub_801C368: @ 0x0801C368
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	bl sub_804549C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C38C
sub_801C38C: @ 0x0801C38C
	push {lr}
	bl sub_80454C8
	bl sub_804549C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C39C
sub_801C39C: @ 0x0801C39C
	push {lr}
	bl sub_80454C8
	bl sub_804549C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3AC
sub_801C3AC: @ 0x0801C3AC
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801C3BC
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0801C3BC: .4byte 0x0000EFFF

	THUMB_FUNC_START sub_801C3C0
sub_801C3C0: @ 0x0801C3C0
	push {lr}
	bl sub_80456AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3CC
sub_801C3CC: @ 0x0801C3CC
	push {lr}
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3D8
sub_801C3D8: @ 0x0801C3D8
	push {lr}
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3E4
sub_801C3E4: @ 0x0801C3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C3FC
	movs r0, #4
	mov sb, r0
	mov sl, r0
	b _0801C404
_0801C3FC:
	movs r2, #0x7c
	mov sb, r2
	movs r4, #4
	mov sl, r4
_0801C404:
	movs r6, #0
	ldr r7, _0801C48C
	ldr r0, _0801C490
	mov r8, r0
	movs r2, #4
	add r2, r8
	mov ip, r2
_0801C412:
	lsls r4, r6, #3
	adds r3, r4, r7
	ldr r0, _0801C494
	ldr r5, [r0]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	mov r2, r8
	adds r0, r1, r2
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _0801C4A0
	mov r2, ip
	adds r0, r1, r2
	ldr r0, [r0]
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r3]
	lsls r2, r6, #2
	adds r1, r2, #1
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r0, r4, r0
	ldrh r0, [r0, #4]
	strh r0, [r2]
	ldrb r0, [r3]
	add r0, sl
	strb r0, [r3]
	ldrh r2, [r3, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	add r1, sb
	ldr r4, _0801C498
	adds r0, r4, #0
	ands r1, r0
	ldr r0, _0801C49C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #1]
	b _0801C4C6
	.align 2, 0
_0801C48C: .4byte 0x02018400
_0801C490: .4byte 0x080B0D54
_0801C494: .4byte 0x08E0081C
_0801C498: .4byte 0x000001FF
_0801C49C: .4byte 0xFFFFFE00
_0801C4A0:
	movs r0, #0xa0
	strh r0, [r3]
	lsls r2, r6, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r7
	movs r0, #0
	strh r0, [r2]
_0801C4C6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x14
	bls _0801C412
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x00, 0x06, 0x19, 0x49, 0x88, 0x46
	.byte 0x04, 0x22, 0x0A, 0x80, 0x18, 0x4B, 0x9A, 0x46, 0xFE, 0x23, 0x5B, 0x00, 0x19, 0x1C, 0x53, 0x46
	.byte 0x19, 0x80, 0x16, 0x4F, 0x3A, 0x80, 0x16, 0x49, 0x89, 0x46, 0x0A, 0x80, 0x00, 0x28, 0x2D, 0xD1
	.byte 0x39, 0xF0, 0x7A, 0xFE, 0x13, 0x4E, 0x14, 0x4D, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78
	.byte 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x6E, 0xFD, 0x24, 0x1A, 0x43, 0x46, 0x1B, 0x88, 0xE4, 0x18
	.byte 0x40, 0x46, 0x04, 0x80, 0x39, 0xF0, 0x68, 0xFE, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78
	.byte 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x5E, 0xFD, 0x24, 0x1A, 0x51, 0x46, 0x09, 0x88, 0x64, 0x18
	.byte 0x53, 0x46, 0x2A, 0xE0, 0x0C, 0x42, 0x02, 0x02, 0x4C, 0x42, 0x02, 0x02, 0x18, 0x42, 0x02, 0x02
	.byte 0x04, 0x42, 0x02, 0x02, 0x18, 0x08, 0xE0, 0x08, 0x1C, 0x08, 0xE0, 0x08, 0x39, 0xF0, 0x4C, 0xFE
	.byte 0x12, 0x4E, 0x13, 0x4D, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78, 0x61, 0x00, 0x01, 0x31
	.byte 0x3E, 0xF0, 0x40, 0xFD, 0x24, 0x1A, 0x38, 0x88, 0x24, 0x18, 0x3C, 0x80, 0x39, 0xF0, 0x3C, 0xFE
	.byte 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78, 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x32, 0xFD
	.byte 0x24, 0x1A, 0x49, 0x46, 0x09, 0x88, 0x64, 0x18, 0x4B, 0x46, 0x1C, 0x80, 0x38, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x18, 0x08, 0xE0, 0x08
	.byte 0x1C, 0x08, 0xE0, 0x08

	THUMB_FUNC_START sub_801C5C4
sub_801C5C4: @ 0x0801C5C4
	push {r4, lr}
	ldr r3, _0801C608
	ldr r0, [r3]
	ldrb r1, [r0]
	adds r1, #1
	movs r4, #0
	strb r1, [r0]
	ldr r1, [r3]
	ldrb r0, [r1]
	cmp r0, #1
	bls _0801C600
	strb r4, [r1]
	ldr r1, [r3]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r2, _0801C60C
	ldr r3, [r3]
	ldrb r1, [r3, #1]
	subs r0, r1, #1
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _0801C600
	strb r4, [r3, #1]
_0801C600:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C608: .4byte 0x08E0081C
_0801C60C: .4byte 0x080B0D54

	THUMB_FUNC_START sub_801C610
sub_801C610: @ 0x0801C610
	push {r4, r5, r6, lr}
	ldr r0, _0801C690
	ldr r1, _0801C694
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0801C698
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r1, _0801C69C
	movs r0, #1
	movs r2, #0x50
	bl sub_803EEFC
	movs r3, #0
	ldr r4, _0801C6A0
	movs r6, #0
	movs r5, #0xa0
_0801C63A:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _0801C63A
	ldr r1, _0801C6A4
	ldr r2, _0801C6A8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0801C6AC
	ldr r2, _0801C6B0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801C6B4
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0801C6B8
	ldr r0, [r2]
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, #1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C690: .4byte 0x080B4894
_0801C694: .4byte 0x02000200
_0801C698: .4byte 0x080B1E94
_0801C69C: .4byte 0x080B3E94
_0801C6A0: .4byte 0x02018400
_0801C6A4: .4byte 0x02024228
_0801C6A8: .4byte 0x00002C10
_0801C6AC: .4byte 0x02024238
_0801C6B0: .4byte 0x0000080E
_0801C6B4: .4byte 0x02024230
_0801C6B8: .4byte 0x08E0081C

	THUMB_FUNC_START sub_801C6BC
sub_801C6BC: @ 0x0801C6BC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl sub_801C610
	ldr r0, _0801C710
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C7AC
	movs r0, #0x44
	bl sub_8034F60
_0801C6DC:
	adds r0, r4, #0
	bl sub_801C3E4
	ldr r0, _0801C714
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C5C4
	bl sub_801C71C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C6DC
	bl sub_0801C730
	ldr r0, _0801C718
	bl sub_80081DC
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C710: .4byte 0x0801C735
_0801C714: .4byte 0x0801C759
_0801C718: .4byte 0x0801C769

	THUMB_FUNC_START sub_801C71C
sub_801C71C: @ 0x0801C71C
	ldr r0, _0801C72C
	ldr r0, [r0]
	ldrh r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0801C72C: .4byte 0x08E0081C

	THUMB_FUNC_START sub_0801C730
sub_0801C730: @ 0x0801C730
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C734
sub_801C734: @ 0x0801C734
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	bl sub_804549C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C758
sub_801C758: @ 0x0801C758
	push {lr}
	bl sub_80454C8
	bl sub_8045434
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C768
sub_801C768: @ 0x0801C768
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801C798
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0801C79C
	movs r1, #4
	strh r1, [r0]
	ldr r2, _0801C7A0
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0801C7A4
	strh r1, [r0]
	ldr r0, _0801C7A8
	strh r1, [r0]
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_0801C798: .4byte 0x0000EFFF
_0801C79C: .4byte 0x0202420C
_0801C7A0: .4byte 0x0202424C
_0801C7A4: .4byte 0x02024218
_0801C7A8: .4byte 0x02024204

	THUMB_FUNC_START sub_801C7AC
sub_801C7AC: @ 0x0801C7AC
	push {lr}
	bl sub_80456AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C7B8
sub_801C7B8: @ 0x0801C7B8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	bl sub_801C98C
	ldr r0, _0801C85C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801CA90
	adds r0, r5, #0
	bl sub_801C870
	ldr r0, _0801C860
	bl sub_80081DC
	movs r4, #0
_0801C7E0:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	bls _0801C7E0
	ldr r0, _0801C864
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	ldrh r2, [r1, #4]
	cmp r0, r2
	bls _0801C84C
	movs r4, #0
	ldrh r0, [r1]
	cmp r0, r2
	bls _0801C83C
	ldr r6, _0801C868
_0801C804:
	bl sub_801CA50
	adds r0, r5, #0
	bl sub_801C870
	ldr r0, _0801C860
	bl sub_80081DC
	bl sub_8008220
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0801C826
	movs r0, #0x47
	bl sub_8034F60
_0801C826:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bhi _0801C83C
	ldr r0, _0801C864
	ldr r1, [r0]
	ldrh r0, [r1]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhi _0801C804
_0801C83C:
	movs r4, #0
_0801C83E:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _0801C83E
_0801C84C:
	ldr r0, _0801C86C
	bl sub_80081DC
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C85C: .4byte 0x0801CA71
_0801C860: .4byte 0x0801CAA1
_0801C864: .4byte 0x08E008B4
_0801C868: .4byte 0x0000270F
_0801C86C: .4byte 0x0801CAAD

	THUMB_FUNC_START sub_801C870
sub_801C870: @ 0x0801C870
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C882
	movs r0, #4
	b _0801C884
_0801C882:
	movs r0, #0x7c
_0801C884:
	mov r8, r0
	movs r0, #0x3c
	mov sb, r0
	ldr r0, _0801C8E0
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	movs r5, #0
	ldr r6, _0801C8E4
	ldr r7, _0801C8E8
	mov ip, r5
_0801C89E:
	cmp r5, #1
	bhi _0801C8EC
	lsls r2, r5, #3
	adds r2, r2, r6
	adds r4, r5, #0
	adds r4, #0xa
	lsls r4, r4, #2
	adds r4, r4, r7
	ldr r0, [r4]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	mov r0, sb
	orrs r0, r1
	strh r0, [r2]
	lsls r1, r5, #2
	adds r2, r1, #1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldr r0, [r4]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #2]
	mov r0, r8
	orrs r0, r3
	strh r0, [r2]
	adds r1, #2
	lsls r1, r1, #1
	adds r1, r1, r6
	ldr r0, [r4]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	strh r0, [r1]
	b _0801C96A
	.align 2, 0
_0801C8E0: .4byte 0x08E008B4
_0801C8E4: .4byte 0x02018400
_0801C8E8: .4byte 0x08E00880
_0801C8EC:
	ldr r0, _0801C93C
	subs r1, r5, #2
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0801C940
	lsls r2, r5, #3
	adds r2, r2, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	mov r0, sb
	orrs r0, r1
	strh r0, [r2]
	lsls r2, r5, #2
	adds r3, r2, #1
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	mov r0, r8
	orrs r0, r1
	strh r0, [r3]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	b _0801C968
	.align 2, 0
_0801C93C: .4byte 0x02021BD0
_0801C940:
	lsls r0, r5, #3
	adds r0, r0, r6
	movs r1, #0xa0
	strh r1, [r0]
	lsls r2, r5, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r6
	mov r0, ip
_0801C968:
	strh r0, [r2]
_0801C96A:
	mov r0, r8
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _0801C89E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C98C
sub_801C98C: @ 0x0801C98C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _0801C9F8
	ldr r1, _0801C9FC
	ldr r2, _0801CA00
	bl CpuSet
	ldr r1, _0801CA04
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	movs r3, #0
	ldr r4, _0801CA08
	movs r6, #0
	movs r5, #0xa0
_0801C9B0:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _0801C9B0
	cmp r7, #1
	bne _0801CA14
	ldr r0, _0801CA0C
	ldr r2, [r0]
	ldr r1, _0801CA10
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #2]
	ldrh r0, [r1, #0x10]
	b _0801CA24
	.align 2, 0
_0801C9F8: .4byte 0x080B8954
_0801C9FC: .4byte 0x02000200
_0801CA00: .4byte 0x04000008
_0801CA04: .4byte 0x080B6954
_0801CA08: .4byte 0x02018400
_0801CA0C: .4byte 0x08E008B4
_0801CA10: .4byte 0x02023EA0
_0801CA14:
	ldr r0, _0801CA3C
	ldr r2, [r0]
	ldr r1, _0801CA40
	ldrh r0, [r1, #2]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	ldrh r0, [r1, #4]
_0801CA24:
	strh r0, [r2, #4]
	ldr r0, _0801CA44
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0801CA48
	strh r1, [r0]
	ldr r0, _0801CA4C
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CA3C: .4byte 0x08E008B4
_0801CA40: .4byte 0x02023EA0
_0801CA44: .4byte 0x02024228
_0801CA48: .4byte 0x02024238
_0801CA4C: .4byte 0x02024230

	THUMB_FUNC_START sub_801CA50
sub_801CA50: @ 0x0801CA50
	ldr r0, _0801CA68
	ldr r1, [r0]
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	subs r0, r3, r2
	cmp r0, #0x48
	ble _0801CA6C
	adds r0, r3, #0
	subs r0, #0x48
	strh r0, [r1]
	b _0801CA6E
	.align 2, 0
_0801CA68: .4byte 0x08E008B4
_0801CA6C:
	strh r2, [r1]
_0801CA6E:
	bx lr

	THUMB_FUNC_START sub_801CA70
sub_801CA70: @ 0x0801CA70
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CA90
sub_801CA90: @ 0x0801CA90
	push {lr}
	bl sub_80456AC
	bl sub_804549C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CAA0
sub_801CAA0: @ 0x0801CAA0
	push {lr}
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CAAC
sub_801CAAC: @ 0x0801CAAC
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801CABC
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0801CABC: .4byte 0x0000EFFF

	THUMB_FUNC_START sub_801CAC0
sub_801CAC0: @ 0x0801CAC0
	push {r4, r5, r6, lr}
	ldr r0, _0801CAD4
	ldr r2, [r0]
	ldrb r3, [r2, #6]
	adds r4, r0, #0
	cmp r3, #0
	bne _0801CAD8
	adds r0, r3, #1
	strb r0, [r2, #6]
	b _0801CAE4
	.align 2, 0
_0801CAD4: .4byte 0x08E00AA0
_0801CAD8:
	movs r0, #0
	strb r0, [r2, #6]
	ldr r1, [r4]
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
_0801CAE4:
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	movs r3, #0
	ldr r6, _0801CB1C
	ldr r5, _0801CB20
_0801CAF2:
	lsls r2, r3, #2
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r6
	lsls r1, r3, #1
	ldr r0, [r4]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0801CAF2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB1C: .4byte 0x02018400
_0801CB20: .4byte 0x080B68D4

	THUMB_FUNC_START sub_801CB24
sub_801CB24: @ 0x0801CB24
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0801CB44
	ldr r2, _0801CB40
	ldr r1, [r2]
	strh r0, [r1]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r1, [r2]
	movs r0, #0xfe
	lsls r0, r0, #1
	b _0801CB54
	.align 2, 0
_0801CB40: .4byte 0x08E00AA0
_0801CB44:
	ldr r2, _0801CC18
	ldr r1, [r2]
	movs r0, #0x7c
	strh r0, [r1]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r1, [r2]
	movs r0, #0x74
_0801CB54:
	strh r0, [r1, #2]
	movs r0, #0xc
	strb r0, [r1, #5]
	ldr r0, [r2]
	movs r1, #0
	strb r1, [r0, #6]
	ldr r0, [r2]
	strb r1, [r0, #7]
	ldr r0, [r2]
	strb r1, [r0, #8]
	ldr r0, _0801CC1C
	ldr r4, _0801CC20
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0801CC24
	adds r4, #0x20
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0801CC28
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _0801CC2C
	movs r0, #1
	movs r2, #0x50
	bl sub_803EEFC
	ldr r1, _0801CC30
	movs r0, #2
	adds r2, r4, #0
	bl sub_803EEFC
	movs r3, #0
	ldr r4, _0801CC34
	movs r6, #0
	movs r5, #0xa0
_0801CBAA:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _0801CBAA
	movs r3, #0
	ldr r5, _0801CC38
	ldr r6, _0801CC3C
	ldr r7, _0801CC40
	ldr r4, _0801CC34
	ldr r2, _0801CC44
_0801CBE6:
	lsls r1, r3, #2
	adds r1, #3
	lsls r1, r1, #1
	adds r1, r1, r4
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0801CBE6
	ldr r1, _0801CC48
	adds r0, r1, #0
	strh r0, [r5]
	ldr r1, _0801CC4C
	adds r0, r1, #0
	strh r0, [r6]
	movs r0, #0
	strh r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC18: .4byte 0x08E00AA0
_0801CC1C: .4byte 0x080B4894
_0801CC20: .4byte 0x02000200
_0801CC24: .4byte 0x080B68B4
_0801CC28: .4byte 0x080B1E94
_0801CC2C: .4byte 0x080B3E94
_0801CC30: .4byte 0x080B48B4
_0801CC34: .4byte 0x02018400
_0801CC38: .4byte 0x02024228
_0801CC3C: .4byte 0x02024238
_0801CC40: .4byte 0x02024230
_0801CC44: .4byte 0x080B68D4
_0801CC48: .4byte 0x00002C10
_0801CC4C: .4byte 0x0000080E

	THUMB_FUNC_START sub_801CC50
sub_801CC50: @ 0x0801CC50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _0801CD08
	movs r6, #0
	ldr r0, _0801CD0C
	mov r8, r0
	adds r7, r5, #0
	ldr r1, _0801CD10
	adds r1, #4
	mov ip, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	mov sl, r2
	movs r3, #0x21
	rsbs r3, r3, #0
	mov sb, r3
_0801CC78:
	mov r0, r8
	ldr r4, [r0]
	ldrb r0, [r4, #7]
	lsls r2, r0, #3
	ldr r1, _0801CD10
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _0801CD1C
	lsls r3, r6, #3
	adds r0, r3, r7
	str r0, [sp]
	mov r1, ip
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, r3, r0
	ldrh r0, [r0]
	ldr r2, [sp]
	strh r0, [r2]
	lsls r2, r6, #2
	adds r1, r2, #1
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r4, #7]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r0, r3, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r0, [r4, #7]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	strh r0, [r2]
	ldrb r0, [r4, #4]
	ldrb r3, [r5]
	adds r0, r0, r3
	strb r0, [r5]
	ldrh r2, [r5, #2]
	lsls r1, r2, #0x17
	ldr r3, _0801CD0C
	ldr r0, [r3]
	lsrs r1, r1, #0x17
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r3, _0801CD14
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _0801CD18
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r5, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #4
	orrs r0, r2
	strb r0, [r5, #1]
	ldrb r1, [r5, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #5]
	b _0801CDCC
	.align 2, 0
_0801CD08: .4byte 0x02018400
_0801CD0C: .4byte 0x08E00AA0
_0801CD10: .4byte 0x080B0E44
_0801CD14: .4byte 0x000001FF
_0801CD18: .4byte 0xFFFFFE00
_0801CD1C:
	cmp r6, r0
	bne _0801CDAC
	ldrb r0, [r4, #5]
	strb r0, [r5]
	ldrb r0, [r5, #1]
	movs r1, #3
	orrs r0, r1
	movs r3, #0xd
	rsbs r3, r3, #0
	ands r0, r3
	movs r4, #4
	orrs r0, r4
	mov r1, sl
	ands r0, r1
	mov r2, sb
	ands r0, r2
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5, #1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	ldr r2, _0801CD8C
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #2]
	ldr r0, _0801CD90
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r5, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	ands r0, r1
	mov r2, sb
	ands r0, r2
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r5, #3]
	ldrh r1, [r5, #4]
	ldr r0, _0801CD94
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r1, [r5, #5]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0801CD98
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r4
	b _0801CD9C
	.align 2, 0
_0801CD8C: .4byte 0x000001FF
_0801CD90: .4byte 0xFFFFFE00
_0801CD94: .4byte 0xFFFFFC00
_0801CD98:
	adds r0, r3, #0
	ands r0, r1
_0801CD9C:
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r5, #5]
	b _0801CDCC
_0801CDAC:
	lsls r0, r6, #3
	adds r0, r0, r7
	movs r1, #0xa0
	strh r1, [r0]
	lsls r2, r6, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0xf0
	strh r1, [r0]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r7
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r2]
_0801CDCC:
	adds r5, #8
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r0, #0
	blt _0801CDDA
	b _0801CC78
_0801CDDA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CDEC
sub_801CDEC: @ 0x0801CDEC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_801CB24
	ldr r0, _0801CE38
	bl sub_80081DC
	bl sub_8008220
	bl sub_801CE6C
	movs r0, #0x45
	bl sub_8034F60
_0801CE0A:
	bl sub_801CC50
	ldr r0, _0801CE3C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801CAC0
	bl sub_801CE44
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CE0A
	bl sub_0801CE68
	ldr r0, _0801CE40
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801CE38: .4byte 0x0801CE79
_0801CE3C: .4byte 0x0801CE9D
_0801CE40: .4byte 0x0801CEA9

	THUMB_FUNC_START sub_801CE44
sub_801CE44: @ 0x0801CE44
	ldr r1, _0801CE5C
	ldr r0, _0801CE60
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CE64
	movs r0, #1
	b _0801CE66
	.align 2, 0
_0801CE5C: .4byte 0x080B0E44
_0801CE60: .4byte 0x08E00AA0
_0801CE64:
	movs r0, #0
_0801CE66:
	bx lr

	THUMB_FUNC_START sub_0801CE68
sub_0801CE68: @ 0x0801CE68
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CE6C
sub_801CE6C: @ 0x0801CE6C
	push {lr}
	bl sub_80456AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CE78
sub_801CE78: @ 0x0801CE78
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	bl sub_804549C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CE9C
sub_801CE9C: @ 0x0801CE9C
	push {lr}
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CEA8
sub_801CEA8: @ 0x0801CEA8
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801CEB8
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0801CEB8: .4byte 0x0000EFFF

	THUMB_FUNC_START sub_801CEBC
sub_801CEBC: @ 0x0801CEBC
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _0801CEFC
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801CEF0
	mov r0, sp
	bl sub_80240BC
	mov r1, sp
	movs r0, #0x18
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_802408C
	ldr r1, _0801CF00
	movs r0, #5
	strb r0, [r1]
	bl sub_8024548
	ldr r4, _0801CF04
_0801CEE6:
	bl sub_8024354
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801CEE6
_0801CEF0:
	bl sub_801CF08
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CEFC: .4byte 0x020241FC
_0801CF00: .4byte 0x02021D98
_0801CF04: .4byte 0x03000C6C

	THUMB_FUNC_START sub_801CF08
sub_801CF08: @ 0x0801CF08
	push {lr}
	ldr r1, _0801CF28
	ldrb r0, [r1, #0xa]
	cmp r0, #0xa
	bhi _0801CF24
	ldr r0, _0801CF2C
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_805AAB8
	bl sub_8022080
_0801CF24:
	pop {r0}
	bx r0
	.align 2, 0
_0801CF28: .4byte 0x02021C10
_0801CF2C: .4byte 0x08E00AA4
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801CF38
sub_801CF38: @ 0x0801CF38
	push {r4, lr}
	movs r0, #0x41
	bl sub_8034F60
	ldr r4, _0801CF68
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_8041CCC
	ldrh r0, [r4]
	bl SetCardData
	ldr r1, _0801CF6C
	ldr r0, _0801CF70
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CF68: .4byte 0x02021C10
_0801CF6C: .4byte 0x089DC020
_0801CF70: .4byte 0x02021AD0

	THUMB_FUNC_START sub_801CF74
sub_801CF74: @ 0x0801CF74
	push {r4, lr}
	movs r0, #0x40
	bl sub_8034F60
	ldr r4, _0801CFA4
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_8041CCC
	ldrh r0, [r4]
	bl SetCardData
	ldr r1, _0801CFA8
	ldr r0, _0801CFAC
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFA4: .4byte 0x02021C10
_0801CFA8: .4byte 0x089DC14C
_0801CFAC: .4byte 0x02021AD0

	THUMB_FUNC_START sub_801CFB0
sub_801CFB0: @ 0x0801CFB0
	push {r4, lr}
	movs r0, #0x42
	bl sub_8034F60
	ldr r4, _0801CFE0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_8041CCC
	ldrh r0, [r4]
	bl SetCardData
	ldr r1, _0801CFE4
	ldr r0, _0801CFE8
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFE0: .4byte 0x02021C10
_0801CFE4: .4byte 0x089DC020
_0801CFE8: .4byte 0x02021AD0

	THUMB_FUNC_START sub_801CFEC
sub_801CFEC: @ 0x0801CFEC
	push {lr}
	movs r0, #0x42
	bl sub_8034F60
	ldr r1, _0801D004
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_8041D14
	pop {r0}
	bx r0
	.align 2, 0
_0801D004: .4byte 0x02021C10

	THUMB_FUNC_START sub_801D008
sub_801D008: @ 0x0801D008
	push {r4, lr}
	sub sp, #4
	movs r0, #4
	bl sub_8035020
	movs r0, #0x52
	bl sub_8034F60
	ldr r1, _0801D03C
	ldr r3, _0801D040
	ldrh r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D03C: .4byte 0x08FA2BAC
_0801D040: .4byte 0x02021C10

	THUMB_FUNC_START sub_801D044
sub_801D044: @ 0x0801D044
	push {r4, lr}
	sub sp, #4
	movs r0, #4
	bl sub_8035020
	movs r0, #0x52
	bl sub_8034F60
	ldr r1, _0801D078
	ldr r3, _0801D07C
	ldrh r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D078: .4byte 0x08FA2BAC
_0801D07C: .4byte 0x02021C10

	THUMB_FUNC_START sub_801D080
sub_801D080: @ 0x0801D080
	push {r4, lr}
	sub sp, #4
	ldr r1, _0801D0A8
	ldr r3, _0801D0AC
	ldrh r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0A8: .4byte 0x08FA2BAC
_0801D0AC: .4byte 0x02021C10

	THUMB_FUNC_START sub_801D0B0
sub_801D0B0: @ 0x0801D0B0
	push {r4, lr}
	sub sp, #4
	movs r0, #0x41
	bl sub_8034F60
	ldr r2, _0801D0F0
	ldr r4, _0801D0F4
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r2, [r4, #2]
	movs r3, #0
	str r3, [sp]
	bl sub_8041C94
	ldrh r0, [r4]
	bl SetCardData
	ldr r1, _0801D0F8
	ldr r0, _0801D0FC
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0F0: .4byte 0x08F9E35C
_0801D0F4: .4byte 0x02021C10
_0801D0F8: .4byte 0x089DC23C
_0801D0FC: .4byte 0x02021AD0

	THUMB_FUNC_START sub_801D100
sub_801D100: @ 0x0801D100
	push {r4, lr}
	sub sp, #4
	movs r0, #0x41
	bl sub_8034F60
	ldr r2, _0801D140
	ldr r4, _0801D144
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r2, [r4, #2]
	movs r3, #0
	str r3, [sp]
	bl sub_8041C94
	ldrh r0, [r4]
	bl SetCardData
	ldr r1, _0801D148
	ldr r0, _0801D14C
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D140: .4byte 0x08FA0964
_0801D144: .4byte 0x02021C10
_0801D148: .4byte 0x089DC2DC
_0801D14C: .4byte 0x02021AD0

	THUMB_FUNC_START sub_801D150
sub_801D150: @ 0x0801D150
	push {lr}
	sub sp, #4
	movs r0, #0x41
	bl sub_8034F60
	ldr r1, _0801D180
	ldr r2, _0801D184
	ldrh r0, [r2, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	movs r3, #0
	str r3, [sp]
	bl sub_8041C94
	movs r0, #0x5a
	bl sub_8034F60
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0801D180: .4byte 0x08FA2BAC
_0801D184: .4byte 0x02021C10

	THUMB_FUNC_START sub_801D188
sub_801D188: @ 0x0801D188
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xa
	bhi _0801D19C
	ldr r0, _0801D198
	strb r1, [r0, #0xa]
	b _0801D1A2
	.align 2, 0
_0801D198: .4byte 0x02021C10
_0801D19C:
	ldr r1, _0801D1A4
	movs r0, #0
	strb r0, [r1, #0xa]
_0801D1A2:
	bx lr
	.align 2, 0
_0801D1A4: .4byte 0x02021C10

	THUMB_FUNC_START sub_801D1A8
sub_801D1A8: @ 0x0801D1A8
	ldr r0, _0801D1BC
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bx lr
	.align 2, 0
_0801D1BC: .4byte 0x02021C10

	THUMB_FUNC_START sub_801D1C0
sub_801D1C0: @ 0x0801D1C0
	push {r4, lr}
	movs r4, #1
	bl sub_801D3FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801D2CC
	bl sub_801D414
	bl sub_801D420
_0801D1D8:
	bl sub_801D2D4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #8
	beq _0801D25E
	cmp r1, #8
	bgt _0801D1FA
	cmp r1, #1
	beq _0801D248
	cmp r1, #1
	ble _0801D290
	cmp r1, #2
	beq _0801D254
	cmp r1, #4
	beq _0801D274
	b _0801D290
_0801D1FA:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0801D226
	cmp r1, r0
	bgt _0801D210
	cmp r1, #0x40
	beq _0801D220
	cmp r1, #0x80
	beq _0801D22C
	b _0801D290
_0801D210:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0801D232
	adds r0, #0x80
	cmp r1, r0
	beq _0801D238
	b _0801D290
_0801D220:
	bl sub_801D444
	b _0801D23C
_0801D226:
	bl sub_801D490
	b _0801D23C
_0801D22C:
	bl sub_801D458
	b _0801D23C
_0801D232:
	bl sub_801D4A4
	b _0801D23C
_0801D238:
	bl sub_801D46C
_0801D23C:
	bl sub_801F5FC
	movs r0, #4
	bl sub_801F4A0
	b _0801D2A0
_0801D248:
	bl sub_801D4B8
	movs r0, #7
	bl sub_801F4A0
	b _0801D2A0
_0801D254:
	movs r4, #0
	movs r0, #0x38
	bl sub_8034F60
	b _0801D2A0
_0801D25E:
	bl sub_801F120
	movs r0, #7
	bl sub_801EF30
	movs r0, #9
	bl sub_801F4A0
	bl sub_801F644
	b _0801D2A0
_0801D274:
	bl sub_801D480
	movs r0, #6
	bl sub_801EF30
	movs r0, #0x37
	bl sub_8034F60
	movs r0, #8
	bl sub_801F4A0
	bl sub_801F630
	b _0801D2A0
_0801D290:
	movs r0, #5
	bl sub_801EF30
	bl sub_0801F62C
	movs r0, #5
	bl sub_801F4A0
_0801D2A0:
	bl sub_801D3FC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D2AC
	movs r4, #0
_0801D2AC:
	cmp r4, #0
	bne _0801D1D8
	movs r0, #8
	bl sub_801DA7C
	movs r0, #1
	bl sub_801EF30
	movs r0, #9
	bl sub_8008F88
	bl sub_0801F5EC
	movs r0, #2
	bl sub_801F4A0
_0801D2CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D2D4
sub_801D2D4: @ 0x0801D2D4
	push {r4, r5, lr}
	movs r4, #0
	bl sub_802612C
	movs r2, #1
	movs r1, #0
	ldr r0, _0801D35C
	ldrh r3, [r0]
_0801D2E4:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D2EE
	adds r4, r0, #0
_0801D2EE:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _0801D2E4
	movs r2, #0x10
	movs r1, #0
	ldr r5, _0801D360
	ldrh r3, [r5]
_0801D304:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D30E
	adds r4, r0, #0
_0801D30E:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801D304
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D338
	ldr r0, _0801D364
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D338
	movs r4, #0xa0
	lsls r4, r4, #1
_0801D338:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D354
	ldr r0, _0801D364
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D354
	movs r4, #0xc0
	lsls r4, r4, #1
_0801D354:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801D35C: .4byte 0x02020DFC
_0801D360: .4byte 0x02021DCC
_0801D364: .4byte gKeyState

	THUMB_FUNC_START sub_801D368
sub_801D368: @ 0x0801D368
	push {r4, r5, lr}
	movs r4, #0
	bl sub_802612C
	movs r2, #1
	movs r1, #0
	ldr r0, _0801D3F0
	ldrh r3, [r0]
_0801D378:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D382
	adds r4, r0, #0
_0801D382:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _0801D378
	movs r2, #0x10
	movs r1, #0
	ldr r5, _0801D3F4
	ldrh r3, [r5]
_0801D398:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D3A2
	adds r4, r0, #0
_0801D3A2:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801D398
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D3CC
	ldr r0, _0801D3F8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D3CC
	movs r4, #0xa0
	lsls r4, r4, #1
_0801D3CC:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D3E8
	ldr r0, _0801D3F8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D3E8
	movs r4, #0xc0
	lsls r4, r4, #1
_0801D3E8:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801D3F0: .4byte 0x02020DFC
_0801D3F4: .4byte 0x02020DF4
_0801D3F8: .4byte gKeyState

	THUMB_FUNC_START sub_801D3FC
sub_801D3FC: @ 0x0801D3FC
	push {lr}
	bl GetDeckSize
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D414
sub_801D414: @ 0x0801D414
	push {lr}
	bl sub_801DE10
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D420
sub_801D420: @ 0x0801D420
	push {lr}
	movs r0, #0
	bl sub_801EF30
	movs r0, #2
	bl sub_801EF30
	movs r0, #1
	bl sub_801F4A0
	bl sub_801F5F0
	movs r0, #3
	bl sub_801F4A0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D444
sub_801D444: @ 0x0801D444
	push {lr}
	movs r0, #3
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D458
sub_801D458: @ 0x0801D458
	push {lr}
	movs r0, #2
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D46C
sub_801D46C: @ 0x0801D46C
	push {lr}
	movs r0, #6
	bl sub_801DA7C
	movs r0, #4
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D480
sub_801D480: @ 0x0801D480
	push {lr}
	bl sub_801D918
	movs r0, #6
	bl sub_801EF30
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D490
sub_801D490: @ 0x0801D490
	push {lr}
	movs r0, #5
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D4A4
sub_801D4A4: @ 0x0801D4A4
	push {lr}
	movs r0, #4
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D4B8
sub_801D4B8: @ 0x0801D4B8
	push {r4, lr}
	ldr r0, _0801D4F0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801DE5C
	bl sub_801D61C
	bl sub_8045658
	ldr r0, _0801D4F4
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0801D4DE:
	bl sub_801D368
	cmp r0, #2
	beq _0801D52C
	cmp r0, #2
	bgt _0801D4F8
	cmp r0, #1
	beq _0801D50E
	b _0801D536
	.align 2, 0
_0801D4F0: .4byte 0x0201CB50
_0801D4F4: .4byte 0x0801D68D
_0801D4F8:
	cmp r0, #0x40
	beq _0801D502
	cmp r0, #0x80
	beq _0801D508
	b _0801D536
_0801D502:
	bl sub_801D548
	b _0801D53A
_0801D508:
	bl sub_801D57C
	b _0801D53A
_0801D50E:
	ldr r0, _0801D51C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D520
	cmp r0, #1
	beq _0801D526
	b _0801D53A
	.align 2, 0
_0801D51C: .4byte 0x0201CB50
_0801D520:
	bl sub_801D5B0
	b _0801D53A
_0801D526:
	bl sub_801D600
	b _0801D53E
_0801D52C:
	movs r4, #0
	movs r0, #0x38
	bl sub_8034F60
	b _0801D53A
_0801D536:
	bl sub_8008220
_0801D53A:
	cmp r4, #0
	bne _0801D4DE
_0801D53E:
	bl sub_801D678
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D548
sub_801D548: @ 0x0801D548
	push {lr}
	ldr r2, _0801D570
	ldr r1, _0801D574
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	bl sub_801D61C
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801D578
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801D570: .4byte 0x0201CB50
_0801D574: .4byte 0x08E00AD4
_0801D578: .4byte 0x080454C9

	THUMB_FUNC_START sub_801D57C
sub_801D57C: @ 0x0801D57C
	push {lr}
	ldr r2, _0801D5A4
	ldr r1, _0801D5A8
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	bl sub_801D61C
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801D5AC
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801D5A4: .4byte 0x0201CB50
_0801D5A8: .4byte 0x08E00AD6
_0801D5AC: .4byte 0x080454C9

	THUMB_FUNC_START sub_801D5B0
sub_801D5B0: @ 0x0801D5B0
	push {lr}
	movs r0, #2
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801F6B0
	movs r0, #0
	bl sub_801EF30
	movs r0, #2
	bl sub_801EF30
	movs r0, #1
	bl sub_801F4A0
	bl sub_801F5F0
	bl sub_801DE5C
	bl sub_801D61C
	ldr r0, _0801D5FC
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045658
	pop {r0}
	bx r0
	.align 2, 0
_0801D5FC: .4byte 0x0801D68D

	THUMB_FUNC_START sub_801D600
sub_801D600: @ 0x0801D600
	push {lr}
	movs r0, #7
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	bl sub_801F614
	movs r0, #6
	bl sub_801F4A0
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D61C
sub_801D61C: @ 0x0801D61C
	push {r4, r5, lr}
	ldr r3, _0801D660
	ldr r2, _0801D664
	ldr r5, _0801D668
	ldrb r0, [r5]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0801D66C
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0801D670
	str r0, [r3, #4]
	ldrb r0, [r5]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0801D674
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D660: .4byte 0x02018430
_0801D664: .4byte 0x08E00AD8
_0801D668: .4byte 0x0201CB50
_0801D66C: .4byte 0x08E00ADB
_0801D670: .4byte 0x0000C120
_0801D674: .4byte 0x40000800

	THUMB_FUNC_START sub_801D678
sub_801D678: @ 0x0801D678
	ldr r1, _0801D688
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0801D688: .4byte 0x02018430

	THUMB_FUNC_START sub_801D68C
sub_801D68C: @ 0x0801D68C
	push {lr}
	bl sub_80454E0
	bl sub_80454C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xbf
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x52
	movs r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _0801D6BC
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0801D6BC: .4byte 0x04000050

	THUMB_FUNC_START sub_801D6C0
sub_801D6C0: @ 0x0801D6C0
	ldr r1, _0801D6CC
	movs r0, #0xc8
	lsls r0, r0, #3
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D6CC: .4byte 0x02021C1C

	THUMB_FUNC_START sub_801D6D0
sub_801D6D0: @ 0x0801D6D0
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0801D6E4
	ldr r1, [r2]
	ldr r4, _0801D6E8
	subs r0, r4, r1
	cmp r3, r0
	bls _0801D6EC
	str r4, [r2]
	b _0801D6F0
	.align 2, 0
_0801D6E4: .4byte 0x02021C1C
_0801D6E8: .4byte 0x0000FDE8
_0801D6EC:
	adds r0, r1, r3
	str r0, [r2]
_0801D6F0:
	bl sub_801D73C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x1C, 0x03, 0x4A
	.byte 0x10, 0x68, 0x81, 0x42, 0x04, 0xD9, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x1C, 0x1C, 0x02, 0x02
	.byte 0x40, 0x1A, 0x10, 0x60, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801D718
sub_801D718: @ 0x0801D718
	ldr r0, _0801D720
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0801D720: .4byte 0x02021C1C

	THUMB_FUNC_START sub_801D724
sub_801D724: @ 0x0801D724
	ldr r1, _0801D72C
	movs r0, #0x48
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D72C: .4byte 0x02021C20

	THUMB_FUNC_START GetDuelistLevel
GetDuelistLevel: @ 0x0801D730
	ldr r0, _0801D738
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0801D738: .4byte 0x02021C20

	THUMB_FUNC_START sub_801D73C
sub_801D73C: @ 0x0801D73C
	push {r4, lr}
	ldr r4, _0801D744
	b _0801D74E
	.align 2, 0
_0801D744: .4byte 0x02021C20
_0801D748:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_0801D74E:
	bl sub_801D760
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D748
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D760
sub_801D760: @ 0x0801D760
	ldr r0, _0801D78C
	ldr r2, [r0]
	ldr r0, _0801D790
	cmp r2, r0
	bhi _0801D7A0
	ldr r1, _0801D794
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, _0801D798
	ldr r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0801D7A0
	ldr r0, _0801D79C
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	movs r0, #1
	b _0801D7A2
	.align 2, 0
_0801D78C: .4byte 0x02021C20
_0801D790: .4byte 0x000003E6
_0801D794: .4byte 0x080B8974
_0801D798: .4byte 0x02021C1C
_0801D79C: .4byte 0x02021D10
_0801D7A0:
	movs r0, #0
_0801D7A2:
	bx lr
	.byte 0x10, 0xB5, 0x00, 0x22, 0x07, 0x4C, 0x08, 0x4B, 0x50, 0x00, 0x01, 0x19
	.byte 0xC0, 0x18, 0x00, 0x88, 0x08, 0x80, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E, 0x27, 0x2A, 0xF5, 0xD9
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x44, 0x41, 0x02, 0x02, 0x44, 0x91, 0x0B, 0x08

	THUMB_FUNC_START sub_801D7D0
sub_801D7D0: @ 0x0801D7D0
	push {r4, r5, lr}
	movs r0, #2
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0801D7E8
	movs r0, #0x39
	bl sub_8034F60
	b _0801D868
_0801D7E8:
	adds r0, r4, #0
	bl SetCardData
	adds r0, r4, #0
	bl sub_8009098
	ldr r4, _0801D81C
	ldrb r0, [r4, #4]
	bl sub_801DD88
	movs r2, #4
	ldrsb r2, [r4, r2]
	ldrb r0, [r4, #8]
	cmp r2, r0
	blt _0801D85A
	ldrb r1, [r4, #4]
	subs r0, r1, r0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0
	beq _0801D82C
	cmp r0, r2
	bgt _0801D820
	subs r0, r1, r0
	b _0801D822
	.align 2, 0
_0801D81C: .4byte 0x02021C30
_0801D820:
	movs r0, #0
_0801D822:
	strb r0, [r4, #4]
	movs r0, #0x36
	bl sub_8034F60
	b _0801D85A
_0801D82C:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D85A
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801D870
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D85A
	adds r4, r2, #0
	movs r5, #0x40
_0801D84C:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801D84C
_0801D85A:
	ldr r0, _0801D874
	ldr r0, [r0, #0xc]
	bl sub_801DD34
	movs r0, #0x37
	bl sub_8034F60
_0801D868:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D870: .4byte gKeyState
_0801D874: .4byte 0x02021AD0

	THUMB_FUNC_START sub_801D878
sub_801D878: @ 0x0801D878
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r6, #0
	adds r0, r4, #0
	bl SetCardData
	adds r0, r4, #0
	bl sub_801DD50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0801D8C8
	ldrb r1, [r4, #8]
	cmp r0, r1
	bhs _0801D8A8
	bl sub_801DD88
	ldr r0, _0801D8CC
	ldr r0, [r0, #0xc]
	bl sub_801DD34
	movs r6, #1
_0801D8A8:
	movs r2, #4
	ldrsb r2, [r4, r2]
	ldrb r0, [r4, #8]
	cmp r2, r0
	blt _0801D90A
	ldrb r1, [r4, #4]
	subs r0, r1, r0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0
	beq _0801D8DC
	cmp r0, r2
	bgt _0801D8D0
	subs r0, r1, r0
	b _0801D8D2
	.align 2, 0
_0801D8C8: .4byte 0x02021C30
_0801D8CC: .4byte 0x02021AD0
_0801D8D0:
	movs r0, #0
_0801D8D2:
	strb r0, [r4, #4]
	movs r0, #0x36
	bl sub_8034F60
	b _0801D90A
_0801D8DC:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D90A
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801D914
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D90A
	adds r4, r2, #0
	movs r5, #0x40
_0801D8FC:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801D8FC
_0801D90A:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801D914: .4byte gKeyState

	THUMB_FUNC_START sub_801D918
sub_801D918: @ 0x0801D918
	push {r4, r5, lr}
	ldr r5, _0801D954
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0801D92E
	movs r0, #0
	strb r0, [r5, #5]
_0801D92E:
	ldrb r1, [r5, #5]
	ldr r2, _0801D958
	adds r0, r5, #0
	adds r0, #0xa
	str r0, [r2]
	ldrb r0, [r5, #8]
	movs r4, #0
	strh r0, [r2, #8]
	ldr r0, _0801D95C
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	strb r4, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D954: .4byte 0x02021C30
_0801D958: .4byte gUnk2022EB0
_0801D95C: .4byte 0x08E00AE0

	THUMB_FUNC_START sub_801D960
sub_801D960: @ 0x0801D960
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0
	ldr r0, _0801D994
	movs r4, #0
	adds r1, r0, #0
	adds r1, #0xa
_0801D970:
	ldrh r0, [r1]
	cmp r0, r2
	bne _0801D978
	strh r4, [r1]
_0801D978:
	adds r1, #2
	adds r3, #1
	cmp r3, #0x27
	bls _0801D970
	movs r3, #0
	movs r5, #0x27
	ldr r6, _0801D998
_0801D986:
	lsls r0, r3, #1
	adds r4, r0, r6
	ldrh r2, [r4]
	cmp r2, #0
	beq _0801D99C
	adds r3, #1
	b _0801D9AE
	.align 2, 0
_0801D994: .4byte 0x02021C30
_0801D998: .4byte 0x02021C3A
_0801D99C:
	lsls r0, r5, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	cmp r1, #0
	beq _0801D9AC
	strh r1, [r4]
	strh r2, [r0]
	adds r3, #1
_0801D9AC:
	subs r5, #1
_0801D9AE:
	cmp r3, r5
	blo _0801D986
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D9B8
sub_801D9B8: @ 0x0801D9B8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r1, _0801D9D0
	ldrh r0, [r1, #0xa]
	adds r2, r1, #0
	cmp r0, r4
	bne _0801D9D4
	strh r3, [r2, #0xa]
	b _0801D9EC
	.align 2, 0
_0801D9D0: .4byte 0x02021C30
_0801D9D4:
	adds r3, #1
	cmp r3, #0x27
	bhi _0801D9EC
	lsls r0, r3, #1
	adds r1, r2, #0
	adds r1, #0xa
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r4
	bne _0801D9D4
	movs r0, #0
	strh r0, [r1]
_0801D9EC:
	movs r3, #0
	movs r5, #0x27
	ldr r6, _0801DA00
_0801D9F2:
	lsls r0, r3, #1
	adds r4, r0, r6
	ldrh r2, [r4]
	cmp r2, #0
	beq _0801DA04
	adds r3, #1
	b _0801DA16
	.align 2, 0
_0801DA00: .4byte 0x02021C3A
_0801DA04:
	lsls r0, r5, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	cmp r1, #0
	beq _0801DA14
	strh r1, [r4]
	strh r2, [r0]
	adds r3, #1
_0801DA14:
	subs r5, #1
_0801DA16:
	cmp r3, r5
	blo _0801D9F2
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801DA20
sub_801DA20: @ 0x0801DA20
	push {lr}
	ldr r2, _0801DA54
	movs r1, #0
	strb r1, [r2, #5]
	strb r1, [r2, #4]
	movs r0, #1
	strb r0, [r2, #6]
	strb r1, [r2, #8]
	movs r3, #0
	adds r1, r2, #0
	adds r1, #0xa
_0801DA36:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801DA42
	ldrb r0, [r2, #8]
	adds r0, #1
	strb r0, [r2, #8]
_0801DA42:
	adds r1, #2
	adds r3, #1
	cmp r3, #0x27
	bls _0801DA36
	bl sub_801DCF0
	pop {r0}
	bx r0
	.align 2, 0
_0801DA54: .4byte 0x02021C30

	THUMB_FUNC_START sub_801DA58
sub_801DA58: @ 0x0801DA58
	movs r3, #0
	ldr r0, _0801DA74
	ldr r2, _0801DA78
	adds r1, r0, #0
	adds r1, #0xa
_0801DA62:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x27
	bls _0801DA62
	bx lr
	.align 2, 0
_0801DA74: .4byte 0x02021C30
_0801DA78: .4byte 0x080F3180

	THUMB_FUNC_START sub_801DA7C
sub_801DA7C: @ 0x0801DA7C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _0801DAF4
	lsls r0, r0, #2
	ldr r1, _0801DA90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801DA90: .4byte 0x0801DA94
_0801DA94: @ jump table
	.4byte _0801DAB8 @ case 0
	.4byte _0801DABE @ case 1
	.4byte _0801DAC4 @ case 2
	.4byte _0801DACC @ case 3
	.4byte _0801DAD4 @ case 4
	.4byte _0801DADC @ case 5
	.4byte _0801DAE4 @ case 6
	.4byte _0801DAEA @ case 7
	.4byte _0801DAF0 @ case 8
_0801DAB8:
	bl sub_801DA58
	b _0801DAF4
_0801DABE:
	bl sub_801DA20
	b _0801DAF4
_0801DAC4:
	movs r0, #1
	bl sub_801DC04
	b _0801DAF4
_0801DACC:
	movs r0, #1
	bl sub_801DC64
	b _0801DAF4
_0801DAD4:
	movs r0, #0xa
	bl sub_801DC04
	b _0801DAF4
_0801DADC:
	movs r0, #0xa
	bl sub_801DC64
	b _0801DAF4
_0801DAE4:
	bl sub_801DCC8
	b _0801DAF4
_0801DAEA:
	bl sub_801D7D0
	b _0801DAF4
_0801DAF0:
	bl sub_0801DCEC
_0801DAF4:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801DAF8
sub_801DAF8: @ 0x0801DAF8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0801DB14
	movs r1, #4
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	subs r0, r1, #2
	cmp r0, #0
	blt _0801DB0E
	cmp r0, #0x27
	ble _0801DB18
_0801DB0E:
	movs r0, #0
	b _0801DB22
	.align 2, 0
_0801DB14: .4byte 0x02021C30
_0801DB18:
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
_0801DB22:
	bx lr

	THUMB_FUNC_START sub_801DB24
sub_801DB24: @ 0x0801DB24
	ldr r0, _0801DB2C
	ldrb r0, [r0, #6]
	bx lr
	.align 2, 0
_0801DB2C: .4byte 0x02021C30

	THUMB_FUNC_START sub_801DB30
sub_801DB30: @ 0x0801DB30
	ldr r2, _0801DB44
	ldr r1, _0801DB48
	movs r0, #4
	ldrsb r0, [r1, r0]
	strh r0, [r2]
	ldrb r0, [r1, #8]
	subs r0, #1
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0801DB44: .4byte 0x02021AB4
_0801DB48: .4byte 0x02021C30

	THUMB_FUNC_START GetDeckSize
GetDeckSize: @ 0x0801DB4C
	ldr r0, _0801DB54
	ldrb r0, [r0, #8]
	bx lr
	.align 2, 0
_0801DB54: .4byte 0x02021C30

	THUMB_FUNC_START sub_801DB58
sub_801DB58: @ 0x0801DB58
	ldr r0, _0801DB60
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0801DB60: .4byte 0x02021C30

	THUMB_FUNC_START sub_801DB64
sub_801DB64: @ 0x0801DB64
	push {lr}
	ldr r3, _0801DB84
	ldrb r1, [r3, #8]
	lsls r1, r1, #1
	adds r2, r3, #0
	adds r2, #0xa
	adds r1, r1, r2
	strh r0, [r1]
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	bl sub_801DCF0
	pop {r0}
	bx r0
	.align 2, 0
_0801DB84: .4byte 0x02021C30

	THUMB_FUNC_START sub_801DB88
sub_801DB88: @ 0x0801DB88
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0
	movs r1, #0
	ldr r4, _0801DBB8
_0801DB94:
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801DBA4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801DBA4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bls _0801DB94
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801DBB8: .4byte 0x02021C3A

	THUMB_FUNC_START sub_801DBBC
sub_801DBBC: @ 0x0801DBBC
	movs r1, #0
	ldr r2, _0801DBD0
_0801DBC0:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801DBD4
	movs r0, #0
	b _0801DBE0
	.align 2, 0
_0801DBD0: .4byte 0x02021C3A
_0801DBD4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bls _0801DBC0
	movs r0, #1
_0801DBE0:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DBE4
sub_801DBE4: @ 0x0801DBE4
	push {lr}
	bl sub_801D718
	ldr r1, _0801DBF8
	ldr r1, [r1]
	cmp r0, r1
	blo _0801DBFC
	movs r0, #1
	b _0801DBFE
	.align 2, 0
_0801DBF8: .4byte 0x02021C30
_0801DBFC:
	movs r0, #0
_0801DBFE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DC04
sub_801DC04: @ 0x0801DC04
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _0801DC28
	movs r1, #4
	ldrsb r1, [r2, r1]
	ldrb r0, [r2, #8]
	subs r3, r0, #1
	cmp r1, r3
	beq _0801DC36
	subs r0, r0, r1
	cmp r4, r0
	bge _0801DC2C
	ldrb r0, [r2, #4]
	adds r0, r4, r0
	strb r0, [r2, #4]
	b _0801DC2E
	.align 2, 0
_0801DC28: .4byte 0x02021C30
_0801DC2C:
	strb r3, [r2, #4]
_0801DC2E:
	movs r0, #0x36
	bl sub_8034F60
	b _0801DC5A
_0801DC36:
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801DC60
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801DC5A
	adds r4, r2, #0
	movs r5, #0x80
_0801DC4C:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801DC4C
_0801DC5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC60: .4byte gKeyState

	THUMB_FUNC_START sub_801DC64
sub_801DC64: @ 0x0801DC64
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0801DC80
	ldrb r3, [r1, #4]
	movs r0, #4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0801DC90
	cmp r2, r0
	bgt _0801DC84
	subs r0, r3, r2
	b _0801DC86
	.align 2, 0
_0801DC80: .4byte 0x02021C30
_0801DC84:
	movs r0, #0
_0801DC86:
	strb r0, [r1, #4]
	movs r0, #0x36
	bl sub_8034F60
	b _0801DCBE
_0801DC90:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DCBE
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801DCC4
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801DCBE
	adds r4, r2, #0
	movs r5, #0x40
_0801DCB0:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801DCB0
_0801DCBE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DCC4: .4byte gKeyState

	THUMB_FUNC_START sub_801DCC8
sub_801DCC8: @ 0x0801DCC8
	push {lr}
	ldr r1, _0801DCE8
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0801DCDE
	movs r0, #0
	strb r0, [r1, #6]
_0801DCDE:
	movs r0, #0x36
	bl sub_8034F60
	pop {r0}
	bx r0
	.align 2, 0
_0801DCE8: .4byte 0x02021C30

	THUMB_FUNC_START sub_0801DCEC
sub_0801DCEC: @ 0x0801DCEC
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DCF0
sub_801DCF0: @ 0x0801DCF0
	push {r4, r5, r6, lr}
	ldr r1, _0801DD2C
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	ldrb r0, [r1, #8]
	cmp r5, r0
	bhs _0801DD26
	adds r4, r1, #0
	ldr r6, _0801DD30
_0801DD04:
	lsls r0, r5, #1
	adds r1, r4, #0
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, [r4]
	ldr r1, [r6, #0xc]
	adds r0, r0, r1
	str r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4, #8]
	cmp r5, r0
	blo _0801DD04
_0801DD26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD2C: .4byte 0x02021C30
_0801DD30: .4byte 0x02021AD0

	THUMB_FUNC_START sub_801DD34
sub_801DD34: @ 0x0801DD34
	adds r1, r0, #0
	ldr r2, _0801DD44
	ldr r0, [r2]
	cmp r1, r0
	bls _0801DD48
	movs r0, #0
	b _0801DD4A
	.align 2, 0
_0801DD44: .4byte 0x02021C30
_0801DD48:
	subs r0, r0, r1
_0801DD4A:
	str r0, [r2]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DD50
sub_801DD50: @ 0x0801DD50
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0
	ldr r3, _0801DD84
	ldrb r2, [r3, #8]
	cmp r1, r2
	bhs _0801DD7C
	ldrh r0, [r3, #0xa]
	cmp r0, r4
	beq _0801DD7C
	adds r3, #0xa
_0801DD68:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	bhs _0801DD7C
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r4
	bne _0801DD68
_0801DD7C:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801DD84: .4byte 0x02021C30

	THUMB_FUNC_START sub_801DD88
sub_801DD88: @ 0x0801DD88
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _0801DDD8
	ldrb r0, [r1, #8]
	subs r0, #1
	adds r5, r1, #0
	cmp r3, r0
	bge _0801DDBA
	adds r6, r5, #0
	adds r4, r5, #0
	adds r4, #0xa
_0801DDA0:
	lsls r2, r3, #1
	adds r2, r2, r4
	adds r1, r3, #1
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldrb r0, [r6, #8]
	subs r0, #1
	cmp r3, r0
	blt _0801DDA0
_0801DDBA:
	ldrb r0, [r5, #8]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0xa
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl sub_801DE3C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDD8: .4byte 0x02021C30

	THUMB_FUNC_START sub_801DDDC
sub_801DDDC: @ 0x0801DDDC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0801DE04
	ldr r4, _0801DE08
	str r4, [r2]
	subs r4, #0xa
	ldrb r1, [r4, #8]
	movs r5, #0
	strh r1, [r2, #8]
	ldr r1, _0801DE0C
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	strb r5, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DE04: .4byte gUnk2022EB0
_0801DE08: .4byte 0x02021C3A
_0801DE0C: .4byte 0x08E00AE0

	THUMB_FUNC_START sub_801DE10
sub_801DE10: @ 0x0801DE10
	push {lr}
	ldr r2, _0801DE30
	ldr r0, _0801DE34
	str r0, [r2]
	subs r0, #0xa
	ldrb r1, [r0, #8]
	strh r1, [r2, #8]
	ldr r1, _0801DE38
	ldrb r0, [r0, #5]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	pop {r0}
	bx r0
	.align 2, 0
_0801DE30: .4byte gUnk2022EB0
_0801DE34: .4byte 0x02021C3A
_0801DE38: .4byte 0x08E00AE0

	THUMB_FUNC_START sub_801DE3C
sub_801DE3C: @ 0x0801DE3C
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _0801DE50
	ldrb r0, [r2, #8]
	cmp r0, r1
	bhs _0801DE54
	ldrb r1, [r2, #8]
	movs r0, #0
	b _0801DE56
	.align 2, 0
_0801DE50: .4byte 0x02021C30
_0801DE54:
	subs r0, r0, r1
_0801DE56:
	strb r0, [r2, #8]
	adds r0, r1, #0
	bx lr

	THUMB_FUNC_START sub_801DE5C
sub_801DE5C: @ 0x0801DE5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
_0801DE66:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0801DF20
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0801DF24
	adds r1, r1, r4
	ldr r2, _0801DF28
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0801DE66
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801DF2C
	adds r1, r4, r0
	ldr r2, _0801DF30
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #9
	movs r1, #9
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0801DEB0:
	adds r4, r6, #0
	adds r4, #9
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801DF34
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xb
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xe
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0801DEB0
	ldr r0, _0801DF38
	ldr r1, _0801DF3C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF20: .4byte 0x0808D9B0
_0801DF24: .4byte 0x02007C00
_0801DF28: .4byte 0x0400000F
_0801DF2C: .4byte 0xFFFFC800
_0801DF30: .4byte 0x01000010
_0801DF34: .4byte 0x08DF811C
_0801DF38: .4byte 0x02004420
_0801DF3C: .4byte 0x080B9194

	THUMB_FUNC_START sub_801DF40
sub_801DF40: @ 0x0801DF40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
_0801DF4E:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _0801E25C
	adds r0, r0, r1
	lsls r1, r7, #6
	ldr r4, _0801E260
	adds r1, r1, r4
	ldr r2, _0801E264
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x13
	bls _0801DF4E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801E268
	adds r1, r4, r0
	ldr r2, _0801E26C
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r7, #0
	adds r6, r4, #0
_0801DFAC:
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x1d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x1f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0801DFAC
	movs r7, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov sl, r0
_0801E034:
	adds r6, r7, #4
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x7d
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7f
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x8d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x8f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb1
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0x11
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb3
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0x12
	mov r2, sl
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _0801E034
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0801E0C2:
	adds r4, r7, #0
	adds r4, #0xa
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #8
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #9
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0801E0C2
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0801E122:
	adds r4, r7, #0
	adds r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0801E122
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0801E152:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x29
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x2b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x49
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x4b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x69
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x6b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0801E152
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0801E1DA:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0xc1
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xc3
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x9d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x9f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0801E1DA
	ldr r0, _0801E274
	ldr r1, _0801E278
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E25C: .4byte 0x0808DE60
_0801E260: .4byte 0x02007C00
_0801E264: .4byte 0x0400000F
_0801E268: .4byte 0xFFFFC800
_0801E26C: .4byte 0x01000010
_0801E270: .4byte 0x08DF811C
_0801E274: .4byte 0x02004420
_0801E278: .4byte 0x080B92D8

	THUMB_FUNC_START sub_801E27C
sub_801E27C: @ 0x0801E27C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0801E2A4
	ldr r4, _0801E2A8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0801E2AC
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801E2C8
	cmp r0, #2
	bgt _0801E2B0
	cmp r0, #1
	beq _0801E2BA
	b _0801E2FA
	.align 2, 0
_0801E2A4: .4byte 0x0808918C
_0801E2A8: .4byte 0x02000400
_0801E2AC: .4byte 0x02021CF8
_0801E2B0:
	cmp r0, #3
	beq _0801E2D8
	cmp r0, #4
	beq _0801E2EC
	b _0801E2FA
_0801E2BA:
	ldr r0, _0801E2C4
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	b _0801E2E0
	.align 2, 0
_0801E2C4: .4byte 0x08DFAA14
_0801E2C8:
	ldr r0, _0801E2D4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r4, r3
	b _0801E2E0
	.align 2, 0
_0801E2D4: .4byte 0x08DFAEB4
_0801E2D8:
	ldr r0, _0801E2E8
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r4, r5
_0801E2E0:
	movs r2, #0x50
	bl CpuFastSet
	b _0801E2FA
	.align 2, 0
_0801E2E8: .4byte 0x08DFB354
_0801E2EC:
	ldr r0, _0801E474
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r1, r4, r6
	movs r2, #0x50
	bl CpuFastSet
_0801E2FA:
	ldr r0, _0801E478
	ldr r1, _0801E47C
	ldr r2, _0801E480
	bl CpuSet
	movs r4, #0
	mov r6, sp
	adds r6, #2
	add r7, sp, #4
	mov r8, r7
_0801E30E:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0801E484
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0801E488
	adds r1, r1, r5
	ldr r2, _0801E48C
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0801E30E
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	movs r0, #0x90
	lsls r0, r0, #7
	adds r1, r5, r0
	ldr r2, _0801E490
	mov r0, sp
	bl CpuSet
	strh r4, [r6]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r5, r2
	ldr r2, _0801E494
	adds r0, r6, #0
	bl CpuSet
	ldr r3, _0801E498
	adds r0, r5, r3
	ldr r1, _0801E49C
	ldr r2, _0801E4A0
	bl sub_8020A3C
	ldr r6, _0801E4A4
	adds r0, r5, r6
	ldr r1, _0801E4A8
	ldr r2, _0801E4AC
	bl sub_8020A3C
	ldr r7, _0801E4B0
	adds r1, r5, r7
	ldr r0, _0801E4B4
	strh r0, [r1]
	bl sub_801D718
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r4, #0
	ldr r0, _0801E4B8
	adds r2, r5, r0
	ldr r7, _0801E4BC
	ldr r6, _0801E4C0
	ldr r1, _0801E4C4
	adds r3, r1, #0
	adds r5, r2, #0
_0801E390:
	adds r1, r4, r7
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r0, r4, r6
	ldrb r0, [r0]
	adds r0, r3, r0
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0801E390
	ldr r2, _0801E4C8
	adds r1, r5, r2
	movs r2, #0
	ldr r0, _0801E4B4
	strh r0, [r1]
	ldr r3, _0801E4CC
	adds r1, r5, r3
	ldr r0, _0801E4D0
	strh r0, [r1]
	ldr r6, _0801E4D4
	adds r1, r5, r6
	subs r0, #4
	strh r0, [r1]
	mov r7, r8
	strh r2, [r7]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r2, _0801E490
	mov r0, r8
	bl CpuSet
	ldr r0, _0801E4D8
	ldr r2, _0801E4DC
	adds r1, r5, r2
	ldr r4, _0801E4E0
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _0801E4E4
	ldr r3, _0801E4E8
	adds r1, r5, r3
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _0801E4EC
	ldr r6, _0801E4F0
	adds r1, r5, r6
	adds r2, r4, #0
	bl CpuSet
	ldr r7, _0801E4F4
	adds r0, r5, r7
	ldr r1, _0801E4F8
	ldr r2, _0801E4A0
	bl sub_8020A3C
	ldr r1, _0801E4FC
	adds r0, r5, r1
	ldr r1, _0801E500
	ldr r2, _0801E504
	bl sub_8020A3C
	movs r4, #0
	ldr r5, _0801E508
_0801E416:
	ldr r6, _0801E50C
	lsls r1, r4, #2
	adds r0, r1, r4
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, #0x13
	lsls r1, r1, #5
	ldr r2, _0801E510
	adds r1, r1, r2
	ldr r2, _0801E480
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _0801E416
	movs r5, #0
	movs r4, #0
	ldr r7, _0801E514
_0801E444:
	adds r0, r4, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801E51C
	lsls r0, r4, #2
	adds r0, r0, r4
	ldrb r3, [r6]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0801E510
	adds r1, r1, r2
	ldr r2, _0801E518
	bl CpuSet
	adds r0, r5, #0
	adds r0, #8
	b _0801E53C
	.align 2, 0
_0801E474: .4byte 0x08DFB494
_0801E478: .4byte 0x0808C1C0
_0801E47C: .4byte 0x02000000
_0801E480: .4byte 0x04000020
_0801E484: .4byte 0x0808BD10
_0801E488: .4byte 0x02003C00
_0801E48C: .4byte 0x0400000F
_0801E490: .4byte 0x01000010
_0801E494: .4byte 0x01000400
_0801E498: .4byte 0x00004820
_0801E49C: .4byte 0x080B954C
_0801E4A0: .4byte 0x00000801
_0801E4A4: .4byte 0x00004840
_0801E4A8: .4byte 0x080B9550
_0801E4AC: .4byte 0x00000901
_0801E4B0: .4byte 0x0000805E
_0801E4B4: .4byte 0x00005001
_0801E4B8: .4byte 0xFFFFC800
_0801E4BC: .4byte 0x00005C30
_0801E4C0: .4byte 0x02021BD0
_0801E4C4: .4byte 0x00005209
_0801E4C8: .4byte 0x0000B870
_0801E4CC: .4byte 0x0000B872
_0801E4D0: .4byte 0x0000520D
_0801E4D4: .4byte 0x0000B874
_0801E4D8: .4byte 0x0808E310
_0801E4DC: .4byte 0x0000C020
_0801E4E0: .4byte 0x04000008
_0801E4E4: .4byte 0x0808E330
_0801E4E8: .4byte 0x0000C040
_0801E4EC: .4byte 0x0808E350
_0801E4F0: .4byte 0x0000C060
_0801E4F4: .4byte 0x0000C080
_0801E4F8: .4byte 0x080B95D8
_0801E4FC: .4byte 0x0000C120
_0801E500: .4byte 0x080B9608
_0801E504: .4byte 0x00001801
_0801E508: .4byte 0x08DFA5B8
_0801E50C: .4byte 0x02021CF8
_0801E510: .4byte 0x0200C400
_0801E514: .4byte 0x08DFA3A8
_0801E518: .4byte 0x04000040
_0801E51C:
	lsls r0, r4, #2
	adds r0, r0, r4
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0801E634
	adds r1, r1, r2
	ldr r2, _0801E638
	bl CpuSet
	adds r0, r5, #4
_0801E53C:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x17
	bhi _0801E54C
	b _0801E444
_0801E54C:
	ldr r0, _0801E63C
	ldr r4, _0801E640
	ldr r5, _0801E644
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0801E648
	subs r4, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	movs r4, #0
_0801E568:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0801E64C
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0801E650
	adds r1, r1, r2
	ldr r2, _0801E654
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0801E568
	movs r3, #0
_0801E58A:
	movs r2, #0
	cmp r3, #1
	bls _0801E598
	movs r2, #2
	cmp r3, #2
	bne _0801E598
	movs r2, #1
_0801E598:
	movs r4, #0
	lsls r0, r3, #1
	adds r1, r2, #3
	adds r2, #4
	adds r5, r3, #1
	str r5, [sp, #0xc]
	ldr r5, _0801E658
	adds r0, r0, r3
	adds r1, r0, r1
	lsls r1, r1, #5
	mov ip, r1
	ldr r6, _0801E65C
	mov sb, r6
	ldr r1, _0801E660
	mov r7, ip
	adds r7, r7, r1
	str r7, [sp, #8]
	lsls r3, r0, #4
	str r3, [sp, #0x10]
	ldr r6, _0801E664
	adds r6, r6, r3
	mov sl, r6
	adds r0, r0, r2
	lsls r6, r0, #5
	adds r1, r1, r6
	mov r8, r1
_0801E5CC:
	lsls r2, r4, #1
	mov r1, ip
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r5
	lsls r3, r4, #2
	ldr r7, _0801E664
	adds r0, r3, r7
	ldr r7, [sp, #0x10]
	adds r0, r0, r7
	strh r0, [r1]
	ldr r1, [sp, #8]
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	add r3, sl
	adds r1, r3, #1
	strh r1, [r0]
	mov r7, sb
	adds r0, r6, r7
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	adds r1, r3, #2
	strh r1, [r0]
	add r2, r8
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r3, #3
	strh r3, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	bls _0801E5CC
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0801E58A
	ldr r0, _0801E668
	bl sub_8057418
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E634: .4byte 0x0200C400
_0801E638: .4byte 0x04000020
_0801E63C: .4byte 0x0808ECD0
_0801E640: .4byte 0x020000A0
_0801E644: .4byte 0x04000008
_0801E648: .4byte 0x0808ECF0
_0801E64C: .4byte 0x0808E820
_0801E650: .4byte 0x0200FC00
_0801E654: .4byte 0x0400000F
_0801E658: .4byte 0x02000400
_0801E65C: .4byte 0x00007C02
_0801E660: .4byte 0x00007C03
_0801E664: .4byte 0x000050D0
_0801E668: .4byte 0x02000200

	THUMB_FUNC_START sub_801E66C
sub_801E66C: @ 0x0801E66C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r5, #0
	str r5, [sp]
	ldr r4, _0801E7A4
	ldr r2, _0801E7A8
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	str r5, [sp, #4]
	add r0, sp, #4
	movs r2, #0xa8
	lsls r2, r2, #6
	adds r1, r4, r2
	ldr r2, _0801E7AC
	bl CpuSet
	movs r6, #0
	ldr r7, _0801E7B0
	ldr r0, _0801E7B4
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0xf1
	lsls r1, r1, #5
	adds r1, r1, r4
	mov sl, r1
_0801E6AA:
	adds r0, r6, #0
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r5, #0
	cmp r6, #1
	bls _0801E6C6
	movs r5, #2
	cmp r6, #2
	bne _0801E6C6
	movs r5, #1
_0801E6C6:
	ldrh r0, [r7, #0x10]
	lsls r4, r6, #1
	adds r4, r4, r6
	adds r5, #2
	adds r5, r4, r5
	lsls r5, r5, #6
	mov r2, sb
	adds r1, r5, r2
	bl sub_801EFC0
	ldrh r0, [r7, #0x10]
	lsls r4, r4, #9
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r4, r4, r1
	ldr r2, _0801E7B8
	add r2, sb
	mov r8, r2
	add r4, r8
	adds r1, r4, #0
	bl sub_801E7D4
	ldrb r0, [r7, #0x18]
	add r5, sl
	adds r1, r5, #0
	bl sub_801F01C
	ldrh r0, [r7, #0x10]
	adds r1, r6, #0
	bl sub_801E86C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0801E6AA
	bl sub_801DB58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	bl sub_800A508
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0
	ldr r7, _0801E7BC
	add r7, r8
	ldr r5, _0801E7C0
	ldr r4, _0801E7C4
	ldr r0, _0801E7C8
	adds r3, r0, #0
_0801E732:
	adds r1, r6, r5
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r6, r4
	ldrb r0, [r0]
	adds r0, r3, r0
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0801E732
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
	bl sub_800A528
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0
	ldr r7, _0801E7CC
	ldr r5, _0801E7D0
	ldr r4, _0801E7C4
	ldr r1, _0801E7C8
	adds r3, r1, #0
_0801E76E:
	adds r1, r6, r5
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r6, #3
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, r3, r0
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0801E76E
	bl sub_801DB30
	bl sub_800A544
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E7A4: .4byte 0x0200DE00
_0801E7A8: .4byte 0x05000780
_0801E7AC: .4byte 0x05000800
_0801E7B0: .4byte 0x02021AD0
_0801E7B4: .4byte 0x00001E02
_0801E7B8: .4byte 0xFFFFC7FE
_0801E7BC: .4byte 0xFFFF4000
_0801E7C0: .4byte 0x00005C2A
_0801E7C4: .4byte 0x02021BD0
_0801E7C8: .4byte 0x00000209
_0801E7CC: .4byte 0x02000400
_0801E7D0: .4byte 0x00005C36

	THUMB_FUNC_START sub_801E7D4
sub_801E7D4: @ 0x0801E7D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	mov r8, r1
	ldr r0, _0801E7F4
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_8020824
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0
	movs r3, #0
	ldrb r0, [r4]
	b _0801E840
	.align 2, 0
_0801E7F4: .4byte 0x02021AD0
_0801E7F8:
	adds r2, r4, r5
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _0801E818
	cmp r6, #0x17
	bhi _0801E814
	mov r2, sp
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0801E814:
	adds r0, r5, #1
	b _0801E832
_0801E818:
	cmp r6, #0x17
	bhi _0801E830
	mov r7, sp
	adds r0, r7, r3
	strb r1, [r0]
	adds r0, r3, #1
	adds r1, r7, r0
	ldrb r0, [r2, #1]
	strb r0, [r1]
	adds r0, r3, #2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0801E830:
	adds r0, r5, #2
_0801E832:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, r5
	ldrb r0, [r0]
_0801E840:
	cmp r0, #0
	beq _0801E848
	cmp r0, #0x24
	bne _0801E7F8
_0801E848:
	mov r1, sp
	adds r0, r1, r3
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0801E868
	mov r0, r8
	mov r1, sp
	bl sub_8020A3C
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E868: .4byte 0x00000901

	THUMB_FUNC_START sub_801E86C
sub_801E86C: @ 0x0801E86C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r1, #0x18
	lsrs r5, r2, #0x18
	lsls r1, r5, #3
	ldr r0, _0801E8C0
	adds r4, r1, r0
	cmp r3, #0
	beq _0801E89C
	movs r0, #3
	ands r0, r5
	lsls r0, r0, #8
	lsrs r1, r2, #0x1a
	lsls r1, r1, #0xc
	movs r2, #0x82
	lsls r2, r2, #9
	adds r1, r1, r2
	orrs r0, r1
	ldr r1, _0801E8C4
	adds r0, r0, r1
	adds r1, r3, #0
	bl sub_80573D0
_0801E89C:
	ldrb r1, [r4, #1]
	movs r0, #0x3f
	adds r2, r0, #0
	ands r2, r1
	strb r2, [r4, #1]
	ldrb r1, [r4, #3]
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #3]
	cmp r5, #2
	bne _0801E8C8
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	b _0801E8CE
	.align 2, 0
_0801E8C0: .4byte 0x02018400
_0801E8C4: .4byte 0x02000400
_0801E8C8:
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
_0801E8CE:
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #5]
	lsls r0, r5, #5
	adds r0, #0xc
	strb r0, [r4]
	movs r1, #3
	ands r1, r5
	lsls r1, r1, #3
	adds r1, #0x20
	lsrs r0, r5, #2
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r2, _0801E91C
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r4, #4]
	ldr r0, _0801E920
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	ldrh r1, [r4, #2]
	ldr r0, _0801E924
	ands r0, r1
	movs r1, #0xd2
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E91C: .4byte 0x000003FF
_0801E920: .4byte 0xFFFFFC00
_0801E924: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_801E928
sub_801E928: @ 0x0801E928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r3, #0
_0801E936:
	movs r2, #0
	cmp r3, #1
	bls _0801E944
	movs r2, #2
	cmp r3, #2
	bne _0801E944
	movs r2, #1
_0801E944:
	movs r4, #0
	lsls r0, r3, #1
	adds r1, r2, #3
	adds r2, #4
	adds r5, r3, #1
	str r5, [sp, #4]
	ldr r5, _0801E9DC
	adds r0, r0, r3
	adds r1, r0, r1
	lsls r1, r1, #5
	mov ip, r1
	ldr r6, _0801E9E0
	mov sb, r6
	ldr r1, _0801E9E4
	mov r7, ip
	adds r7, r7, r1
	str r7, [sp]
	lsls r3, r0, #4
	str r3, [sp, #8]
	ldr r6, _0801E9E8
	adds r6, r6, r3
	mov sl, r6
	adds r0, r0, r2
	lsls r6, r0, #5
	adds r1, r1, r6
	mov r8, r1
_0801E978:
	lsls r2, r4, #1
	mov r1, ip
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r5
	lsls r3, r4, #2
	ldr r7, _0801E9E8
	adds r0, r3, r7
	ldr r7, [sp, #8]
	adds r0, r0, r7
	strh r0, [r1]
	ldr r1, [sp]
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	add r3, sl
	adds r1, r3, #1
	strh r1, [r0]
	mov r7, sb
	adds r0, r6, r7
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	adds r1, r3, #2
	strh r1, [r0]
	add r2, r8
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r3, #3
	strh r3, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0801E978
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0801E936
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E9DC: .4byte 0x02000400
_0801E9E0: .4byte 0x00007C14
_0801E9E4: .4byte 0x00007C15
_0801E9E8: .4byte 0x000050F4

	THUMB_FUNC_START sub_801E9EC
sub_801E9EC: @ 0x0801E9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0801EAB4
	mov sl, r0
_0801E9FC:
	adds r0, r6, #0
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r7, #0
	cmp r6, #1
	bls _0801EA18
	movs r7, #2
	cmp r6, #2
	bne _0801EA18
	movs r7, #1
_0801EA18:
	ldr r2, _0801EAB8
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _0801EAD8
	lsls r5, r6, #1
	adds r4, r5, r6
	adds r0, r7, #3
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r1, _0801EABC
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0801EAC0
	strh r1, [r0]
	ldrh r0, [r2, #0x12]
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	adds r3, r7, #4
	adds r7, r6, #1
	mov sb, r7
	ldr r0, _0801EAB4
	mov r8, r0
	ldr r1, _0801EAC4
	adds r4, r4, r1
	ldr r7, _0801EAC8
	mov ip, r7
_0801EA52:
	adds r0, r2, r4
	lsls r0, r0, #1
	add r0, r8
	mov r7, ip
	adds r1, r2, r7
	ldr r7, _0801EACC
	ldrb r1, [r1]
	adds r1, r7, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0801EA52
	adds r4, r5, r6
	adds r4, r4, r3
	lsls r4, r4, #5
	ldr r1, _0801EABC
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0801EAD0
	strh r1, [r0]
	ldr r0, _0801EAB8
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	ldr r6, _0801EAB4
	ldr r3, _0801EAC4
	adds r4, r4, r3
	ldr r5, _0801EAC8
	ldr r7, _0801EAD4
	adds r3, r7, #0
_0801EA98:
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r1, r2, r5
	ldrb r1, [r1]
	adds r1, r3, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0801EA98
	b _0801EB2A
	.align 2, 0
_0801EAB4: .4byte 0x02000400
_0801EAB8: .4byte 0x02021AD0
_0801EABC: .4byte 0x00007C14
_0801EAC0: .4byte 0x00005002
_0801EAC4: .4byte 0x00007C15
_0801EAC8: .4byte 0x02021BD0
_0801EACC: .4byte 0x00002009
_0801EAD0: .4byte 0x00005003
_0801EAD4: .4byte 0x00001009
_0801EAD8:
	movs r2, #0
	lsls r5, r6, #1
	adds r1, r7, #3
	adds r3, r7, #4
	adds r0, r6, #1
	mov sb, r0
	ldr r7, _0801EB44
	adds r0, r5, r6
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r4, _0801EB48
	adds r1, r0, r4
	movs r4, #0xa0
	lsls r4, r4, #7
_0801EAF4:
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _0801EAF4
	movs r2, #0
	ldr r4, _0801EB44
	adds r0, r5, r6
	adds r0, r0, r3
	lsls r0, r0, #5
	ldr r7, _0801EB48
	adds r1, r0, r7
	movs r3, #0xa0
	lsls r3, r3, #7
_0801EB18:
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _0801EB18
_0801EB2A:
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bhi _0801EB36
	b _0801E9FC
_0801EB36:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB44: .4byte 0x02000400
_0801EB48: .4byte 0x00007C14

	THUMB_FUNC_START sub_801EB4C
sub_801EB4C: @ 0x0801EB4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
_0801EB5C:
	mov r0, r8
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	movs r4, #0
	mov r1, r8
	cmp r1, #1
	bls _0801EB7A
	movs r4, #2
	cmp r1, #2
	bne _0801EB7A
	movs r4, #1
_0801EB7A:
	ldr r7, _0801ECC4
	mov r2, r8
	lsls r3, r2, #1
	add r3, r8
	adds r0, r4, #3
	adds r0, r3, r0
	lsls r5, r0, #5
	ldr r2, _0801ECC8
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r6, #0xa0
	lsls r6, r6, #7
	strh r6, [r0]
	ldr r1, _0801ECCC
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r6, [r0]
	adds r0, r4, #4
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r0, r6, #0
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r2, r6, #0
	strh r2, [r1]
	ldr r6, _0801ECD0
	ldrb r0, [r6, #0x17]
	mov r4, r8
	adds r4, #0xb
	lsls r1, r4, #5
	ldr r2, _0801ECD4
	adds r1, r1, r2
	str r3, [sp, #8]
	bl sub_8008BC0
	ldr r1, _0801ECD8
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	lsls r4, r4, #0xc
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x13
	orrs r0, r4
	mov r2, sl
	strh r0, [r2]
	adds r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x14
	orrs r0, r4
	mov r2, sb
	strh r0, [r2]
	ldr r3, [sp, #8]
	ldr r2, _0801ECD8
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	str r0, [sp]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x15
	orrs r0, r4
	ldr r2, [sp]
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	str r1, [sp, #4]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x16
	orrs r4, r0
	strh r4, [r1]
	ldrb r0, [r6, #0x16]
	mov r4, r8
	adds r4, #6
	lsls r1, r4, #5
	ldr r2, _0801ECD4
	adds r1, r1, r2
	str r3, [sp, #8]
	bl sub_8008B44
	ldrb r0, [r6, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #8]
	cmp r0, #2
	bhi _0801ECE4
	ldr r0, _0801ECDC
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x11
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ECE0
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xf
	orrs r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xe
	orrs r0, r2
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0801ECDC
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xd
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ECE0
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xb
	orrs r0, r2
	ldr r1, [sp]
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xa
	orrs r2, r0
	ldr r6, [sp, #4]
	strh r2, [r6]
	b _0801ED2E
	.align 2, 0
_0801ECC4: .4byte 0x02000400
_0801ECC8: .4byte 0x00007C14
_0801ECCC: .4byte 0x00007C19
_0801ECD0: .4byte 0x02021AD0
_0801ECD4: .4byte 0x02000000
_0801ECD8: .4byte 0x00007C17
_0801ECDC: .4byte 0x00007C15
_0801ECE0: .4byte 0x00007C16
_0801ECE4:
	ldr r0, _0801ED50
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x43
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ED54
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x44
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ED50
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x45
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ED54
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x46
	orrs r2, r0
	strh r2, [r1]
_0801ED2E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _0801ED3E
	b _0801EB5C
_0801ED3E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801ED50: .4byte 0x00007C15
_0801ED54: .4byte 0x00007C16

	THUMB_FUNC_START sub_801ED58
sub_801ED58: @ 0x0801ED58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r0, _0801EE2C
	mov r8, r0
	ldr r1, _0801EE30
	mov sl, r1
	movs r2, #0xa0
	lsls r2, r2, #7
	mov sb, r2
_0801ED72:
	movs r6, #0
	cmp r5, #1
	bls _0801ED80
	movs r6, #2
	cmp r5, #2
	bne _0801ED80
	movs r6, #1
_0801ED80:
	adds r0, r5, #0
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	ldr r3, _0801EE34
	ldrh r0, [r3, #0x10]
	cmp r0, #0
	beq _0801EE68
	lsls r4, r5, #1
	adds r4, r4, r5
	adds r2, r6, #3
	adds r2, r4, r2
	lsls r2, r2, #5
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0801EE38
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE3C
	strh r1, [r0]
	ldr r1, _0801EE40
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE44
	strh r1, [r0]
	ldr r1, _0801EE48
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE4C
	strh r1, [r0]
	ldr r1, _0801EE50
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE54
	strh r1, [r0]
	ldr r0, _0801EE58
	adds r2, r2, r0
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _0801EE5C
	strh r0, [r2]
	adds r0, r6, #4
	adds r4, r4, r0
	lsls r4, r4, #5
	mov r1, sl
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	mov r2, sb
	strh r2, [r0]
	ldrh r0, [r3, #0xc]
	movs r1, #0
	bl sub_800DDA0
	movs r3, #0
	adds r7, r5, #1
	ldr r6, _0801EE2C
	ldr r0, _0801EE38
	adds r2, r4, r0
	ldr r5, _0801EE60
	ldr r1, _0801EE64
	adds r4, r1, #0
_0801EE12:
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r1, r3, r5
	ldrb r1, [r1]
	adds r1, r4, r1
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0801EE12
	b _0801EEB6
	.align 2, 0
_0801EE2C: .4byte 0x02000400
_0801EE30: .4byte 0x00007C14
_0801EE34: .4byte 0x02021AD0
_0801EE38: .4byte 0x00007C15
_0801EE3C: .4byte 0x00005004
_0801EE40: .4byte 0x00007C16
_0801EE44: .4byte 0x00005005
_0801EE48: .4byte 0x00007C17
_0801EE4C: .4byte 0x00005006
_0801EE50: .4byte 0x00007C18
_0801EE54: .4byte 0x00005007
_0801EE58: .4byte 0x00007C19
_0801EE5C: .4byte 0x00005008
_0801EE60: .4byte 0x02021BD0
_0801EE64: .4byte 0x00005009
_0801EE68:
	movs r3, #0
	lsls r2, r5, #1
	adds r1, r6, #3
	adds r4, r6, #4
	adds r7, r5, #1
	ldr r6, _0801EED0
	mov ip, r6
	adds r0, r2, r5
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r6, _0801EED4
	adds r1, r0, r6
_0801EE80:
	adds r0, r3, r1
	lsls r0, r0, #1
	add r0, ip
	mov r6, sb
	strh r6, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _0801EE80
	movs r3, #0
	ldr r6, _0801EED0
	adds r0, r2, r5
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r2, _0801EED4
	adds r1, r0, r2
_0801EEA2:
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	mov r2, sb
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _0801EEA2
_0801EEB6:
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bhi _0801EEC0
	b _0801ED72
_0801EEC0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EED0: .4byte 0x02000400
_0801EED4: .4byte 0x00007C14

	THUMB_FUNC_START sub_801EED8
sub_801EED8: @ 0x0801EED8
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r3, _0801EF14
	lsrs r0, r0, #0x16
	ldr r2, _0801EF18
	adds r1, r2, #0
	adds r1, r0, r1
	ldr r4, _0801EF1C
	adds r2, r3, r4
	strh r1, [r2]
	ldr r2, _0801EF20
	adds r1, r2, #0
	adds r1, r0, r1
	adds r4, #2
	adds r2, r3, r4
	strh r1, [r2]
	ldr r1, _0801EF24
	adds r2, r0, r1
	adds r4, #0x3e
	adds r1, r3, r4
	strh r2, [r1]
	ldr r1, _0801EF28
	adds r0, r0, r1
	ldr r2, _0801EF2C
	adds r3, r3, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EF14: .4byte 0x02000400
_0801EF18: .4byte 0x00005002
_0801EF1C: .4byte 0x0000B838
_0801EF20: .4byte 0x00005003
_0801EF24: .4byte 0x00005004
_0801EF28: .4byte 0x00005005
_0801EF2C: .4byte 0x0000B87A

	THUMB_FUNC_START sub_801EF30
sub_801EF30: @ 0x0801EF30
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0801EFB6
	lsls r0, r0, #2
	ldr r1, _0801EF44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801EF44: .4byte 0x0801EF48
_0801EF48: @ jump table
	.4byte _0801EF68 @ case 0
	.4byte _0801EFB6 @ case 1
	.4byte _0801EF70 @ case 2
	.4byte _0801EF90 @ case 3
	.4byte _0801EF94 @ case 4
	.4byte _0801EF98 @ case 5
	.4byte _0801EFA0 @ case 6
	.4byte _0801EFA0 @ case 7
_0801EF68:
	movs r0, #0
	bl sub_800A5F0
	b _0801EFB6
_0801EF70:
	bl sub_801E27C
	bl sub_801E66C
	bl sub_801F060
	ldr r0, _0801EF8C
	ldrb r0, [r0, #5]
	bl sub_801EED8
	movs r0, #1
	bl sub_800A5F0
	b _0801EFB6
	.align 2, 0
_0801EF8C: .4byte 0x02021C30
_0801EF90:
	bl sub_801E66C
_0801EF94:
	bl sub_801F060
_0801EF98:
	movs r0, #3
	bl sub_800A5F0
	b _0801EFB6
_0801EFA0:
	bl sub_801E66C
	bl sub_801F060
	ldr r0, _0801EFBC
	ldrb r0, [r0, #5]
	bl sub_801EED8
	movs r0, #3
	bl sub_800A5F0
_0801EFB6:
	pop {r0}
	bx r0
	.align 2, 0
_0801EFBC: .4byte 0x02021C30

	THUMB_FUNC_START sub_801EFC0
sub_801EFC0: @ 0x0801EFC0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0801EFFC
	movs r4, #0
_0801EFCE:
	adds r0, r6, #0
	movs r1, #1
	bl sub_800DDA0
	ldr r0, _0801EFF4
	adds r0, r4, r0
	ldr r2, _0801EFF8
	adds r1, r2, #0
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0801EFCE
	b _0801F010
	.align 2, 0
_0801EFF4: .4byte 0x02021BD0
_0801EFF8: .4byte 0x00005009
_0801EFFC:
	movs r4, #0
	ldr r0, _0801F018
	adds r1, r0, #0
_0801F002:
	strh r1, [r5]
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0801F002
_0801F010:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F018: .4byte 0x00005013

	THUMB_FUNC_START sub_801F01C
sub_801F01C: @ 0x0801F01C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0801F02A:
	lsls r0, r2, #1
	subs r0, r1, r0
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _0801F02A
	movs r2, #0
	cmp r2, r3
	bhs _0801F054
	ldr r0, _0801F05C
	adds r4, r0, #0
_0801F044:
	lsls r0, r2, #1
	subs r0, r1, r0
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _0801F044
_0801F054:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F05C: .4byte 0x00005001

	THUMB_FUNC_START sub_801F060
sub_801F060: @ 0x0801F060
	push {lr}
	bl sub_801DB24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0801F07C
	cmp r0, #1
	ble _0801F08E
	cmp r0, #2
	beq _0801F082
	cmp r0, #3
	beq _0801F088
	b _0801F08E
_0801F07C:
	bl sub_801E9EC
	b _0801F092
_0801F082:
	bl sub_801EB4C
	b _0801F092
_0801F088:
	bl sub_801ED58
	b _0801F092
_0801F08E:
	bl sub_801E928
_0801F092:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F098
sub_801F098: @ 0x0801F098
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_801DB88
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	ldr r1, _0801F0C0
	adds r0, r4, #0
	bl sub_801F0F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801F0C4
	cmp r5, #0
	bne _0801F0E8
	b _0801F0E4
	.align 2, 0
_0801F0C0: .4byte 0x080B9620
_0801F0C4:
	ldr r1, _0801F0DC
	adds r0, r4, #0
	bl sub_801F0F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801F0E0
	cmp r5, #1
	bhi _0801F0E8
	b _0801F0E4
	.align 2, 0
_0801F0DC: .4byte 0x080B96AA
_0801F0E0:
	cmp r6, #2
	bhi _0801F0E8
_0801F0E4:
	movs r0, #1
	b _0801F0EA
_0801F0E8:
	movs r0, #0
_0801F0EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_801F0F0
sub_801F0F0: @ 0x0801F0F0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801F11A
_0801F0FC:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801F10A
	movs r0, #1
	b _0801F11C
_0801F10A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801F0FC
_0801F11A:
	movs r0, #0
_0801F11C:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F120
sub_801F120: @ 0x0801F120
	push {r4, lr}
	ldr r0, _0801F160
	ldrb r1, [r0, #5]
	strb r1, [r0, #7]
	bl sub_801DF40
	bl sub_801F320
	bl sub_8045658
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0801F164
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0801F146:
	bl sub_801D368
	cmp r0, #0x10
	beq _0801F194
	cmp r0, #0x10
	bgt _0801F16E
	cmp r0, #2
	beq _0801F1A2
	cmp r0, #2
	bgt _0801F168
	cmp r0, #1
	beq _0801F19A
	b _0801F1AC
	.align 2, 0
_0801F160: .4byte 0x02021C30
_0801F164: .4byte 0x0801F391
_0801F168:
	cmp r0, #8
	beq _0801F1A2
	b _0801F1AC
_0801F16E:
	cmp r0, #0x40
	beq _0801F182
	cmp r0, #0x40
	bgt _0801F17C
	cmp r0, #0x20
	beq _0801F18E
	b _0801F1AC
_0801F17C:
	cmp r0, #0x80
	beq _0801F188
	b _0801F1AC
_0801F182:
	bl sub_801F1C0
	b _0801F1B0
_0801F188:
	bl sub_801F210
	b _0801F1B0
_0801F18E:
	bl sub_801F260
	b _0801F1B0
_0801F194:
	bl sub_801F2B0
	b _0801F1B0
_0801F19A:
	bl sub_801F300
	movs r4, #0
	b _0801F1B0
_0801F1A2:
	movs r0, #0x38
	bl sub_8034F60
	movs r4, #0
	b _0801F1B0
_0801F1AC:
	bl sub_8008220
_0801F1B0:
	cmp r4, #1
	beq _0801F146
	bl sub_801F37C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F1C0
sub_801F1C0: @ 0x0801F1C0
	push {lr}
	ldr r2, _0801F1E0
	ldr r0, _0801F1E4
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F1E8
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F1EE
	.align 2, 0
_0801F1E0: .4byte 0x02021C30
_0801F1E4: .4byte 0x08E00AEC
_0801F1E8:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F1EE:
	bl sub_801F320
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801F20C
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F20C: .4byte 0x080454C9

	THUMB_FUNC_START sub_801F210
sub_801F210: @ 0x0801F210
	push {lr}
	ldr r2, _0801F230
	ldr r0, _0801F234
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F238
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F23E
	.align 2, 0
_0801F230: .4byte 0x02021C30
_0801F234: .4byte 0x08E00AF7
_0801F238:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F23E:
	bl sub_801F320
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801F25C
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F25C: .4byte 0x080454C9

	THUMB_FUNC_START sub_801F260
sub_801F260: @ 0x0801F260
	push {lr}
	ldr r2, _0801F280
	ldr r0, _0801F284
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F288
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F28E
	.align 2, 0
_0801F280: .4byte 0x02021C30
_0801F284: .4byte 0x08E00B02
_0801F288:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F28E:
	bl sub_801F320
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801F2AC
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F2AC: .4byte 0x080454C9

	THUMB_FUNC_START sub_801F2B0
sub_801F2B0: @ 0x0801F2B0
	push {lr}
	ldr r2, _0801F2D0
	ldr r0, _0801F2D4
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F2D8
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F2DE
	.align 2, 0
_0801F2D0: .4byte 0x02021C30
_0801F2D4: .4byte 0x08E00B0D
_0801F2D8:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F2DE:
	bl sub_801F320
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801F2FC
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F2FC: .4byte 0x080454C9

	THUMB_FUNC_START sub_801F300
sub_801F300: @ 0x0801F300
	push {lr}
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0801F31C
	ldrb r1, [r0, #7]
	cmp r1, #9
	bhi _0801F318
	strb r1, [r0, #5]
	ldrb r0, [r0, #5]
	bl sub_801DDDC
_0801F318:
	pop {r0}
	bx r0
	.align 2, 0
_0801F31C: .4byte 0x02021C30

	THUMB_FUNC_START sub_801F320
sub_801F320: @ 0x0801F320
	push {r4, r5, lr}
	ldr r3, _0801F364
	ldr r2, _0801F368
	ldr r5, _0801F36C
	ldrb r0, [r5, #7]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0801F370
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0801F374
	str r0, [r3, #4]
	ldrb r0, [r5, #7]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0801F378
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F364: .4byte 0x02018430
_0801F368: .4byte 0x08E00B18
_0801F36C: .4byte 0x02021C30
_0801F370: .4byte 0x08E00B23
_0801F374: .4byte 0x0000C120
_0801F378: .4byte 0x40000800

	THUMB_FUNC_START sub_801F37C
sub_801F37C: @ 0x0801F37C
	ldr r1, _0801F38C
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0801F38C: .4byte 0x02018430

	THUMB_FUNC_START sub_801F390
sub_801F390: @ 0x0801F390
	push {lr}
	bl sub_80454C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xbf
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x52
	movs r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _0801F3BC
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0801F3BC: .4byte 0x04000050

	THUMB_FUNC_START sub_801F3C0
sub_801F3C0: @ 0x0801F3C0
	push {lr}
	bl sub_8045718
	ldr r1, _0801F458
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0801F45C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F460
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F464
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0801F468
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0801F46C
	movs r3, #4
	strh r3, [r0]
	subs r1, #0x4a
	ldr r2, _0801F470
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F474
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F478
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F47C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801F480
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0801F484
	strh r2, [r0]
	ldr r1, _0801F488
	movs r0, #0xf8
	strh r0, [r1]
	ldr r0, _0801F48C
	strh r2, [r0]
	ldr r1, _0801F490
	movs r0, #0xfd
	strh r0, [r1]
	ldr r0, _0801F494
	strh r3, [r0]
	ldr r0, _0801F498
	strh r2, [r0]
	ldr r0, _0801F49C
	strh r2, [r0]
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_0801F458: .4byte 0x04000040
_0801F45C: .4byte 0x0000486F
_0801F460: .4byte 0x00001E0E
_0801F464: .4byte 0x0000103F
_0801F468: .4byte 0x000028D2
_0801F46C: .4byte 0x04000054
_0801F470: .4byte 0x00000F04
_0801F474: .4byte 0x00001F0D
_0801F478: .4byte 0x0000170A
_0801F47C: .4byte 0x00000703
_0801F480: .4byte 0x02024240
_0801F484: .4byte 0x02024214
_0801F488: .4byte 0x0202422C
_0801F48C: .4byte 0x02024248
_0801F490: .4byte 0x0202420C
_0801F494: .4byte 0x0202424C
_0801F498: .4byte 0x02024218
_0801F49C: .4byte 0x02024204

	THUMB_FUNC_START sub_801F4A0
sub_801F4A0: @ 0x0801F4A0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F546
	lsls r0, r0, #2
	ldr r1, _0801F4B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F4B4: .4byte 0x0801F4B8
_0801F4B8: @ jump table
	.4byte _0801F546 @ case 0
	.4byte _0801F4E0 @ case 1
	.4byte _0801F4EC @ case 2
	.4byte _0801F4F8 @ case 3
	.4byte _0801F504 @ case 4
	.4byte _0801F51C @ case 5
	.4byte _0801F510 @ case 6
	.4byte _0801F528 @ case 7
	.4byte _0801F534 @ case 8
	.4byte _0801F540 @ case 9
_0801F4E0:
	ldr r0, _0801F4E8
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F4E8: .4byte 0x0801F3C1
_0801F4EC:
	ldr r0, _0801F4F4
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F4F4: .4byte 0x0801F555
_0801F4F8:
	ldr r0, _0801F500
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F500: .4byte 0x0801F559
_0801F504:
	ldr r0, _0801F50C
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F50C: .4byte 0x0801F575
_0801F510:
	ldr r0, _0801F518
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F518: .4byte 0x0801F579
_0801F51C:
	ldr r0, _0801F524
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F524: .4byte 0x0801F57D
_0801F528:
	ldr r0, _0801F530
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F530: .4byte 0x0801F581
_0801F534:
	ldr r0, _0801F53C
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F53C: .4byte 0x0801F5AD
_0801F540:
	ldr r0, _0801F550
	bl sub_80081DC
_0801F546:
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801F550: .4byte 0x0801F5BD
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801F558
sub_801F558: @ 0x0801F558
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfc
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801F580
sub_801F580: @ 0x0801F580
	push {lr}
	bl sub_801F658
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0801F5A8
	ands r0, r1
	strh r0, [r2]
	bl sub_80454C8
	pop {r0}
	bx r0
	.align 2, 0
_0801F5A8: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_801F5AC
sub_801F5AC: @ 0x0801F5AC
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5BC
sub_801F5BC: @ 0x0801F5BC
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	bl sub_801F658
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0801F5E8
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0801F5E8: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_0801F5EC
sub_0801F5EC: @ 0x0801F5EC
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5F0
sub_801F5F0: @ 0x0801F5F0
	push {lr}
	bl sub_80454F8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5FC
sub_801F5FC: @ 0x0801F5FC
	push {lr}
	bl sub_8045690
	bl sub_80456E0
	bl sub_80454E0
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F614
sub_801F614: @ 0x0801F614
	push {lr}
	bl sub_8045690
	bl sub_80456E0
	bl sub_80454E0
	bl sub_8045674
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0801F62C
sub_0801F62C: @ 0x0801F62C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F630
sub_801F630: @ 0x0801F630
	push {lr}
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F644
sub_801F644: @ 0x0801F644
	push {lr}
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F658
sub_801F658: @ 0x0801F658
	ldr r1, _0801F69C
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0801F6A0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F6A4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F6A8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0801F6AC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #2
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801F69C: .4byte 0x04000040
_0801F6A0: .4byte 0x0000486F
_0801F6A4: .4byte 0x00001E0E
_0801F6A8: .4byte 0x0000103F
_0801F6AC: .4byte 0x000028D2

	THUMB_FUNC_START sub_801F6B0
sub_801F6B0: @ 0x0801F6B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	movs r4, #0
	add r5, sp, #0x90
_0801F6C0:
	movs r0, #0
	str r0, [r5]
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	subs r1, r1, r4
	lsls r1, r1, #7
	ldr r6, _0801F710
	adds r1, r1, r6
	adds r0, r5, #0
	ldr r2, _0801F714
	bl CpuFastSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0801F6C0
	ldr r0, _0801F718
	ldr r2, [r0, #8]
	adds r2, #2
	adds r0, r2, #0
	bl sub_8020824
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0x5e
	beq _0801F6FA
	b _0801F904
_0801F6FA:
	adds r2, #1
	ldrb r0, [r2]
	subs r0, #0x32
	cmp r0, #7
	bhi _0801F7A0
	lsls r0, r0, #2
	ldr r1, _0801F71C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F710: .4byte 0x0201CB60
_0801F714: .4byte 0x01000460
_0801F718: .4byte 0x02021AD0
_0801F71C: .4byte 0x0801F720
_0801F720: @ jump table
	.4byte _0801F740 @ case 0
	.4byte _0801F74C @ case 1
	.4byte _0801F758 @ case 2
	.4byte _0801F764 @ case 3
	.4byte _0801F770 @ case 4
	.4byte _0801F77C @ case 5
	.4byte _0801F788 @ case 6
	.4byte _0801F794 @ case 7
_0801F740:
	ldr r1, _0801F748
	movs r0, #2
	b _0801F7A4
	.align 2, 0
_0801F748: .4byte 0x0201CB59
_0801F74C:
	ldr r1, _0801F754
	movs r0, #3
	b _0801F7A4
	.align 2, 0
_0801F754: .4byte 0x0201CB59
_0801F758:
	ldr r1, _0801F760
	movs r0, #4
	b _0801F7A4
	.align 2, 0
_0801F760: .4byte 0x0201CB59
_0801F764:
	ldr r1, _0801F76C
	movs r0, #5
	b _0801F7A4
	.align 2, 0
_0801F76C: .4byte 0x0201CB59
_0801F770:
	ldr r1, _0801F778
	movs r0, #6
	b _0801F7A4
	.align 2, 0
_0801F778: .4byte 0x0201CB59
_0801F77C:
	ldr r1, _0801F784
	movs r0, #7
	b _0801F7A4
	.align 2, 0
_0801F784: .4byte 0x0201CB59
_0801F788:
	ldr r1, _0801F790
	movs r0, #8
	b _0801F7A4
	.align 2, 0
_0801F790: .4byte 0x0201CB59
_0801F794:
	ldr r1, _0801F79C
	movs r0, #9
	b _0801F7A4
	.align 2, 0
_0801F79C: .4byte 0x0201CB59
_0801F7A0:
	ldr r1, _0801F82C
	movs r0, #1
_0801F7A4:
	strb r0, [r1]
	mov sl, r1
	adds r2, #1
	ldr r1, _0801F830
	movs r0, #0
	strb r0, [r1]
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801F7BA
	b _0801F97C
_0801F7BA:
	ldr r0, _0801F834
	mov sb, r0
	adds r7, r1, #0
	mov r8, r7
_0801F7C2:
	movs r4, #0
	movs r5, #0
	ldrb r1, [r2]
	cmp r1, #0x5e
	beq _0801F854
	ldr r6, _0801F838
_0801F7CE:
	mov r3, sp
	adds r0, r3, r4
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801F7EA
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	adds r1, r3, r4
	ldrb r0, [r2]
	strb r0, [r1]
_0801F7EA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bne _0801F84E
	mov r1, sp
	adds r0, r1, r4
	movs r1, #0x20
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801F83C
	adds r3, r6, #0
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r3, #1]
	strb r0, [r1]
	b _0801F842
	.align 2, 0
_0801F82C: .4byte 0x0201CB59
_0801F830: .4byte 0x0201CB58
_0801F834: .4byte 0x0201CB60
_0801F838: .4byte 0x080B96B8
_0801F83C:
	mov r3, sp
	adds r0, r3, r4
	strb r1, [r0]
_0801F842:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0801F84E:
	ldrb r1, [r2]
	cmp r1, #0x5e
	bne _0801F7CE
_0801F854:
	mov r0, r8
	ldrb r1, [r0]
	mov r3, sl
	ldrb r0, [r3]
	subs r0, #1
	cmp r1, r0
	blt _0801F882
	adds r6, r2, #1
	cmp r5, #0x45
	bhi _0801F8C0
	movs r1, #0x20
_0801F86A:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x45
	bls _0801F86A
	b _0801F8C0
_0801F882:
	adds r6, r2, #1
	ldr r2, _0801F8F8
	cmp r5, #0x44
	bhi _0801F8A2
	movs r1, #0x20
_0801F88C:
	mov r3, sp
	adds r0, r3, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x44
	bls _0801F88C
_0801F8A2:
	adds r3, r2, #0
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r2, sp
	adds r1, r2, r4
	ldrb r0, [r3, #1]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801F8C0:
	mov r3, sp
	adds r1, r3, r4
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	add r0, sb
	mov r1, sp
	ldr r2, _0801F8FC
	bl sub_8020A3C
	adds r2, r6, #0
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	ldr r1, _0801F900
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0801F8F4
	b _0801F7C2
_0801F8F4:
	b _0801F97C
	.align 2, 0
_0801F8F8: .4byte 0x080B96BC
_0801F8FC: .4byte 0x00000901
_0801F900: .4byte 0x0201CB59
_0801F904:
	movs r4, #0
	movs r5, #0
	mov sb, r6
	cmp r0, #0
	beq _0801F966
	cmp r0, #0x24
	beq _0801F966
	movs r3, #0x20
_0801F914:
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r2]
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801F934
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r2]
	strb r0, [r1]
_0801F934:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bne _0801F95C
	mov r1, sp
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801F95C:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801F966
	cmp r0, #0x24
	bne _0801F914
_0801F966:
	mov r2, sp
	adds r0, r2, r4
	movs r4, #0
	strb r4, [r0]
	ldr r2, _0801FA4C
	mov r0, sb
	mov r1, sp
	bl sub_8020A3C
	ldr r0, _0801FA50
	strb r4, [r0]
_0801F97C:
	ldr r4, _0801FA54
	movs r0, #0
	strb r0, [r4]
	bl sub_801FB2C
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800B618
	bl sub_801FA84
	ldr r0, _0801FA5C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801FB38
	ldr r0, _0801FA60
	bl sub_80081DC
	bl sub_8008220
	ldr r5, _0801FA64
_0801F9B8:
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801F9F4
	ldr r0, _0801FA50
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801F9F4
	ldr r4, _0801FA54
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801F9F4
	subs r0, #1
	strb r0, [r4]
	movs r0, #0x36
	bl sub_8034F60
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800BCB0
	bl sub_8045658
_0801F9F4:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FA32
	ldr r2, _0801FA50
	ldrb r0, [r2]
	cmp r0, #1
	bls _0801FA32
	ldr r4, _0801FA54
	ldrb r1, [r4]
	subs r0, #1
	cmp r1, r0
	bge _0801FA32
	adds r0, r1, #1
	strb r0, [r4]
	movs r0, #0x36
	bl sub_8034F60
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800BCB0
	bl sub_8045658
_0801FA32:
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801FA68
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801FA68
	bl sub_8008220
	b _0801F9B8
	.align 2, 0
_0801FA4C: .4byte 0x00000901
_0801FA50: .4byte 0x0201CB59
_0801FA54: .4byte 0x0201CB58
_0801FA58: .4byte 0x0201CB60
_0801FA5C: .4byte 0x0801FADD
_0801FA60: .4byte 0x0801FB15
_0801FA64: .4byte 0x02020DFC
_0801FA68:
	movs r0, #0x38
	bl sub_8034F60
	bl sub_801FB2C
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FA84
sub_801FA84: @ 0x0801FA84
	ldr r0, _0801FAB8
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0801FABC
	strh r2, [r0]
	ldr r0, _0801FAC0
	strh r2, [r0]
	ldr r1, _0801FAC4
	movs r3, #0xfd
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0801FAC8
	strh r2, [r0]
	ldr r1, _0801FACC
	adds r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0801FAD0
	strh r2, [r0]
	ldr r0, _0801FAD4
	strh r2, [r0]
	ldr r1, _0801FAD8
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801FAB8: .4byte 0x02024228
_0801FABC: .4byte 0x02024238
_0801FAC0: .4byte 0x02024230
_0801FAC4: .4byte 0x0202422C
_0801FAC8: .4byte 0x02024248
_0801FACC: .4byte 0x0202420C
_0801FAD0: .4byte 0x0202424C
_0801FAD4: .4byte 0x02024218
_0801FAD8: .4byte 0x02024204

	THUMB_FUNC_START sub_801FADC
sub_801FADC: @ 0x0801FADC
	push {lr}
	bl sub_8045718
	ldr r1, _0801FB08
	ldr r2, _0801FB0C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0x85
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801FB10
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804549C
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_0801FB08: .4byte 0x0400000A
_0801FB0C: .4byte 0x00001D81
_0801FB10: .4byte 0x00001F0B

	THUMB_FUNC_START sub_801FB14
sub_801FB14: @ 0x0801FB14
	push {lr}
	bl sub_80454E0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FB2C
sub_801FB2C: @ 0x0801FB2C
	push {lr}
	bl sub_803ED9C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FB38
sub_801FB38: @ 0x0801FB38
	push {lr}
	bl sub_80455E4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FB44
sub_801FB44: @ 0x0801FB44
	push {lr}
	movs r1, #0
	bl sub_801FB50
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801FB50
sub_801FB50: @ 0x0801FB50
	strb r1, [r0]
	bx lr
	.byte 0x00, 0x78, 0x70, 0x47

	THUMB_FUNC_START sub_801FB58
sub_801FB58: @ 0x0801FB58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r2, _0801FBA0
	ldr r1, _0801FBA4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	str r0, [r2, #8]
	bl sub_801D6D0
	bl sub_801FF90
	bl sub_8020030
	bl sub_801FD14
	ldr r0, _0801FBA8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0801FBAC
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x13
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
	b _0801FBD6
	.align 2, 0
_0801FBA0: .4byte 0x02021D10
_0801FBA4: .4byte 0x08E00B30
_0801FBA8: .4byte 0x02024258
_0801FBAC:
	movs r0, #1
	bl sub_8043E70
	adds r4, r0, #0
	movs r0, #1
	bl sub_8043E9C
	cmp r4, r0
	bge _0801FBD6
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x15
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_0801FBD6:
	ldr r4, _0801FC70
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801FC5A
	ldrh r0, [r4, #0xe]
	bl sub_8034F60
	mov r0, sp
	bl sub_8021A14
	mov r0, sp
	strb r5, [r0, #8]
	bl sub_80219E4
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #6
	strb r0, [r1, #8]
	ldr r0, [r4, #8]
	strh r0, [r1, #4]
	mov r0, sp
	bl sub_80219E4
	bl sub_801FE98
	movs r5, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _0801FC5A
	mov r6, sp
	adds r7, r4, #0
	adds r7, #0x14
_0801FC24:
	mov r0, sp
	bl sub_8021A14
	movs r0, #5
	strb r0, [r6, #8]
	lsls r4, r5, #1
	adds r4, r4, r7
	ldrh r0, [r4]
	strh r0, [r6]
	mov r0, sp
	bl sub_80219E4
	ldrh r0, [r4]
	bl SetCardData
	bl sub_801F6B0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bhi _0801FC5A
	lsls r0, r5, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801FC24
_0801FC5A:
	ldr r0, _0801FC74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801FC66
	bl sub_8048CEC
_0801FC66:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FC70: .4byte 0x02021D10
_0801FC74: .4byte 0x020241FC

	THUMB_FUNC_START sub_801FC78
sub_801FC78: @ 0x0801FC78
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _0801FCAC
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801FC8A
	movs r1, #1
	bl RemoveCardFromTrunk
_0801FC8A:
	ldr r0, _0801FCB0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801FCB4
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x14
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
	b _0801FCDE
	.align 2, 0
_0801FCAC: .4byte 0x02021B04
_0801FCB0: .4byte 0x02024258
_0801FCB4:
	movs r0, #0
	bl sub_8043E70
	adds r4, r0, #0
	movs r0, #0
	bl sub_8043E9C
	cmp r4, r0
	bge _0801FCDE
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x16
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_0801FCDE:
	ldr r2, _0801FD10
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801FD06
	ldrh r0, [r2, #0x10]
	bl sub_8034F60
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #3
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_0801FD06:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD10: .4byte 0x02021D10

	THUMB_FUNC_START sub_801FD14
sub_801FD14: @ 0x0801FD14
	push {r4, r5, r6, lr}
	ldr r1, _0801FD3C
	ldr r2, _0801FD40
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r0, [r0]
	adds r3, r1, #0
	adds r6, r2, #0
	cmp r0, #0xf
	bls _0801FD30
	b _0801FE64
_0801FD30:
	lsls r0, r0, #2
	ldr r1, _0801FD44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FD3C: .4byte 0x08E00B30
_0801FD40: .4byte 0x02021D10
_0801FD44: .4byte 0x0801FD48
_0801FD48: @ jump table
	.4byte _0801FE64 @ case 0
	.4byte _0801FD88 @ case 1
	.4byte _0801FD8E @ case 2
	.4byte _0801FD94 @ case 3
	.4byte _0801FDA4 @ case 4
	.4byte _0801FDB4 @ case 5
	.4byte _0801FDC4 @ case 6
	.4byte _0801FDD4 @ case 7
	.4byte _0801FDE4 @ case 8
	.4byte _0801FDF4 @ case 9
	.4byte _0801FE04 @ case 10
	.4byte _0801FE14 @ case 11
	.4byte _0801FE24 @ case 12
	.4byte _0801FE34 @ case 13
	.4byte _0801FE44 @ case 14
	.4byte _0801FE54 @ case 15
_0801FD88:
	movs r4, #0xa
	movs r5, #0
	b _0801FE68
_0801FD8E:
	movs r4, #0x64
	movs r5, #0
	b _0801FE68
_0801FD94:
	ldr r5, _0801FDA0
	ldr r4, _0801FD9C
	b _0801FE68
	.align 2, 0
_0801FD9C: .4byte 0x000003E8
_0801FDA0: .4byte 0x00000000
_0801FDA4:
	ldr r5, _0801FDB0
	ldr r4, _0801FDAC
	b _0801FE68
	.align 2, 0
_0801FDAC: .4byte 0x00002710
_0801FDB0: .4byte 0x00000000
_0801FDB4:
	ldr r5, _0801FDC0
	ldr r4, _0801FDBC
	b _0801FE68
	.align 2, 0
_0801FDBC: .4byte 0x000186A0
_0801FDC0: .4byte 0x00000000
_0801FDC4:
	ldr r5, _0801FDD0
	ldr r4, _0801FDCC
	b _0801FE68
	.align 2, 0
_0801FDCC: .4byte 0x000F4240
_0801FDD0: .4byte 0x00000000
_0801FDD4:
	ldr r5, _0801FDE0
	ldr r4, _0801FDDC
	b _0801FE68
	.align 2, 0
_0801FDDC: .4byte 0x00989680
_0801FDE0: .4byte 0x00000000
_0801FDE4:
	ldr r5, _0801FDF0
	ldr r4, _0801FDEC
	b _0801FE68
	.align 2, 0
_0801FDEC: .4byte 0x05F5E100
_0801FDF0: .4byte 0x00000000
_0801FDF4:
	ldr r5, _0801FE00
	ldr r4, _0801FDFC
	b _0801FE68
	.align 2, 0
_0801FDFC: .4byte 0x3B9ACA00
_0801FE00: .4byte 0x00000000
_0801FE04:
	ldr r5, _0801FE10
	ldr r4, _0801FE0C
	b _0801FE68
	.align 2, 0
_0801FE0C: .4byte 0x540BE400
_0801FE10: .4byte 0x00000002
_0801FE14:
	ldr r5, _0801FE20
	ldr r4, _0801FE1C
	b _0801FE68
	.align 2, 0
_0801FE1C: .4byte 0x4876E800
_0801FE20: .4byte 0x00000017
_0801FE24:
	ldr r5, _0801FE30
	ldr r4, _0801FE2C
	b _0801FE68
	.align 2, 0
_0801FE2C: .4byte 0xD4A51000
_0801FE30: .4byte 0x000000E8
_0801FE34:
	ldr r5, _0801FE40
	ldr r4, _0801FE3C
	b _0801FE68
	.align 2, 0
_0801FE3C: .4byte 0x4E72A000
_0801FE40: .4byte 0x00000918
_0801FE44:
	ldr r5, _0801FE50
	ldr r4, _0801FE4C
	b _0801FE68
	.align 2, 0
_0801FE4C: .4byte 0x107A4000
_0801FE50: .4byte 0x00005AF3
_0801FE54:
	ldr r5, _0801FE60
	ldr r4, _0801FE5C
	b _0801FE68
	.align 2, 0
_0801FE5C: .4byte 0xA4C68000
_0801FE60: .4byte 0x00038D7E
_0801FE64:
	movs r4, #1
	movs r5, #0
_0801FE68:
	ldrh r0, [r6, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	bl sub_805629C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_805B0D4
	str r0, [r6]
	str r1, [r6, #4]
	bl sub_8026F60
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FE98
sub_801FE98: @ 0x0801FE98
	push {r4, lr}
	sub sp, #0xc
	mov r0, sp
	bl sub_8021A14
	ldr r3, _0801FEB4
	ldr r0, [r3]
	ldr r1, [r3, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0801FEB8
	mov r1, sp
	movs r0, #0xc
	b _0801FECC
	.align 2, 0
_0801FEB4: .4byte 0x02021D10
_0801FEB8:
	cmp r1, #0
	bhi _0801FEDC
	cmp r1, #0
	bne _0801FEC8
	ldr r1, [r3]
	ldr r0, _0801FED8
	cmp r1, r0
	bhi _0801FEDC
_0801FEC8:
	mov r1, sp
	movs r0, #8
_0801FECC:
	strb r0, [r1, #8]
	mov r2, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	strh r0, [r2, #4]
	b _0801FF5A
	.align 2, 0
_0801FED8: .4byte 0x0000270F
_0801FEDC:
	ldr r0, _0801FF04
	ldr r2, [r0, #4]
	adds r3, r0, #0
	cmp r2, #0
	bhi _0801FF14
	cmp r2, #0
	bne _0801FEF2
	ldr r1, [r3]
	ldr r0, _0801FF08
	cmp r1, r0
	bhi _0801FF14
_0801FEF2:
	mov r1, sp
	movs r0, #9
	strb r0, [r1, #8]
	mov r4, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, _0801FF0C
	ldr r3, _0801FF10
	b _0801FF54
	.align 2, 0
_0801FF04: .4byte 0x02021D10
_0801FF08: .4byte 0x05F5E0FF
_0801FF0C: .4byte 0x00002710
_0801FF10: .4byte 0x00000000
_0801FF14:
	ldr r0, [r3, #4]
	cmp r0, #0xe8
	bhi _0801FF44
	cmp r0, #0xe8
	bne _0801FF26
	ldr r1, [r3]
	ldr r0, _0801FF38
	cmp r1, r0
	bhi _0801FF44
_0801FF26:
	mov r1, sp
	movs r0, #0xa
	strb r0, [r1, #8]
	mov r4, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, _0801FF3C
	ldr r3, _0801FF40
	b _0801FF54
	.align 2, 0
_0801FF38: .4byte 0xD4A50FFF
_0801FF3C: .4byte 0x05F5E100
_0801FF40: .4byte 0x00000000
_0801FF44:
	mov r1, sp
	movs r0, #0xb
	strb r0, [r1, #8]
	mov r4, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r3, _0801FF6C
	ldr r2, _0801FF68
_0801FF54:
	bl sub_805B144
	strh r0, [r4, #4]
_0801FF5A:
	mov r0, sp
	bl sub_80219E4
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FF68: .4byte 0xD4A51000
_0801FF6C: .4byte 0x000000E8

	THUMB_FUNC_START sub_801FF70
sub_801FF70: @ 0x0801FF70
	push {lr}
	ldr r0, _0801FF84
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801FF88
	bl sub_801FB58
	b _0801FF8C
	.align 2, 0
_0801FF84: .4byte 0x02021D10
_0801FF88:
	bl sub_801FC78
_0801FF8C:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801FF90
sub_801FF90: @ 0x0801FF90
	push {r4, r5, r6, lr}
	ldr r0, _0801FFD8
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801FFD2
	movs r4, #0
	ldr r0, _0801FFDC
	adds r1, r0, #0
	adds r1, #0x2a
	ldrb r2, [r1]
	cmp r4, r2
	bhs _0801FFD2
	adds r5, r0, #0
	adds r6, r1, #0
_0801FFAC:
	bl sub_801FFE0
	lsls r2, r4, #1
	adds r1, r5, #0
	adds r1, #0x14
	adds r2, r2, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #1
	bl AddCardToTrunk
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bhi _0801FFD2
	ldrb r0, [r6]
	cmp r4, r0
	blo _0801FFAC
_0801FFD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFD8: .4byte 0x02021B04
_0801FFDC: .4byte 0x02021D10

	THUMB_FUNC_START sub_801FFE0
sub_801FFE0: @ 0x0801FFE0
	push {r4, lr}
	ldr r0, _0801FFF4
	ldrh r0, [r0]
	bl sub_8025568
	cmp r0, #1
	bne _0801FFFC
	ldr r0, _0801FFF8
	ldr r4, [r0, #0x38]
	b _08020000
	.align 2, 0
_0801FFF4: .4byte 0x02021B04
_0801FFF8: .4byte 0x02021D10
_0801FFFC:
	ldr r0, _08020010
	ldr r4, [r0, #0x40]
_08020000:
	ldr r1, _08020014
	movs r0, #0
	bl sub_805629C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0802001A
	.align 2, 0
_08020010: .4byte 0x02021D10
_08020014: .4byte 0x000007FF
_08020018:
	adds r4, #4
_0802001A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08020026
	ldrh r0, [r4, #2]
	cmp r1, r0
	bhi _08020018
_08020026:
	ldrh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020030
sub_8020030: @ 0x08020030
	push {r4, lr}
	movs r4, #0
_08020034:
	bl sub_8020050
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_802D90C
	adds r4, #1
	cmp r4, #2
	bls _08020034
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020050
sub_8020050: @ 0x08020050
	push {r4, lr}
	ldr r0, _08020064
	ldr r4, [r0, #0x3c]
	ldr r1, _08020068
	movs r0, #0
	bl sub_805629C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0802006E
	.align 2, 0
_08020064: .4byte 0x02021D10
_08020068: .4byte 0x0000752F
_0802006C:
	adds r4, #4
_0802006E:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802007A
	ldrh r0, [r4, #2]
	cmp r1, r0
	bhs _0802006C
_0802007A:
	ldrh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x30, 0xB5, 0x00, 0x23, 0x00, 0x22, 0x24, 0x48, 0x01, 0x78, 0x04, 0x1C
	.byte 0xFF, 0x29, 0x0D, 0xD0, 0x22, 0x4D, 0x21, 0x1C, 0x50, 0x18, 0x00, 0x78, 0x80, 0x00, 0x40, 0x19
	.byte 0x80, 0x88, 0x04, 0x28, 0x35, 0xD9, 0x01, 0x32, 0x10, 0x19, 0x00, 0x78, 0xFF, 0x28, 0xF3, 0xD1
	.byte 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x00, 0x22, 0x1A, 0x48, 0x01, 0x78, 0x04, 0x1C, 0xFF, 0x29
	.byte 0x0D, 0xD0, 0x17, 0x4D, 0x21, 0x1C, 0x50, 0x18, 0x00, 0x78, 0x80, 0x00, 0x40, 0x19, 0x80, 0x88
	.byte 0x04, 0x28, 0x1E, 0xD9, 0x01, 0x32, 0x10, 0x19, 0x00, 0x78, 0xFF, 0x28, 0xF3, 0xD1, 0x58, 0x1C
	.byte 0x00, 0x06, 0x03, 0x0E, 0x00, 0x22, 0x10, 0x48, 0x01, 0x78, 0x04, 0x1C, 0xFF, 0x29, 0x0D, 0xD0
	.byte 0x0B, 0x4D, 0x21, 0x1C, 0x50, 0x18, 0x00, 0x78, 0x80, 0x00, 0x40, 0x19, 0x80, 0x88, 0x04, 0x28
	.byte 0x07, 0xD9, 0x01, 0x32, 0x10, 0x19, 0x00, 0x78, 0xFF, 0x28, 0xF3, 0xD1, 0x58, 0x1C, 0x00, 0x06
	.byte 0x03, 0x0E, 0x18, 0x1C, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x30, 0xE6, 0x0B, 0x08
	.byte 0x90, 0x1C, 0x02, 0x02, 0x31, 0xE6, 0x0B, 0x08, 0x32, 0xE6, 0x0B, 0x08, 0x00, 0xB5, 0x00, 0x06
	.byte 0x00, 0x0E, 0x01, 0x1C, 0x12, 0x06, 0x12, 0x0E, 0x18, 0x28, 0x07, 0xD8, 0x01, 0x2A, 0x02, 0xD1
	.byte 0x00, 0xF0, 0x24, 0xF8, 0x02, 0xE0, 0x08, 0x1C, 0x00, 0xF0, 0x30, 0xF8, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x02, 0xD1, 0x00, 0xF0, 0x37, 0xF8, 0x01, 0xE0
	.byte 0x00, 0xF0, 0x40, 0xF8, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8020168
sub_8020168: @ 0x08020168
	ldr r1, _08020184
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r2, #0
	adds r1, #4
_08020174:
	strh r2, [r1]
	strh r2, [r1, #2]
	adds r1, #4
	adds r0, #1
	cmp r0, #0x18
	bls _08020174
	bx lr
	.align 2, 0
_08020184: .4byte 0x02021C90
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802018C
sub_802018C: @ 0x0802018C
	lsls r0, r0, #0x18
	ldr r1, _080201A4
	lsrs r0, r0, #0x16
	adds r2, r0, r1
	ldrh r1, [r2, #4]
	ldr r0, _080201A8
	cmp r1, r0
	bhi _080201A0
	adds r0, r1, #1
	strh r0, [r2, #4]
_080201A0:
	bx lr
	.align 2, 0
_080201A4: .4byte 0x02021C90
_080201A8: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201AC
sub_80201AC: @ 0x080201AC
	lsls r0, r0, #0x18
	ldr r1, _080201C4
	lsrs r0, r0, #0x16
	adds r2, r0, r1
	ldrh r1, [r2, #6]
	ldr r0, _080201C8
	cmp r1, r0
	bhi _080201C0
	adds r0, r1, #1
	strh r0, [r2, #6]
_080201C0:
	bx lr
	.align 2, 0
_080201C4: .4byte 0x02021C90
_080201C8: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201CC
sub_80201CC: @ 0x080201CC
	ldr r2, _080201DC
	ldrh r1, [r2]
	ldr r0, _080201E0
	cmp r1, r0
	bhi _080201DA
	adds r0, r1, #1
	strh r0, [r2]
_080201DA:
	bx lr
	.align 2, 0
_080201DC: .4byte 0x02021C90
_080201E0: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201E4
sub_80201E4: @ 0x080201E4
	ldr r2, _080201F4
	ldrh r1, [r2, #2]
	ldr r0, _080201F8
	cmp r1, r0
	bhi _080201F2
	adds r0, r1, #1
	strh r0, [r2, #2]
_080201F2:
	bx lr
	.align 2, 0
_080201F4: .4byte 0x02021C90
_080201F8: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201FC
sub_80201FC: @ 0x080201FC
	push {r4, lr}
	ldr r1, _08020308
	ldr r2, _0802030C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08020310
	ldr r0, _08020314
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020318
	adds r0, r4, r1
	ldr r1, _0802031C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020320
	adds r0, r4, r2
	ldr r1, _08020324
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020328
	adds r0, r4, r1
	ldr r1, _0802032C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020330
	adds r0, r4, r2
	ldr r1, _08020334
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020338
	adds r0, r4, r1
	ldr r1, _0802033C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020340
	adds r0, r4, r2
	ldr r1, _08020344
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020348
	adds r0, r4, r1
	ldr r1, _0802034C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020350
	adds r0, r4, r2
	ldr r1, _08020354
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020358
	adds r0, r4, r1
	ldr r1, _0802035C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020360
	adds r0, r4, r2
	ldr r1, _08020364
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020368
	adds r0, r4, r1
	ldr r1, _0802036C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020370
	adds r0, r4, r2
	ldr r1, _08020374
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020378
	adds r0, r4, r1
	ldr r1, _0802037C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	movs r2, #0xe2
	lsls r2, r2, #8
	adds r4, r4, r2
	ldr r0, _08020380
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_8020A3C
	ldr r3, _08020384
	movs r1, #0
	strh r1, [r3]
	adds r0, r3, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, #2
	ldr r2, _08020388
	strh r2, [r0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r3, r4
	strh r1, [r0]
	ldr r1, _0802038C
	adds r0, r3, r1
	strh r2, [r0]
	bl sub_8020390
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020308: .4byte 0x0400000C
_0802030C: .4byte 0x00005E02
_08020310: .4byte 0x02002200
_08020314: .4byte 0x08E00E28
_08020318: .4byte 0xFFFFE220
_0802031C: .4byte 0x08E00DF4
_08020320: .4byte 0xFFFFE2C0
_08020324: .4byte 0x08E00DF8
_08020328: .4byte 0xFFFFE3A0
_0802032C: .4byte 0x08E00DFC
_08020330: .4byte 0xFFFFE400
_08020334: .4byte 0x08E00E00
_08020338: .4byte 0xFFFFE460
_0802033C: .4byte 0x08E00E04
_08020340: .4byte 0xFFFFE500
_08020344: .4byte 0x08E00E08
_08020348: .4byte 0xFFFFE580
_0802034C: .4byte 0x08E00E0C
_08020350: .4byte 0xFFFFE6A0
_08020354: .4byte 0x08E00E10
_08020358: .4byte 0xFFFFE7E0
_0802035C: .4byte 0x08E00E14
_08020360: .4byte 0xFFFFE8A0
_08020364: .4byte 0x08E00E18
_08020368: .4byte 0xFFFFE980
_0802036C: .4byte 0x08E00E1C
_08020370: .4byte 0xFFFFEA20
_08020374: .4byte 0x08E00E20
_08020378: .4byte 0xFFFFEAE0
_0802037C: .4byte 0x08E00E24
_08020380: .4byte 0x08E00E2C
_08020384: .4byte 0x02000000
_08020388: .4byte 0x00007FFF
_0802038C: .4byte 0x00000202

	THUMB_FUNC_START sub_8020390
sub_8020390: @ 0x08020390
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
_08020396:
	ldr r0, _080203F0
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _080203F4
	adds r1, r1, r6
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	ble _08020396
	ldr r0, _080203F8
	ldrh r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	ldr r2, _080203FC
	ldrb r0, [r2]
	ldr r1, _08020400
	adds r3, r1, #0
	adds r1, r6, #0
	adds r1, #0x80
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #1]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #2]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #3]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #4]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080203F0: .4byte 0x080BE634
_080203F4: .4byte 0x0200F400
_080203F8: .4byte 0x02021D00
_080203FC: .4byte 0x02021BD0
_08020400: .4byte 0x000030F0

	THUMB_FUNC_START sub_8020404
sub_8020404: @ 0x08020404
	push {r4, r5, lr}
	ldr r4, _08020450
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r4, #0
	bl CpuSet
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	ldr r1, _08020454
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r5, #0
	bl CpuSet
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r1, _08020458
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSet
	ldr r0, _0802045C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r2, r5, #0
	bl CpuSet
	bl sub_80454C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020450: .4byte 0x02000400
_08020454: .4byte 0x06010000
_08020458: .4byte 0x0600F000
_0802045C: .4byte 0x02000000
	.byte 0x10, 0xB5, 0x0A, 0x4C, 0xC0, 0x21, 0xC9, 0x04, 0x80, 0x22, 0x92, 0x01, 0x20, 0x1C, 0x38, 0xF0
	.byte 0x71, 0xF9, 0xF0, 0x20, 0x00, 0x02, 0x24, 0x18, 0x05, 0x49, 0x80, 0x22, 0xD2, 0x00, 0x20, 0x1C
	.byte 0x38, 0xF0, 0x68, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02
	.byte 0x00, 0xF0, 0x00, 0x06, 0x06, 0x4A, 0x07, 0x49, 0x07, 0x48, 0x00, 0x78, 0x40, 0x00, 0x40, 0x18
	.byte 0x00, 0x78, 0x10, 0x60, 0x80, 0x21, 0x09, 0x01, 0x08, 0x1C, 0x90, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x84, 0x01, 0x02, 0xDA, 0x0D, 0xE0, 0x08, 0x04, 0x1D, 0x02, 0x02, 0x30, 0xB5, 0x82, 0xB0
	.byte 0x68, 0x46, 0x00, 0x25, 0x05, 0x80, 0x18, 0x4C, 0x18, 0x4A, 0x21, 0x1C, 0x38, 0xF0, 0x42, 0xF9
	.byte 0x68, 0x46, 0x02, 0x30, 0x05, 0x80, 0xF0, 0x21, 0x09, 0x02, 0x64, 0x18, 0x14, 0x4A, 0x21, 0x1C
	.byte 0x38, 0xF0, 0x38, 0xF9, 0x01, 0xA8, 0x05, 0x80, 0x12, 0x49, 0x13, 0x4A, 0x38, 0xF0, 0x32, 0xF9
	.byte 0x12, 0x48, 0x05, 0x80, 0x12, 0x48, 0x05, 0x80, 0x12, 0x48, 0x05, 0x80, 0x24, 0xF0, 0xCE, 0xFF
	.byte 0x80, 0x21, 0xC9, 0x04, 0xA0, 0x22, 0x52, 0x01, 0x10, 0x1C, 0x08, 0x80, 0x0E, 0x48, 0x05, 0x80
	.byte 0x02, 0x38, 0x05, 0x80, 0xFF, 0xF7, 0x72, 0xFE, 0xFF, 0xF7, 0x74, 0xFF, 0xE7, 0xF7, 0x80, 0xFE
	.byte 0x02, 0xB0, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x04, 0x00, 0x02, 0x00, 0x10, 0x00, 0x01
	.byte 0x00, 0x04, 0x00, 0x01, 0x00, 0x84, 0x01, 0x02, 0x00, 0x02, 0x00, 0x01, 0x28, 0x42, 0x02, 0x02
	.byte 0x38, 0x42, 0x02, 0x02, 0x30, 0x42, 0x02, 0x02, 0x1A, 0x00, 0x00, 0x04

	THUMB_FUNC_START sub_802054C
sub_802054C: @ 0x0802054C
	push {r4, lr}
	ldr r1, _080205B4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080205B8
	movs r4, #0
	strh r4, [r0]
	ldr r0, _080205BC
	strb r4, [r0]
	bl sub_8057854
	bl sub_80082C0
	ldr r2, _080205C0
	strh r4, [r2]
	ldr r1, _080205C4
	ldr r3, _080205C8
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080205CC
	movs r0, #8
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	subs r1, #4
	movs r0, #0x80
	strh r0, [r1]
	bl sub_80595C4
	ldr r0, _080205D0
	bl sub_8059B60
	bl sub_800AEC4
	bl sub_800AD24
	bl sub_80561FC
	bl sub_80327C8
	bl sub_803276C
	bl sub_80268D8
	bl sub_8035444
	bl sub_804DC48
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080205B4: .4byte 0x02021D04
_080205B8: .4byte 0x02021D00
_080205BC: .4byte 0x02021CF8
_080205C0: .4byte 0x04000208
_080205C4: .4byte 0x04000200
_080205C8: .4byte 0x00002001
_080205CC: .4byte 0x04000004
_080205D0: .4byte 0x0097FC00

	THUMB_FUNC_START sub_80205D4
sub_80205D4: @ 0x080205D4
	push {lr}
	bl sub_80205EC
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0x1f
	bne _080205E6
	bl sub_8020664
_080205E6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80205EC
sub_80205EC: @ 0x080205EC
	push {r4, r5, r6, lr}
	movs r5, #0
	movs r4, #0
	ldr r6, _08020618
_080205F4:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802061C
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080205F4
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020618: .4byte 0x02024020

	THUMB_FUNC_START sub_802061C
sub_802061C: @ 0x0802061C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	subs r0, #0x11
	cmp r0, #4
	bhi _0802065E
	lsls r0, r0, #2
	ldr r1, _08020634
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020634: .4byte 0x08020638
_08020638: @ jump table
	.4byte _0802064C @ case 0
	.4byte _08020650 @ case 1
	.4byte _08020654 @ case 2
	.4byte _08020658 @ case 3
	.4byte _0802065C @ case 4
_0802064C:
	movs r1, #1
	b _0802065E
_08020650:
	movs r1, #2
	b _0802065E
_08020654:
	movs r1, #4
	b _0802065E
_08020658:
	movs r1, #8
	b _0802065E
_0802065C:
	movs r1, #0x10
_0802065E:
	adds r0, r1, #0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020664
sub_8020664: @ 0x08020664
	push {lr}
	sub sp, #0xc
	bl sub_8058744
	movs r1, #0
	cmp r0, #0
	bne _08020674
	movs r1, #1
_08020674:
	adds r0, r1, #0
	bl sub_8025520
	bl sub_801D1A8
	ldr r1, _08020694
	movs r0, #0x11
	strh r0, [r1, #8]
	movs r0, #5
	bl sub_801D188
	bl sub_801CEBC
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_08020694: .4byte 0x02021C10

	THUMB_FUNC_START sub_8020698
sub_8020698: @ 0x08020698
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _080206A6
	b _0802081A
_080206A6:
	movs r4, #1
_080206A8:
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	subs r0, #0x30
	cmp r0, #6
	bls _080206BA
	b _08020814
_080206BA:
	lsls r0, r0, #2
	ldr r1, _080206C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080206C4: .4byte 0x080206C8
_080206C8: @ jump table
	.4byte _080206E4 @ case 0
	.4byte _08020714 @ case 1
	.4byte _08020744 @ case 2
	.4byte _08020774 @ case 3
	.4byte _080207A4 @ case 4
	.4byte _080207D4 @ case 5
	.4byte _0802080A @ case 6
_080206E4:
	ldr r0, _08020700
	ldrb r0, [r0]
	cmp r0, #0
	beq _080207DC
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _080206F4
	b _08020814
_080206F4:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020704
	adds r2, #1
	adds r0, r3, #1
	b _08020708
	.align 2, 0
_08020700: .4byte 0x02021CF8
_08020704:
	adds r2, #2
	adds r0, r3, #2
_08020708:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _080206F4
	b _08020814
_08020714:
	ldr r0, _08020730
	ldrb r0, [r0]
	cmp r0, #1
	beq _080207DC
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _08020814
_08020722:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020734
	adds r2, #1
	adds r0, r3, #1
	b _08020738
	.align 2, 0
_08020730: .4byte 0x02021CF8
_08020734:
	adds r2, #2
	adds r0, r3, #2
_08020738:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _08020722
	b _08020814
_08020744:
	ldr r0, _08020760
	ldrb r0, [r0]
	cmp r0, #2
	beq _080207DC
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _08020814
_08020752:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020764
	adds r2, #1
	adds r0, r3, #1
	b _08020768
	.align 2, 0
_08020760: .4byte 0x02021CF8
_08020764:
	adds r2, #2
	adds r0, r3, #2
_08020768:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _08020752
	b _08020814
_08020774:
	ldr r0, _08020790
	ldrb r0, [r0]
	cmp r0, #3
	beq _080207DC
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _08020814
_08020782:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020794
	adds r2, #1
	adds r0, r3, #1
	b _08020798
	.align 2, 0
_08020790: .4byte 0x02021CF8
_08020794:
	adds r2, #2
	adds r0, r3, #2
_08020798:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _08020782
	b _08020814
_080207A4:
	ldr r0, _080207C0
	ldrb r0, [r0]
	cmp r0, #4
	beq _080207DC
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _08020814
_080207B2:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080207C4
	adds r2, #1
	adds r0, r3, #1
	b _080207C8
	.align 2, 0
_080207C0: .4byte 0x02021CF8
_080207C4:
	adds r2, #2
	adds r0, r3, #2
_080207C8:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _080207B2
	b _08020814
_080207D4:
	ldr r0, _080207E4
	ldrb r0, [r0]
	cmp r0, #5
	bne _080207E8
_080207DC:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0802081A
	.align 2, 0
_080207E4: .4byte 0x02021CF8
_080207E8:
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _08020814
_080207EE:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080207FA
	adds r2, #1
	adds r0, r3, #1
	b _080207FE
_080207FA:
	adds r2, #2
	adds r0, r3, #2
_080207FE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _080207EE
	b _08020814
_0802080A:
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r4, #0
_08020814:
	cmp r4, #0
	beq _0802081A
	b _080206A8
_0802081A:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020824
sub_8020824: @ 0x08020824
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _0802082E
	b _08020964
_0802082E:
	movs r3, #1
_08020830:
	adds r2, #1
	ldrb r0, [r2]
	subs r0, #0x30
	cmp r0, #6
	bls _0802083C
	b _0802095E
_0802083C:
	lsls r0, r0, #2
	ldr r1, _08020848
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020848: .4byte 0x0802084C
_0802084C: @ jump table
	.4byte _08020868 @ case 0
	.4byte _0802088E @ case 1
	.4byte _080208B6 @ case 2
	.4byte _080208DE @ case 3
	.4byte _08020906 @ case 4
	.4byte _0802092E @ case 5
	.4byte _0802095A @ case 6
_08020868:
	ldr r0, _08020880
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020936
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _0802095E
_08020876:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020884
	adds r2, #1
	b _08020886
	.align 2, 0
_08020880: .4byte 0x02021CF8
_08020884:
	adds r2, #2
_08020886:
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _08020876
	b _0802095E
_0802088E:
	ldr r0, _080208A8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08020936
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _0802095E
_0802089C:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080208AC
	adds r2, #1
	b _080208AE
	.align 2, 0
_080208A8: .4byte 0x02021CF8
_080208AC:
	adds r2, #2
_080208AE:
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _0802089C
	b _0802095E
_080208B6:
	ldr r0, _080208D0
	ldrb r0, [r0]
	cmp r0, #2
	beq _08020936
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _0802095E
_080208C4:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080208D4
	adds r2, #1
	b _080208D6
	.align 2, 0
_080208D0: .4byte 0x02021CF8
_080208D4:
	adds r2, #2
_080208D6:
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _080208C4
	b _0802095E
_080208DE:
	ldr r0, _080208F8
	ldrb r0, [r0]
	cmp r0, #3
	beq _08020936
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _0802095E
_080208EC:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080208FC
	adds r2, #1
	b _080208FE
	.align 2, 0
_080208F8: .4byte 0x02021CF8
_080208FC:
	adds r2, #2
_080208FE:
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _080208EC
	b _0802095E
_08020906:
	ldr r0, _08020920
	ldrb r0, [r0]
	cmp r0, #4
	beq _08020936
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _0802095E
_08020914:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020924
	adds r2, #1
	b _08020926
	.align 2, 0
_08020920: .4byte 0x02021CF8
_08020924:
	adds r2, #2
_08020926:
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _08020914
	b _0802095E
_0802092E:
	ldr r0, _0802093C
	ldrb r0, [r0]
	cmp r0, #5
	bne _08020940
_08020936:
	adds r2, #1
	b _08020964
	.align 2, 0
_0802093C: .4byte 0x02021CF8
_08020940:
	ldrb r0, [r2]
	cmp r0, #0x24
	beq _0802095E
_08020946:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020950
	adds r2, #1
	b _08020952
_08020950:
	adds r2, #2
_08020952:
	ldrb r0, [r2]
	cmp r0, #0x24
	bne _08020946
	b _0802095E
_0802095A:
	adds r2, #1
	movs r3, #0
_0802095E:
	cmp r3, #0
	beq _08020964
	b _08020830
_08020964:
	adds r0, r2, #0
	bx lr

	THUMB_FUNC_START sub_8020968
sub_8020968: @ 0x08020968
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r0, #0xff
	ands r0, r1
	lsls r2, r0, #8
	lsrs r1, r1, #8
	orrs r2, r1
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r5
	movs r0, #0xa0
	lsls r0, r0, #3
	cmp r1, r0
	beq _08020A2A
	cmp r1, r0
	bgt _080209AC
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08020A0A
	cmp r1, r0
	bgt _080209A2
	cmp r1, #0
	beq _080209CC
	b _08020A34
_080209A2:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080209FE
	b _08020A34
_080209AC:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r1, r0
	beq _08020A16
	cmp r1, r0
	bgt _080209C2
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _080209D8
	b _08020A34
_080209C2:
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	beq _080209E4
	b _08020A34
_080209CC:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_80214BC
	b _08020A34
_080209D8:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_80214BC
	b _080209F4
_080209E4:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_80214BC
	adds r0, r4, #0
	bl sub_80216D0
_080209F4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8021664
	b _08020A34
_080209FE:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_80214F4
	b _08020A34
_08020A0A:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_8021584
	b _08020A34
_08020A16:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_8021584
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8021688
	b _08020A34
_08020A2A:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_80215BC
_08020A34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020A3C
sub_8020A3C: @ 0x08020A3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r0, r4, #0
	bl sub_8020824
	adds r4, r0, #0
	movs r7, #0
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r6
	movs r0, #0xa0
	lsls r0, r0, #3
	cmp r1, r0
	bne _08020A64
	b _08020D4E
_08020A64:
	cmp r1, r0
	bgt _08020A88
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08020A72
	b _08020C84
_08020A72:
	cmp r1, r0
	bgt _08020A7C
	cmp r1, #0
	beq _08020AB4
	b _08020DAC
_08020A7C:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _08020A86
	b _08020C2E
_08020A86:
	b _08020DAC
_08020A88:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r1, r0
	bne _08020A92
	b _08020CE6
_08020A92:
	cmp r1, r0
	bgt _08020AA0
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _08020B0C
	b _08020DAC
_08020AA0:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _08020AAA
	b _08020BD2
_08020AAA:
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	beq _08020B6C
	b _08020DAC
_08020AB4:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020ABE
	b _08020DAC
_08020ABE:
	cmp r1, #0x24
	bne _08020AC4
	b _08020DAC
_08020AC4:
	ldr r7, _08020AE4
_08020AC6:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020AE8
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020AF2
	.align 2, 0
_08020AE4: .4byte 0x08E00E30
_08020AE8:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020AF2:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r5, #0x20
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020B06
	b _08020DAC
_08020B06:
	cmp r1, #0x24
	bne _08020AC6
	b _08020DAC
_08020B0C:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020B16
	b _08020DAC
_08020B16:
	cmp r1, #0x24
	bne _08020B1C
	b _08020DAC
_08020B1C:
	ldr r7, _08020B3C
_08020B1E:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020B40
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020B4A
	.align 2, 0
_08020B3C: .4byte 0x08E00E30
_08020B40:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020B4A:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8021664
	adds r5, #0x20
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020B66
	b _08020DAC
_08020B66:
	cmp r1, #0x24
	bne _08020B1E
	b _08020DAC
_08020B6C:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020B76
	b _08020DAC
_08020B76:
	cmp r1, #0x24
	bne _08020B7C
	b _08020DAC
_08020B7C:
	ldr r7, _08020B9C
_08020B7E:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020BA0
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020BAA
	.align 2, 0
_08020B9C: .4byte 0x08E00E30
_08020BA0:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020BAA:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r0, r5, #0
	bl sub_80216D0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8021664
	adds r5, #0x20
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020BCC
	b _08020DAC
_08020BCC:
	cmp r1, #0x24
	bne _08020B7E
	b _08020DAC
_08020BD2:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020BDC
	b _08020DAC
_08020BDC:
	cmp r1, #0x24
	bne _08020BE2
	b _08020DAC
_08020BE2:
	ldr r7, _08020C00
_08020BE4:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020C04
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020C0E
	.align 2, 0
_08020C00: .4byte 0x08E00E30
_08020C04:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020C0E:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r0, r5, #0
	bl sub_80216D0
	adds r5, #0x20
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020C28
	b _08020DAC
_08020C28:
	cmp r1, #0x24
	bne _08020BE4
	b _08020DAC
_08020C2E:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020C38
	b _08020DAC
_08020C38:
	cmp r1, #0x24
	bne _08020C3E
	b _08020DAC
_08020C3E:
	ldr r7, _08020C5C
_08020C40:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020C60
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020C6A
	.align 2, 0
_08020C5C: .4byte 0x08E00E30
_08020C60:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020C6A:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214F4
	adds r5, #0x40
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020C7E
	b _08020DAC
_08020C7E:
	cmp r1, #0x24
	bne _08020C40
	b _08020DAC
_08020C84:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	bne _08020C8E
	b _08020DAC
_08020C8E:
	cmp r1, #0x24
	bne _08020C94
	b _08020DAC
_08020C94:
	ldr r1, _08020CB4
	mov r8, r1
_08020C98:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020CB8
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020CC2
	.align 2, 0
_08020CB4: .4byte 0x08E00E30
_08020CB8:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020CC2:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_8021584
	cmp r7, #0
	beq _08020CD2
	adds r5, #0x60
	b _08020CD4
_08020CD2:
	adds r5, #0x20
_08020CD4:
	movs r0, #1
	eors r7, r0
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	beq _08020DAC
	cmp r1, #0x24
	bne _08020C98
	b _08020DAC
_08020CE6:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	beq _08020DAC
	cmp r1, #0x24
	beq _08020DAC
	ldr r1, _08020D14
	mov r8, r1
_08020CF6:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020D18
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020D22
	.align 2, 0
_08020D14: .4byte 0x08E00E30
_08020D18:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020D22:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_8021584
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8021688
	cmp r7, #0
	beq _08020D3A
	adds r5, #0x60
	b _08020D3C
_08020D3A:
	adds r5, #0x20
_08020D3C:
	movs r0, #1
	eors r7, r0
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	beq _08020DAC
	cmp r1, #0x24
	bne _08020CF6
	b _08020DAC
_08020D4E:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	beq _08020DAC
	cmp r1, #0x24
	beq _08020DAC
	ldr r1, _08020D7C
	mov r8, r1
_08020D5E:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020D80
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020D8A
	.align 2, 0
_08020D7C: .4byte 0x08E00E30
_08020D80:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020D8A:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80215BC
	cmp r7, #0
	beq _08020D9A
	adds r5, #0xc0
	b _08020D9C
_08020D9A:
	adds r5, #0x40
_08020D9C:
	movs r0, #1
	eors r7, r0
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0
	beq _08020DAC
	cmp r1, #0x24
	bne _08020D5E
_08020DAC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020DB8
sub_8020DB8: @ 0x08020DB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r0, r4, #0
	bl sub_8020824
	adds r4, r0, #0
	movs r7, #0
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r6
	movs r0, #0xa0
	lsls r0, r0, #3
	cmp r1, r0
	bne _08020DE0
	b _0802105C
_08020DE0:
	cmp r1, r0
	bgt _08020E04
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08020DEE
	b _08020FAC
_08020DEE:
	cmp r1, r0
	bgt _08020DF8
	cmp r1, #0
	beq _08020E2E
	b _080210AE
_08020DF8:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _08020E02
	b _08020F66
_08020E02:
	b _080210AE
_08020E04:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r1, r0
	bne _08020E0E
	b _08021000
_08020E0E:
	cmp r1, r0
	bgt _08020E1C
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _08020E74
	b _080210AE
_08020E1C:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _08020F1A
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	beq _08020EC4
	b _080210AE
_08020E2E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020E36
	b _080210AE
_08020E36:
	ldr r7, _08020E54
_08020E38:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020E58
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020E62
	.align 2, 0
_08020E54: .4byte 0x08E00E30
_08020E58:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020E62:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r5, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020E38
	b _080210AE
_08020E74:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020E7C
	b _080210AE
_08020E7C:
	ldr r7, _08020E9C
_08020E7E:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020EA0
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020EAA
	.align 2, 0
_08020E9C: .4byte 0x08E00E30
_08020EA0:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020EAA:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8021664
	adds r5, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020E7E
	b _080210AE
_08020EC4:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020ECC
	b _080210AE
_08020ECC:
	ldr r7, _08020EEC
_08020ECE:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020EF0
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020EFA
	.align 2, 0
_08020EEC: .4byte 0x08E00E30
_08020EF0:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020EFA:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r0, r5, #0
	bl sub_80216D0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8021664
	adds r5, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020ECE
	b _080210AE
_08020F1A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020F22
	b _080210AE
_08020F22:
	ldr r7, _08020F40
_08020F24:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020F44
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020F4E
	.align 2, 0
_08020F40: .4byte 0x08E00E30
_08020F44:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020F4E:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214BC
	adds r0, r5, #0
	bl sub_80216D0
	adds r5, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020F24
	b _080210AE
_08020F66:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020F6E
	b _080210AE
_08020F6E:
	ldr r7, _08020F8C
_08020F70:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020F90
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020F9A
	.align 2, 0
_08020F8C: .4byte 0x08E00E30
_08020F90:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020F9A:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80214F4
	adds r5, #0x40
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020F70
	b _080210AE
_08020FAC:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020FB4
	b _080210AE
_08020FB4:
	ldr r1, _08020FD4
	mov r8, r1
_08020FB8:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08020FD8
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08020FE2
	.align 2, 0
_08020FD4: .4byte 0x08E00E30
_08020FD8:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08020FE2:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_8021584
	cmp r7, #0
	beq _08020FF2
	adds r5, #0x60
	b _08020FF4
_08020FF2:
	adds r5, #0x20
_08020FF4:
	movs r0, #1
	eors r7, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020FB8
	b _080210AE
_08021000:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080210AE
	ldr r1, _08021028
	mov r8, r1
_0802100A:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0802102C
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08021036
	.align 2, 0
_08021028: .4byte 0x08E00E30
_0802102C:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08021036:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_8021584
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8021688
	cmp r7, #0
	beq _0802104E
	adds r5, #0x60
	b _08021050
_0802104E:
	adds r5, #0x20
_08021050:
	movs r0, #1
	eors r7, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802100A
	b _080210AE
_0802105C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080210AE
	ldr r1, _08021084
	mov r8, r1
_08021066:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08021088
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	adds r4, #1
	b _08021092
	.align 2, 0
_08021084: .4byte 0x08E00E30
_08021088:
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r4, #2
_08021092:
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_80215BC
	cmp r7, #0
	beq _080210A2
	adds r5, #0xc0
	b _080210A4
_080210A2:
	adds r5, #0x40
_080210A4:
	movs r0, #1
	eors r7, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08021066
_080210AE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80210B8
sub_80210B8: @ 0x080210B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08021120
	cmp r1, r0
	bhi _080210C4
	ldr r1, _08021124
_080210C4:
	ldr r2, _08021128
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bls _080210DE
	ldr r3, _0802112C
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080210DE:
	movs r0, #0xe0
	lsls r0, r0, #3
	cmp r2, r0
	bls _080210EE
	ldr r3, _08021130
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080210EE:
	movs r0, #0xbe
	lsls r0, r0, #7
	cmp r2, r0
	bls _080210FE
	ldr r2, _08021134
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080210FE:
	adds r2, r1, #0
	lsrs r1, r2, #8
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0xff
	ands r0, r2
	cmp r0, #0x3f
	bls _0802111C
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802111C:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08021120: .4byte 0x0000813F
_08021124: .4byte 0x00008140
_08021128: .4byte 0x00007EC0
_0802112C: .4byte 0xFFFFFE00
_08021130: .4byte 0xFFFFFF00
_08021134: .4byte 0xFFFFC000

	THUMB_FUNC_START sub_8021138
sub_8021138: @ 0x08021138
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r8, r1
	lsls r2, r2, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r2
	lsrs r6, r0, #0x10
	movs r1, #0
	movs r0, #0x80
	mov sb, r0
_08021154:
	ldrb r2, [r7]
	adds r7, #1
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	movs r4, #0
	movs r3, #0
	adds r1, #1
	mov ip, r1
_08021164:
	adds r0, r2, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	muls r0, r6, r0
	lsls r1, r3, #3
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08021164
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	stm r0!, {r4}
	movs r4, #0
	movs r3, #0
	movs r5, #0x80
_08021194:
	adds r0, r2, #0
	ands r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	muls r0, r6, r0
	lsls r1, r3, #3
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08021194
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r4}
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _08021154
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80211D4
sub_80211D4: @ 0x080211D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r1, #0
	movs r0, #0
_080211E2:
	movs r4, #0
	adds r0, #1
	mov ip, r0
_080211E8:
	movs r1, #0
	movs r3, #0
	adds r7, r6, #0
	adds r7, #8
	adds r4, #1
_080211F2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080211F2
	str r1, [r6]
	movs r1, #0
	movs r3, #0
_08021202:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08021202
	str r1, [r6, #4]
	adds r6, r7, #0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080211E8
	adds r6, #0x40
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080211E2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8021234
sub_8021234: @ 0x08021234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x16
	ands r0, r2
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bne _08021258
	b _08021384
_08021258:
	cmp r0, r1
	ble _0802125E
	b _080214AC
_0802125E:
	cmp r0, #0
	beq _08021264
	b _080214AC
_08021264:
	movs r0, #0
	mov ip, r0
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	mov sl, r2
	ldrh r3, [r3, #6]
	str r3, [sp, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	mov r8, r2
	lsls r0, r0, #5
	str r0, [sp]
	lsls r1, r1, #5
	mov sb, r1
_08021282:
	ldrb r1, [r5]
	lsls r1, r1, #8
	ldrb r0, [r5, #1]
	orrs r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	movs r4, #0
	movs r3, #0
_08021292:
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08021292
	ldr r1, [sp]
	adds r0, r1, r6
	str r4, [r0]
	movs r4, #0
	movs r3, #0
	movs r7, #0x80
	lsls r7, r7, #8
_080212BE:
	adds r0, r2, #0
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080212BE
	mov r2, sb
	adds r0, r2, r6
	str r4, [r0]
	adds r5, #2
	adds r6, #4
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #7
	bls _08021282
	subs r6, #0x20
	movs r0, #0
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #8
	mov sb, r1
	mov r2, sl
	lsls r2, r2, #5
	str r2, [sp, #4]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #5
	mov sl, r0
_0802130A:
	ldrb r1, [r5]
	lsls r1, r1, #8
	ldrb r0, [r5, #1]
	orrs r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	movs r4, #0
	movs r3, #0
	adds r7, r5, #2
	adds r1, r6, #4
	mov r8, r1
	movs r0, #1
	add ip, r0
_08021324:
	adds r0, r2, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08021324
	ldr r1, [sp, #4]
	adds r0, r1, r6
	str r4, [r0]
	movs r4, #0
	movs r3, #0
	movs r5, #0x80
	lsls r5, r5, #8
_08021350:
	adds r0, r2, #0
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08021350
	mov r2, sl
	adds r0, r2, r6
	str r4, [r0]
	adds r5, r7, #0
	mov r6, r8
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _0802130A
	b _080214AC
_08021384:
	movs r2, #0
	mov ip, r2
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	mov sl, r2
	ldrh r3, [r3, #6]
	str r3, [sp, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	mov sb, r2
	lsls r0, r0, #5
	adds r7, r6, r0
	lsls r1, r1, #5
	str r1, [sp, #8]
_080213A2:
	ldrb r1, [r5]
	lsls r1, r1, #8
	ldrb r0, [r5, #1]
	orrs r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	ldr r4, [r7]
	movs r3, #4
_080213B2:
	adds r0, r2, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080213B2
	str r4, [r7]
	movs r4, #0
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r8, r0
_080213DC:
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080213DC
	ldr r2, [sp, #8]
	adds r0, r2, r6
	str r4, [r0]
	adds r5, #2
	adds r7, #4
	adds r6, #4
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #7
	bls _080213A2
	subs r6, #0x20
	movs r0, #0
	mov ip, r0
	mov r1, sl
	lsls r1, r1, #5
	mov sb, r1
	movs r2, #0x80
	lsls r2, r2, #8
	mov sl, r2
	ldr r0, [sp, #0x10]
	lsls r0, r0, #5
	str r0, [sp, #0xc]
_0802142C:
	ldrb r0, [r5]
	lsls r0, r0, #8
	ldrb r1, [r5, #1]
	orrs r1, r0
	lsls r1, r1, #0x11
	lsrs r2, r1, #0x10
	mov r1, sb
	adds r0, r1, r6
	ldr r4, [r0]
	movs r3, #4
	adds r7, r5, #2
	adds r0, r6, #4
	mov r8, r0
	movs r1, #1
	add ip, r1
_0802144A:
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802144A
	mov r0, sb
	adds r1, r0, r6
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	movs r4, #0
	movs r3, #0
	movs r5, #0x80
	lsls r5, r5, #8
_0802147A:
	adds r0, r2, #0
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802147A
	ldr r1, [sp, #0xc]
	adds r0, r1, r6
	str r4, [r0]
	adds r5, r7, #0
	mov r6, r8
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _0802142C
_080214AC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80214BC
sub_80214BC: @ 0x080214BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080214F0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_802152C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080214F0: .4byte 0x08DF1C2A

	THUMB_FUNC_START sub_80214F4
sub_80214F4: @ 0x080214F4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08021528
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_8021138
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021528: .4byte 0x08DF1C2A

	THUMB_FUNC_START sub_802152C
sub_802152C: @ 0x0802152C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r0, #0x80
	mov r8, r0
_0802153C:
	ldrb r2, [r6]
	adds r6, #1
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	movs r4, #0
	movs r3, #0
	adds r7, r5, #4
	adds r1, #1
	mov ip, r1
_0802154E:
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802154E
	str r4, [r5]
	adds r5, r7, #0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0802153C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8021584
sub_8021584: @ 0x08021584
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080215B8
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80215F4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080215B8: .4byte 0x08DF3C00

	THUMB_FUNC_START sub_80215BC
sub_80215BC: @ 0x080215BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080215F0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80211D4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080215F0: .4byte 0x08DF3C00

	THUMB_FUNC_START sub_80215F4
sub_80215F4: @ 0x080215F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r0, #0
	movs r1, #0x80
	mov sb, r1
_08021606:
	movs r1, #0
	adds r0, #1
	mov r8, r0
_0802160C:
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	movs r6, #0
	movs r3, #0
	adds r4, #1
	adds r5, r7, #4
	adds r1, #1
	mov ip, r1
_0802161E:
	adds r0, r2, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r6, r0
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802161E
	str r6, [r7]
	adds r7, r5, #0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0802160C
	adds r7, #0x20
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08021606
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8021664
sub_8021664: @ 0x08021664
	adds r2, r0, #0
	ldr r1, [r2]
	movs r3, #0
_0802166A:
	ldr r0, [r2, #4]
	lsls r1, r1, #4
	bics r1, r0
	lsls r1, r1, #1
	orrs r1, r0
	str r1, [r2, #4]
	adds r1, r0, #0
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _0802166A
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8021688
sub_8021688: @ 0x08021688
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3]
	movs r4, #0
_08021690:
	lsls r2, r2, #4
	ldr r1, [r3, #4]
	bics r2, r1
	lsls r0, r2, #1
	orrs r0, r1
	str r0, [r3, #4]
	adds r2, r1, #0
	adds r3, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08021690
	adds r3, #0x20
	movs r4, #0
_080216AE:
	lsls r2, r2, #4
	ldr r1, [r3, #4]
	bics r2, r1
	lsls r0, r2, #1
	orrs r0, r1
	str r0, [r3, #4]
	adds r2, r1, #0
	adds r3, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080216AE
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80216D0
sub_80216D0: @ 0x080216D0
	adds r2, r0, #0
	movs r3, #0
_080216D4:
	ldr r0, [r2]
	lsls r1, r0, #4
	orrs r0, r1
	stm r2!, {r0}
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _080216D4
	bx lr
	.byte 0xF0, 0xB5, 0x06, 0x1C, 0x14, 0x1C, 0x1D, 0x1C
	.byte 0x09, 0x04, 0x09, 0x0C, 0x24, 0x04, 0x24, 0x0C, 0xFF, 0x20, 0x08, 0x40, 0x00, 0x02, 0x09, 0x0A
	.byte 0x08, 0x43, 0xFF, 0xF7, 0xD9, 0xFC, 0x38, 0x1C, 0x31, 0x1C, 0x22, 0x1C, 0x2B, 0x1C, 0xFF, 0xF7
	.byte 0x91, 0xFD, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8021718
sub_8021718: @ 0x08021718
	push {r4, lr}
	sub sp, #0xc
	bl sub_8021B80
	bl sub_802183C
_08021724:
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_8041104
	cmp r4, #0
	bne _08021744
	ldr r0, _08021740
	ldrb r0, [r0, #1]
	bl sub_8041D60
	b _0802174A
	.align 2, 0
_08021740: .4byte 0x020241F0
_08021744:
	movs r0, #1
	bl sub_8041D60
_0802174A:
	bl sub_8057808
	bl sub_804078C
	bl sub_8008220
	bl sub_8040FDC
	mov r0, sp
	bl sub_8021A14
	cmp r4, #0
	bne _0802176E
	mov r0, sp
	strb r4, [r0, #8]
	bl sub_80219E4
	b _08021772
_0802176E:
	bl sub_8021A24
_08021772:
	movs r0, #0
	bl sub_8040524
	bl sub_8045374
	adds r0, r4, #0
	bl sub_804004C
	ldr r0, _080217CC
	bl sub_8043528
	cmp r0, #0
	ble _080217A4
	adds r0, r4, #0
	bl sub_8043CE4
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08021830
	movs r0, #0x3b
	bl sub_8034F60
_080217A4:
	bl sub_8041104
	adds r0, r4, #0
	bl sub_80205D4
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08021830
	bl sub_802549C
	bl sub_802703C
	cmp r4, #0
	bne _080217D0
	bl sub_8040A40
	b _080217D4
	.align 2, 0
_080217CC: .4byte 0x02024020
_080217D0:
	bl sub_8019D84
_080217D4:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08021830
	bl sub_8026278
	movs r0, #2
	bl sub_804060C
	bl sub_80254F8
	bl sub_805872C
	ldr r3, _0802182C
	ldr r2, [r3]
	ldrb r1, [r2, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802180A
	movs r4, #5
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #2]
_0802180A:
	ldr r0, [r3]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0802181C
	movs r0, #0
	bl sub_804075C
_0802181C:
	movs r0, #2
	bl sub_8040584
	movs r0, #4
	bl sub_8040584
	b _08021724
	.align 2, 0
_0802182C: .4byte 0x02023FC0
_08021830:
	bl sub_8021AD4
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802183C
sub_802183C: @ 0x0802183C
	push {r4, r5, r6, lr}
	movs r0, #0
	bl sub_80452D4
	bl sub_8021B10
	ldr r4, _080218D4
	ldr r2, _080218D8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0x30
	ldr r0, [r0]
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #2
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #0x24]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #0x26]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #0x28]
	strh r0, [r4, #0x10]
	bl sub_8043DD8
	movs r0, #0
	movs r1, #0
	bl sub_8043E14
	ldrh r1, [r4, #0x12]
	movs r0, #1
	bl sub_8043E14
	movs r4, #0
_080218B0:
	adds r0, r4, #0
	bl sub_8043D6C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080218B0
	movs r0, #0
	movs r1, #1
	bl sub_8056258
	adds r1, r0, #0
	cmp r1, #0
	bne _080218E0
	ldr r0, _080218DC
	strb r1, [r0]
	b _080218E6
	.align 2, 0
_080218D4: .4byte 0x02021D10
_080218D8: .4byte 0x08E00B30
_080218DC: .4byte 0x020245A8
_080218E0:
	ldr r1, _0802190C
	movs r0, #1
	strb r0, [r1]
_080218E6:
	bl sub_803FD60
	bl sub_8048C60
	bl sub_80254DC
	ldr r1, _08021910
	movs r0, #0
	strb r0, [r1]
	bl sub_8041090
	ldr r0, _08021914
	ldrh r0, [r0, #0xc]
	bl sub_8034F60
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802190C: .4byte 0x020245A8
_08021910: .4byte 0x02021C08
_08021914: .4byte 0x02021D10

	THUMB_FUNC_START sub_8021918
sub_8021918: @ 0x08021918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	ldr r1, _080219D4
	mov sl, r1
	movs r6, #0x1f
	movs r7, #0x1f
	movs r5, #0x20
	rsbs r5, r5, #0
	mov sb, r5
	ldr r1, _080219D8
	mov r8, r1
_08021938:
	movs r4, #0
	adds r0, #1
	str r0, [sp]
_0802193E:
	lsls r0, r4, #1
	mov r5, sl
	adds r2, r0, r5
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _08021960
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08021960:
	ldrh r3, [r2]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08021984
	ldr r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	subs r0, #1
	ands r0, r7
	lsls r0, r0, #5
	ldr r5, _080219DC
	adds r1, r5, #0
	ands r1, r3
	orrs r1, r0
	strh r1, [r2]
_08021984:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _080219A6
	ldr r0, [r2]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	subs r0, #1
	ands r0, r6
	lsls r0, r0, #2
	movs r5, #0x7d
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #1]
_080219A6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	bls _0802193E
	ldr r0, _080219E0
	bl sub_80081DC
	bl sub_8008220
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08021938
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080219D4: .4byte 0x02000000
_080219D8: .4byte 0x000001FF
_080219DC: .4byte 0xFFFFFC1F
_080219E0: .4byte 0x080454E1

	THUMB_FUNC_START sub_80219E4
sub_80219E4: @ 0x080219E4
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	cmp r0, #0xff
	beq _08021A06
	ldr r1, _08021A10
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
_08021A06:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021A10: .4byte 0x08FA2BAC

	THUMB_FUNC_START sub_8021A14
sub_8021A14: @ 0x08021A14
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #8]
	bx lr

	THUMB_FUNC_START sub_8021A24
sub_8021A24: @ 0x08021A24
	push {lr}
	sub sp, #4
	bl sub_8021A54
	ldr r1, _08021A4C
	ldr r0, _08021A50
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_8041C94
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08021A4C: .4byte 0x08FA2C14
_08021A50: .4byte 0x02021D10

	THUMB_FUNC_START sub_8021A54
sub_8021A54: @ 0x08021A54
	push {r4, lr}
	sub sp, #4
	ldr r0, _08021A84
	ldrh r2, [r0, #0x30]
	ldr r1, _08021A88
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r4, sp
	mov r0, sp
	bl sub_8021A8C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08021A7A
	ldrh r0, [r4, #2]
	bl sub_8034F60
_08021A7A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021A84: .4byte 0x02021D10
_08021A88: .4byte 0xFFFF0000

	THUMB_FUNC_START sub_8021A8C
sub_8021A8C: @ 0x08021A8C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _08021AB4
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _08021AC8
	adds r6, r5, #0
	ldrh r4, [r3]
_08021AA0:
	lsls r0, r2, #2
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r4
	bne _08021AB8
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	movs r0, #1
	b _08021ACC
	.align 2, 0
_08021AB4: .4byte 0x080C180C
_08021AB8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021AA0
_08021AC8:
	movs r0, #0
	strh r0, [r3, #2]
_08021ACC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8021AD4
sub_8021AD4: @ 0x08021AD4
	push {lr}
	ldr r0, _08021AE8
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _08021AF0
	ldr r0, _08021AEC
	adds r0, #0x2b
	movs r1, #1
	b _08021AF6
	.align 2, 0
_08021AE8: .4byte 0x02021DB8
_08021AEC: .4byte 0x02021D10
_08021AF0:
	ldr r0, _08021B0C
	adds r0, #0x2b
	movs r1, #2
_08021AF6:
	strb r1, [r0]
	bl sub_801FF70
	movs r0, #2
	bl sub_8035020
	bl sub_8021918
	pop {r0}
	bx r0
	.align 2, 0
_08021B0C: .4byte 0x02021D10

	THUMB_FUNC_START sub_8021B10
sub_8021B10: @ 0x08021B10
	push {r4, lr}
	ldr r2, _08021B78
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	strh r0, [r2, #0xc]
	movs r1, #0
	mov ip, r2
	ldr r4, _08021B7C
	mov r3, ip
	adds r3, #0x14
	movs r2, #0
_08021B2A:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08021B2A
	movs r0, #0
	mov r1, ip
	str r0, [r1, #8]
	adds r1, #0x2a
	strb r0, [r1]
	adds r1, #1
	movs r3, #2
	movs r0, #2
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x2c
	ldrb r1, [r2]
	subs r0, #4
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x30
	ldr r0, [r4]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021B78: .4byte 0x02021D10
_08021B7C: .4byte 0x08E00B30

	THUMB_FUNC_START sub_8021B80
sub_8021B80: @ 0x08021B80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r2, #0
	ldr r5, _08021C7C
	ldr r4, _08021C80
	movs r3, #0x80
	lsls r3, r3, #5
_08021B96:
	lsls r0, r2, #3
	adds r0, r0, r4
	ldr r1, [r0]
	orrs r1, r3
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x7f
	bls _08021B96
	adds r0, r5, #0
	bl sub_80081DC
	bl sub_8008220
	movs r2, #0
	movs r7, #0x1f
	movs r0, #0x1f
	mov r8, r0
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sl, r1
	ldr r6, _08021C84
	mov sb, r6
_08021BC6:
	movs r4, #0
	adds r0, r2, #1
	str r0, [sp]
	lsrs r5, r2, #1
_08021BCE:
	lsls r0, r4, #1
	ldr r1, _08021C88
	adds r2, r0, r1
	ldrb r3, [r2]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08021BF0
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r7
	mov r0, sl
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08021BF0:
	ldrh r3, [r2]
	movs r6, #0xf8
	lsls r6, r6, #2
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08021C16
	ldr r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	subs r0, #1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldr r6, _08021C8C
	adds r1, r6, #0
	ands r1, r3
	orrs r1, r0
	strh r1, [r2]
_08021C16:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _08021C38
	ldr r0, [r2]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	subs r0, #1
	ands r0, r7
	lsls r0, r0, #2
	movs r6, #0x7d
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #1]
_08021C38:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, sb
	bls _08021BCE
	ldr r0, _08021C90
	bl sub_80081DC
	bl sub_8008220
	bl sub_08021CDC
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08021C94
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08021BC6
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021C7C: .4byte 0x08021C99
_08021C80: .4byte 0x02018400
_08021C84: .4byte 0x000001FF
_08021C88: .4byte 0x02000000
_08021C8C: .4byte 0xFFFFFC1F
_08021C90: .4byte 0x08021CD1
_08021C94: .4byte 0x0400004C

	THUMB_FUNC_START sub_8021C98
sub_8021C98: @ 0x08021C98
	push {lr}
	bl sub_80454C8
	ldr r1, _08021CCC
	movs r0, #0
	strh r0, [r1]
	subs r1, #0x44
	ldrh r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08021CCC: .4byte 0x0400004C

	THUMB_FUNC_START sub_8021CD0
sub_8021CD0: @ 0x08021CD0
	push {lr}
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_08021CDC
sub_08021CDC: @ 0x08021CDC
	bx lr
	.byte 0x00, 0x00
	.byte 0x00, 0xB5, 0x00, 0xF0, 0x0B, 0xF8, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x03, 0xD1, 0xFF, 0xF7
	.byte 0x13, 0xFD, 0x2D, 0xF0, 0x09, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8021CFC
sub_8021CFC: @ 0x08021CFC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_8021D00
sub_8021D00: @ 0x08021D00
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardData
	ldr r1, _08021D18
	ldr r0, _08021D1C
	ldrb r0, [r0, #0x1d]
	adds r0, r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08021D18: .4byte 0x080C1824
_08021D1C: .4byte 0x02021AD0

	THUMB_FUNC_START sub_8021D20
sub_8021D20: @ 0x08021D20
	push {r4, r5, lr}
	sub sp, #0xc
	bl sub_8021FF8
	ldr r0, _08021D68
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021DFA
	movs r0, #2
	bl sub_8035038
	movs r0, #0xd5
	bl sub_8034F60
	bl sub_8021B80
	bl sub_8022040
	mov r5, sp
_08021D48:
	bl sub_8058744
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_8041104
	mov r0, sp
	bl sub_80240BC
	cmp r4, #0
	bne _08021D6C
	strb r4, [r5, #8]
	mov r0, sp
	bl sub_802405C
	b _08021D76
	.align 2, 0
_08021D68: .4byte 0x03000C38
_08021D6C:
	movs r0, #0x17
	strb r0, [r5, #8]
	mov r0, sp
	bl sub_802405C
_08021D76:
	bl sub_8022080
	movs r0, #0
	bl sub_8040524
	bl sub_8045374
	adds r0, r4, #0
	bl sub_804004C
	cmp r4, #0
	bne _08021D94
	bl sub_8021E0C
	b _08021D98
_08021D94:
	bl sub_8021ED8
_08021D98:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08021DF6
	bl sub_8026278
	movs r0, #2
	bl sub_804060C
	bl sub_80254F8
	bl sub_805872C
	ldr r3, _08021E04
	ldr r2, [r3]
	ldrb r1, [r2, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08021DCE
	movs r4, #5
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #2]
_08021DCE:
	ldr r0, [r3]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08021DE0
	movs r0, #0
	bl sub_804075C
_08021DE0:
	movs r0, #2
	bl sub_8040584
	movs r0, #4
	bl sub_8040584
	ldr r0, _08021E08
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021D48
_08021DF6:
	bl sub_8022068
_08021DFA:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021E04: .4byte 0x02023FC0
_08021E08: .4byte 0x03000C38

	THUMB_FUNC_START sub_8021E0C
sub_8021E0C: @ 0x08021E0C
	push {r4, lr}
	sub sp, #0xc
	ldr r4, _08021E60
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08021E64
	bl sub_8043528
	cmp r0, #0
	ble _08021E72
	movs r0, #0
	bl sub_8043CE4
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08021E6C
	ldr r1, _08021E68
	movs r0, #3
	strb r0, [r1]
	bl sub_8024548
	mov r0, sp
	bl sub_80240BC
	mov r1, sp
	movs r0, #0x18
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_802408C
	adds r4, #0x34
_08021E54:
	bl sub_8024354
	ldrb r0, [r4]
	cmp r0, #0
	bne _08021E54
	b _08021EC6
	.align 2, 0
_08021E60: .4byte 0x03000C38
_08021E64: .4byte 0x02024020
_08021E68: .4byte 0x02021D98
_08021E6C:
	movs r0, #0x3b
	bl sub_8034F60
_08021E72:
	bl sub_8041104
	bl sub_80205D4
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08021EC6
	bl sub_802549C
	bl sub_802703C
	bl sub_8040A40
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08021EC6
	ldr r1, _08021ED0
	movs r0, #3
	strb r0, [r1]
	bl sub_8024548
	mov r0, sp
	bl sub_80240BC
	mov r1, sp
	movs r0, #0x18
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_802408C
	ldr r4, _08021ED4
_08021EBC:
	bl sub_8024354
	ldrb r0, [r4]
	cmp r0, #0
	bne _08021EBC
_08021EC6:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021ED0: .4byte 0x02021D98
_08021ED4: .4byte 0x03000C6C

	THUMB_FUNC_START sub_8021ED8
sub_8021ED8: @ 0x08021ED8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _08021F1C
	ldr r6, [r0]
	ldr r7, [r0, #4]
	movs r4, #0
	ldr r1, _08021F20
	adds r2, r1, #0
	adds r2, #0x32
	movs r0, #1
	strb r0, [r2]
	adds r5, r1, #0
	adds r5, #0x34
	ldr r0, _08021F24
	mov r8, r0
_08021EFA:
	bl sub_8024354
	ldrb r0, [r5]
	cmp r0, #0
	bne _08021EFA
	bl sub_8024568
	ldr r0, _08021F28
	ldrb r0, [r0]
	cmp r0, #4
	beq _08021F36
	cmp r0, #4
	bgt _08021F2C
	cmp r0, #3
	beq _08021F32
	b _08021F50
	.align 2, 0
_08021F1C: .4byte 0x020241F0
_08021F20: .4byte 0x03000C38
_08021F24: .4byte 0x02023FB0
_08021F28: .4byte 0x02021D9C
_08021F2C:
	cmp r0, #5
	beq _08021F44
	b _08021F50
_08021F32:
	movs r4, #1
	b _08021F50
_08021F36:
	bl sub_801B66C
	bl sub_80410B4
	bl sub_8022080
	b _08021F50
_08021F44:
	mov r1, r8
	ldrb r0, [r1]
	bl sub_8041140
	bl sub_801CF08
_08021F50:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08021F5E
	movs r4, #1
_08021F5E:
	cmp r4, #1
	bne _08021EFA
	ldr r0, _08021F7C
	str r6, [r0]
	str r7, [r0, #4]
	ldrb r0, [r0, #1]
	bl sub_8041D60
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021F7C: .4byte 0x020241F0
	.byte 0x70, 0xB5, 0x83, 0xB0, 0x08, 0x48, 0x00, 0x78, 0x06, 0x28, 0x30, 0xD1, 0x68, 0x46, 0x02, 0xF0
	.byte 0x95, 0xF8, 0x69, 0x46, 0x18, 0x20, 0x08, 0x72, 0x68, 0x46, 0x02, 0xF0, 0x77, 0xF8, 0x1E, 0x24
	.byte 0x02, 0x4E, 0x6D, 0x46, 0x18, 0xE0, 0x00, 0x00, 0xFC, 0x41, 0x02, 0x02, 0x6C, 0x0C, 0x00, 0x03
	.byte 0x01, 0x3C, 0x00, 0x2C, 0x10, 0xD1, 0x68, 0x46, 0x02, 0xF0, 0x80, 0xF8, 0x19, 0x20, 0x28, 0x72
	.byte 0x68, 0x46, 0x02, 0xF0, 0x4B, 0xF8, 0x68, 0x46, 0x02, 0xF0, 0x78, 0xF8, 0x18, 0x20, 0x28, 0x72
	.byte 0x68, 0x46, 0x02, 0xF0, 0x5B, 0xF8, 0x1E, 0x24, 0x02, 0xF0, 0xA8, 0xF9, 0x30, 0x78, 0x00, 0x28
	.byte 0xE6, 0xD1, 0x36, 0xF0, 0xAF, 0xFB, 0x00, 0x28, 0x01, 0xD1, 0x1F, 0xF0, 0xB3, 0xFE, 0x03, 0xB0
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8021FF8
sub_8021FF8: @ 0x08021FF8
	push {lr}
	movs r0, #6
	bl sub_80452D4
	bl sub_803276C
	bl sub_8022234
	bl sub_80240CC
	ldr r0, _0802202C
	adds r3, r0, #0
	adds r3, #0x34
	ldrb r0, [r3]
	cmp r0, #0
	bne _0802203C
	ldr r0, _08022030
	ldr r1, _08022034
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	beq _08022038
	movs r0, #0xfe
	strb r0, [r3]
	b _0802203C
	.align 2, 0
_0802202C: .4byte 0x03000C38
_08022030: .4byte 0x02021DA0
_08022034: .4byte 0x02021D70
_08022038:
	bl sub_802417C
_0802203C:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022040
sub_8022040: @ 0x08022040
	push {lr}
	bl sub_80222EC
	bl sub_8041090
	ldr r0, _08022060
	ldrh r0, [r0, #0xc]
	bl sub_8034F60
	bl sub_8041104
	ldr r1, _08022064
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08022060: .4byte 0x02021D10
_08022064: .4byte 0x02021C08

	THUMB_FUNC_START sub_8022068
sub_8022068: @ 0x08022068
	push {lr}
	bl sub_8022318
	bl sub_8022214
	movs r0, #1
	bl sub_8035020
	bl sub_8022340
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022080
sub_8022080: @ 0x08022080
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _080220C0
	ldrb r0, [r0]
	cmp r0, #6
	bne _080220B6
	mov r0, sp
	bl sub_80240BC
	mov r1, sp
	movs r0, #0x18
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_802408C
	ldr r4, _080220C4
_080220A0:
	bl sub_802432C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080220A0
	bl sub_8058744
	cmp r0, #0
	bne _080220B6
	bl sub_8041D54
_080220B6:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080220C0: .4byte 0x020241FC
_080220C4: .4byte 0x03000C6C

	THUMB_FUNC_START sub_80220C8
sub_80220C8: @ 0x080220C8
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _080220FC
	ldr r0, [r0, #8]
	bl sub_801D6D0
	bl sub_800AD4C
	movs r0, #4
	bl sub_8035020
	ldr r0, _08022100
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08022104
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x13
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
	b _08022128
	.align 2, 0
_080220FC: .4byte 0x02021D10
_08022100: .4byte 0x02024258
_08022104:
	movs r0, #1
	bl sub_8043E70
	adds r4, r0, #0
	movs r0, #1
	bl sub_8043E9C
	cmp r4, r0
	bge _08022128
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x15
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_08022128:
	ldr r4, _0802216C
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08022164
	ldrh r0, [r4, #0xe]
	bl sub_8034F60
	mov r0, sp
	bl sub_8021A14
	mov r0, sp
	strb r5, [r0, #8]
	bl sub_80219E4
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #6
	strb r0, [r1, #8]
	ldr r0, [r4, #8]
	strh r0, [r1, #4]
	mov r0, sp
	bl sub_80219E4
_08022164:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802216C: .4byte 0x02021D10

	THUMB_FUNC_START sub_8022170
sub_8022170: @ 0x08022170
	push {r4, lr}
	sub sp, #0xc
	movs r0, #5
	bl sub_801D6D0
	bl sub_800AD4C
	movs r0, #4
	bl sub_8035020
	ldr r0, _080221A0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080221A4
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x14
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
	b _080221C8
	.align 2, 0
_080221A0: .4byte 0x02024258
_080221A4:
	movs r0, #0
	bl sub_8043E70
	adds r4, r0, #0
	movs r0, #0
	bl sub_8043E9C
	cmp r4, r0
	bge _080221C8
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x16
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_080221C8:
	ldr r2, _08022210
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08022206
	ldrh r0, [r2, #0x10]
	bl sub_8034F60
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #3
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #6
	strb r0, [r1, #8]
	movs r0, #5
	strh r0, [r1, #4]
	mov r0, sp
	bl sub_80219E4
_08022206:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022210: .4byte 0x02021D10

	THUMB_FUNC_START sub_8022214
sub_8022214: @ 0x08022214
	push {lr}
	ldr r0, _08022228
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802222C
	bl sub_80220C8
	b _08022230
	.align 2, 0
_08022228: .4byte 0x02021D10
_0802222C:
	bl sub_8022170
_08022230:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022234
sub_8022234: @ 0x08022234
	push {r4, r5, lr}
	movs r1, #0
	ldr r0, _080222D8
	mov ip, r0
	ldr r4, _080222DC
	ldr r5, _080222E0
	ldr r3, _080222E4
	movs r2, #0
_08022244:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #8
	bls _08022244
	movs r1, #0
	ldr r0, _080222D8
	movs r2, #0
	adds r0, #0x14
_08022256:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #9
	bls _08022256
	movs r0, #0
	movs r1, #0
	mov r2, ip
	str r0, [r2]
	str r1, [r2, #4]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0x12]
	ldrh r0, [r4]
	strh r0, [r2, #0x28]
	movs r0, #0xa
	str r0, [r2, #8]
	mov r0, ip
	adds r0, #0x2a
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x2b
	movs r3, #2
	movs r0, #2
	strb r0, [r1]
	adds r2, #0x2c
	ldrb r1, [r2]
	subs r0, #4
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x30
	ldr r0, [r5]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r0, #0xfa
	lsls r0, r0, #1
	mov r1, ip
	strh r0, [r1, #0xc]
	movs r0, #0x2b
	strh r0, [r1, #0xe]
	movs r0, #0x2c
	strh r0, [r1, #0x10]
	bl sub_8043DD8
	ldr r1, _080222E8
	movs r0, #0
	bl sub_8043E44
	movs r0, #0
	bl sub_8043D6C
	bl sub_8058720
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080222D8: .4byte 0x02021D10
_080222DC: .4byte 0x02021B04
_080222E0: .4byte 0x08E00B30
_080222E4: .4byte 0x02021D80
_080222E8: .4byte 0x02021C3A

	THUMB_FUNC_START sub_80222EC
sub_80222EC: @ 0x080222EC
	push {r4, lr}
	bl sub_80254DC
	ldr r4, _08022314
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r1, [r0]
	movs r0, #0
	bl sub_8048CA8
	adds r4, #0x46
	ldrh r1, [r4]
	movs r0, #1
	bl sub_8048CA8
	bl sub_803FD60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022314: .4byte 0x02021D10

	THUMB_FUNC_START sub_8022318
sub_8022318: @ 0x08022318
	ldr r0, _08022328
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _08022330
	ldr r0, _0802232C
	adds r0, #0x2b
	movs r1, #1
	b _08022336
	.align 2, 0
_08022328: .4byte 0x02021DB8
_0802232C: .4byte 0x02021D10
_08022330:
	ldr r0, _0802233C
	adds r0, #0x2b
	movs r1, #2
_08022336:
	strb r1, [r0]
	bx lr
	.align 2, 0
_0802233C: .4byte 0x02021D10

	THUMB_FUNC_START sub_8022340
sub_8022340: @ 0x08022340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	ldr r1, _080223FC
	mov sl, r1
	movs r6, #0x1f
	movs r7, #0x1f
	movs r5, #0x20
	rsbs r5, r5, #0
	mov sb, r5
	ldr r1, _08022400
	mov r8, r1
_08022360:
	movs r4, #0
	adds r0, #1
	str r0, [sp]
_08022366:
	lsls r0, r4, #1
	mov r5, sl
	adds r2, r0, r5
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _08022388
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08022388:
	ldrh r3, [r2]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080223AC
	ldr r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	subs r0, #1
	ands r0, r7
	lsls r0, r0, #5
	ldr r5, _08022404
	adds r1, r5, #0
	ands r1, r3
	orrs r1, r0
	strh r1, [r2]
_080223AC:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _080223CE
	ldr r0, [r2]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	subs r0, #1
	ands r0, r6
	lsls r0, r0, #2
	movs r5, #0x7d
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #1]
_080223CE:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	bls _08022366
	ldr r0, _08022408
	bl sub_80081DC
	bl sub_8008220
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08022360
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080223FC: .4byte 0x02000000
_08022400: .4byte 0x000001FF
_08022404: .4byte 0xFFFFFC1F
_08022408: .4byte 0x080454E1

	THUMB_FUNC_START sub_802240C
sub_802240C: @ 0x0802240C
	push {r4, lr}
	movs r0, #0x2f
	bl sub_8034F60
	bl sub_8008F24
	bl sub_801DA20
	bl sub_8022A24
	ldr r4, _08022430
	ldr r0, [r4, #4]
	bl sub_8022C10
	bl sub_8023998
	b _080225B0
	.align 2, 0
_08022430: .4byte 0x02021DA0
_08022434:
	cmp r0, #2
	bne _08022450
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8008548
	movs r0, #0
	bl sub_8022B7C
	bl sub_8022A24
	movs r0, #0
	b _08022522
_08022450:
	cmp r0, #3
	bne _08022486
	bl sub_801D3FC
	cmp r0, #1
	beq _0802246E
	movs r0, #0
	bl sub_8022B7C
	movs r0, #0x39
	bl sub_8034F60
	bl sub_80226D8
	b _080225B0
_0802246E:
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801D1C0
	movs r0, #0
	bl sub_8022B7C
	bl sub_8022A24
	movs r0, #1
	b _08022522
_08022486:
	cmp r0, #4
	bne _0802252C
	bl sub_801DBBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08022498
	b _080225C8
_08022498:
	bl sub_801DBE4
	cmp r0, #1
	beq _080224A2
	b _080225E6
_080224A2:
	bl sub_801DB58
	ldr r1, [r4]
	cmp r0, r1
	bls _080224C2
	movs r0, #6
	bl sub_8022B7C
	bl sub_8022AA0
	movs r0, #0x39
	bl sub_8034F60
	bl sub_8023B30
	b _080225B0
_080224C2:
	bl sub_8023C14
	bl sub_8021D20
	movs r0, #0x2f
	bl sub_8034F60
	ldr r0, _080224F0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0xfe
	bne _080224F4
	movs r0, #8
	bl sub_8022B7C
	bl sub_8022AA0
	movs r0, #0x39
	bl sub_8034F60
	bl sub_8023B7C
	b _080225B0
	.align 2, 0
_080224F0: .4byte 0x03000C38
_080224F4:
	cmp r0, #0
	beq _0802250E
	movs r0, #9
	bl sub_8022B7C
	bl sub_8022AA0
	movs r0, #0x39
	bl sub_8034F60
	bl sub_8023BC8
	b _080225B0
_0802250E:
	movs r0, #0
	bl sub_8022B7C
	bl sub_8008F24
	bl sub_801DA20
	bl sub_8022A24
	movs r0, #3
_08022522:
	bl sub_8022A94
	bl sub_8023998
	b _080225B0
_0802252C:
	bl sub_8022610
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x10
	beq _08022588
	cmp r1, #0x10
	bgt _08022554
	cmp r1, #2
	beq _080225A0
	cmp r1, #2
	bgt _0802254A
	cmp r1, #1
	beq _0802259A
	b _080225AC
_0802254A:
	cmp r1, #4
	beq _080225A6
	cmp r1, #8
	beq _080225A6
	b _080225AC
_08022554:
	cmp r1, #0x80
	beq _0802257C
	cmp r1, #0x80
	bgt _08022566
	cmp r1, #0x20
	beq _08022582
	cmp r1, #0x40
	beq _08022576
	b _080225AC
_08022566:
	movs r0, #0x88
	lsls r0, r0, #1
	cmp r1, r0
	beq _08022594
	adds r0, #0x10
	cmp r1, r0
	beq _0802258E
	b _080225AC
_08022576:
	bl sub_8022764
	b _080225B0
_0802257C:
	bl sub_8022794
	b _080225B0
_08022582:
	bl sub_80227C4
	b _080225B0
_08022588:
	bl sub_80227F4
	b _080225B0
_0802258E:
	bl sub_8022824
	b _080225B0
_08022594:
	bl sub_8022858
	b _080225B0
_0802259A:
	bl sub_802288C
	b _080225B0
_080225A0:
	bl sub_802293C
	b _080225B0
_080225A6:
	bl sub_8022990
	b _080225B0
_080225AC:
	bl sub_80226D8
_080225B0:
	bl sub_8056208
	ldrb r0, [r4, #9]
	cmp r0, #1
	beq _080225BC
	b _08022434
_080225BC:
	bl sub_801DBBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080225DE
_080225C8:
	movs r0, #5
	bl sub_8022B7C
	bl sub_8022AA0
	movs r0, #0x39
	bl sub_8034F60
	bl sub_8023A98
	b _080225B0
_080225DE:
	bl sub_801DBE4
	cmp r0, #1
	beq _080225FC
_080225E6:
	movs r0, #7
	bl sub_8022B7C
	bl sub_8022AA0
	movs r0, #0x39
	bl sub_8034F60
	bl sub_8023AE4
	b _080225B0
_080225FC:
	bl sub_800AD4C
	movs r0, #0x37
	bl sub_8034F60
	bl sub_80238C4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022610
sub_8022610: @ 0x08022610
	push {lr}
	bl sub_802618C
	ldr r0, _08022628
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802262C
	movs r0, #1
	b _080226D4
	.align 2, 0
_08022628: .4byte 0x02020DFC
_0802262C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08022638
	movs r0, #2
	b _080226D4
_08022638:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08022644
	movs r0, #4
	b _080226D4
_08022644:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022650
	movs r0, #8
	b _080226D4
_08022650:
	ldr r1, _08022664
	ldrh r2, [r1]
	movs r0, #0x40
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _08022668
	movs r0, #0x40
	b _080226D4
	.align 2, 0
_08022664: .4byte 0x02020DF4
_08022668:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08022674
	movs r0, #0x80
	b _080226D4
_08022674:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08022694
	ldr r0, _08022690
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022694
	movs r0, #0x90
	lsls r0, r0, #1
	b _080226D4
	.align 2, 0
_08022690: .4byte gKeyState
_08022694:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080226B8
	ldr r0, _080226B4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080226B8
	movs r0, #0x88
	lsls r0, r0, #1
	b _080226D4
	.align 2, 0
_080226B4: .4byte gKeyState
_080226B8:
	ldrh r1, [r3]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080226C6
	movs r0, #0x20
	b _080226D4
_080226C6:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080226D2
	movs r0, #0
	b _080226D4
_080226D2:
	movs r0, #0x10
_080226D4:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80226D8
sub_80226D8: @ 0x080226D8
	push {lr}
	ldr r0, _080226EC
	ldrb r0, [r0, #9]
	cmp r0, #9
	bhi _0802275C
	lsls r0, r0, #2
	ldr r1, _080226F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080226EC: .4byte 0x02021DA0
_080226F0: .4byte 0x080226F4
_080226F4: @ jump table
	.4byte _0802271C @ case 0
	.4byte _0802275C @ case 1
	.4byte _0802275C @ case 2
	.4byte _0802275C @ case 3
	.4byte _0802275C @ case 4
	.4byte _0802272A @ case 5
	.4byte _08022734 @ case 6
	.4byte _0802273E @ case 7
	.4byte _08022748 @ case 8
	.4byte _08022752 @ case 9
_0802271C:
	bl sub_8022ABC
	bl sub_80229C0
	bl sub_8023A14
	b _08022760
_0802272A:
	bl sub_8022AE0
	bl sub_8023A98
	b _08022760
_08022734:
	bl sub_8022AE0
	bl sub_8023B30
	b _08022760
_0802273E:
	bl sub_8022AE0
	bl sub_8023AE4
	b _08022760
_08022748:
	bl sub_8022AE0
	bl sub_8023B7C
	b _08022760
_08022752:
	bl sub_8022AE0
	bl sub_8023BC8
	b _08022760
_0802275C:
	bl sub_8008220
_08022760:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022764
sub_8022764: @ 0x08022764
	push {lr}
	ldr r0, _08022788
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _0802278C
	bl sub_8022A64
	bl sub_8022ABC
	bl sub_80229C0
	movs r0, #0x36
	bl sub_8034F60
	bl sub_8023A14
	b _08022790
	.align 2, 0
_08022788: .4byte 0x02021DA0
_0802278C:
	bl sub_8008220
_08022790:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022794
sub_8022794: @ 0x08022794
	push {lr}
	ldr r0, _080227B8
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _080227BC
	bl sub_8022A7C
	bl sub_8022ABC
	bl sub_80229C0
	movs r0, #0x36
	bl sub_8034F60
	bl sub_8023A14
	b _080227C0
	.align 2, 0
_080227B8: .4byte 0x02021DA0
_080227BC:
	bl sub_8008220
_080227C0:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80227C4
sub_80227C4: @ 0x080227C4
	push {lr}
	ldr r0, _080227E8
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _080227EC
	movs r0, #0x64
	bl sub_8022BC8
	bl sub_8022ABC
	bl sub_80229C0
	movs r0, #0x36
	bl sub_8034F60
	bl sub_8023A14
	b _080227F0
	.align 2, 0
_080227E8: .4byte 0x02021DA0
_080227EC:
	bl sub_8008220
_080227F0:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80227F4
sub_80227F4: @ 0x080227F4
	push {lr}
	ldr r0, _08022818
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _0802281C
	movs r0, #0x64
	bl sub_8022BA0
	bl sub_8022ABC
	bl sub_80229C0
	movs r0, #0x36
	bl sub_8034F60
	bl sub_8023A14
	b _08022820
	.align 2, 0
_08022818: .4byte 0x02021DA0
_0802281C:
	bl sub_8008220
_08022820:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022824
sub_8022824: @ 0x08022824
	push {lr}
	ldr r0, _0802284C
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _08022850
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_8022BC8
	bl sub_8022ABC
	bl sub_80229C0
	movs r0, #0x36
	bl sub_8034F60
	bl sub_8023A14
	b _08022854
	.align 2, 0
_0802284C: .4byte 0x02021DA0
_08022850:
	bl sub_8008220
_08022854:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8022858
sub_8022858: @ 0x08022858
	push {lr}
	ldr r0, _08022880
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _08022884
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_8022BA0
	bl sub_8022ABC
	bl sub_80229C0
	movs r0, #0x36
	bl sub_8034F60
	bl sub_8023A14
	b _08022888
	.align 2, 0
_08022880: .4byte 0x02021DA0
_08022884:
	bl sub_8008220
_08022888:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802288C
sub_802288C: @ 0x0802288C
	push {lr}
	ldr r0, _080228B8
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _080228BC
	cmp r0, #0
	blt _080228C2
	cmp r0, #9
	bgt _080228C2
	cmp r0, #5
	blt _080228C2
	movs r0, #0
	bl sub_8022B7C
	bl sub_8022AA0
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8023A44
	b _080228C6
	.align 2, 0
_080228B8: .4byte 0x02021DA0
_080228BC:
	bl sub_80228CC
	b _080228C6
_080228C2:
	bl sub_8008220
_080228C6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80228CC
sub_80228CC: @ 0x080228CC
	push {lr}
	ldr r0, _080228E4
	ldrb r1, [r0, #0xa]
	adds r2, r0, #0
	cmp r1, #4
	bhi _08022932
	lsls r0, r1, #2
	ldr r1, _080228E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080228E4: .4byte 0x02021DA0
_080228E8: .4byte 0x080228EC
_080228EC: @ jump table
	.4byte _08022900 @ case 0
	.4byte _08022904 @ case 1
	.4byte _08022908 @ case 2
	.4byte _0802291E @ case 3
	.4byte _08022922 @ case 4
_08022900:
	movs r0, #2
	b _08022924
_08022904:
	movs r0, #3
	b _08022924
_08022908:
	ldr r0, [r2, #4]
	bl sub_8022C10
	bl sub_8022ABC
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8023A14
	b _08022936
_0802291E:
	movs r0, #4
	b _08022924
_08022922:
	movs r0, #1
_08022924:
	bl sub_8022B7C
	bl sub_8022ABC
	bl sub_8023A14
	b _08022936
_08022932:
	bl sub_8008220
_08022936:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802293C
sub_802293C: @ 0x0802293C
	push {lr}
	ldr r0, _08022968
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0802296C
	cmp r0, #0
	blt _08022986
	cmp r0, #9
	bgt _08022986
	cmp r0, #5
	blt _08022986
	movs r0, #0
	bl sub_8022B7C
	bl sub_8022AA0
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8023A44
	b _0802298A
	.align 2, 0
_08022968: .4byte 0x02021DA0
_0802296C:
	movs r0, #4
	bl sub_8022A94
	bl sub_8022ABC
	bl sub_80229C0
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8023A14
	b _0802298A
_08022986:
	bl sub_8008220
_0802298A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8022990
sub_8022990: @ 0x08022990
	push {lr}
	ldr r0, _080229B0
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _080229B8
	ldr r0, _080229B4
	bl sub_8022BF0
	bl sub_8022ABC
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8023A14
	b _080229BC
	.align 2, 0
_080229B0: .4byte 0x02021DA0
_080229B4: .4byte 0x0000FDE8
_080229B8:
	bl sub_8008220
_080229BC:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80229C0
sub_80229C0: @ 0x080229C0
	ldr r0, _08022A10
	ldrb r1, [r0, #0xe]
	adds r2, r0, #0
	cmp r1, #0
	bne _080229EE
	ldr r1, _08022A14
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	ldr r0, _08022A18
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080229EE
	strb r0, [r2, #0xd]
_080229EE:
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _08022A1C
	ldr r1, _08022A14
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _08022A18
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	b _08022A1E
	.align 2, 0
_08022A10: .4byte 0x02021DA0
_08022A14: .4byte 0x080C1852
_08022A18: .4byte 0x08FC4A8C
_08022A1C:
	subs r0, #1
_08022A1E:
	strb r0, [r2, #0xe]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8022A24
sub_8022A24: @ 0x08022A24
	push {r4, lr}
	bl sub_801DB58
	ldr r4, _08022A58
	str r0, [r4, #4]
	bl GetDeckSize
	movs r1, #0
	strb r0, [r4, #8]
	strb r1, [r4, #0xa]
	strb r1, [r4, #9]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xc]
	ldr r0, _08022A5C
	ldrb r0, [r0]
	strb r1, [r4, #0xd]
	ldr r1, _08022A60
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022A58: .4byte 0x02021DA0
_08022A5C: .4byte 0x080C1852
_08022A60: .4byte 0x08FC4A8C

	THUMB_FUNC_START sub_8022A64
sub_8022A64: @ 0x08022A64
	ldr r2, _08022A74
	ldr r1, _08022A78
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bx lr
	.align 2, 0
_08022A74: .4byte 0x02021DA0
_08022A78: .4byte 0x080C188C

	THUMB_FUNC_START sub_8022A7C
sub_8022A7C: @ 0x08022A7C
	ldr r2, _08022A8C
	ldr r1, _08022A90
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bx lr
	.align 2, 0
_08022A8C: .4byte 0x02021DA0
_08022A90: .4byte 0x080C1891

	THUMB_FUNC_START sub_8022A94
sub_8022A94: @ 0x08022A94
	ldr r1, _08022A9C
	strb r0, [r1, #0xa]
	bx lr
	.align 2, 0
_08022A9C: .4byte 0x02021DA0

	THUMB_FUNC_START sub_8022AA0
sub_8022AA0: @ 0x08022AA0
	ldr r1, _08022AAC
	movs r0, #0
	strb r0, [r1, #0xb]
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08022AAC: .4byte 0x02021DA0
	.byte 0x01, 0x48, 0xC0, 0x7A, 0x70, 0x47, 0x00, 0x00, 0xA0, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_8022ABC
sub_8022ABC: @ 0x08022ABC
	push {lr}
	ldr r2, _08022AD8
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08022AD0
	ldr r0, _08022ADC
	ldrb r1, [r2, #0xb]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0xb]
_08022AD0:
	bl sub_8022B04
	pop {r0}
	bx r0
	.align 2, 0
_08022AD8: .4byte 0x02021DA0
_08022ADC: .4byte 0x080C1857

	THUMB_FUNC_START sub_8022AE0
sub_8022AE0: @ 0x08022AE0
	push {lr}
	ldr r2, _08022AFC
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08022AF4
	ldr r0, _08022B00
	ldrb r1, [r2, #0xb]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0xb]
_08022AF4:
	bl sub_8022B04
	pop {r0}
	bx r0
	.align 2, 0
_08022AFC: .4byte 0x02021DA0
_08022B00: .4byte 0x080C1872

	THUMB_FUNC_START sub_8022B04
sub_8022B04: @ 0x08022B04
	ldr r1, _08022B10
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _08022B14
	movs r0, #3
	b _08022B16
	.align 2, 0
_08022B10: .4byte 0x02021DA0
_08022B14:
	subs r0, #1
_08022B16:
	strb r0, [r1, #0xc]
	bx lr
	.byte 0x00, 0x00, 0x06, 0x49, 0x07, 0x4A
	.byte 0x90, 0x7A, 0x40, 0x18, 0x00, 0x78, 0x00, 0x21, 0x51, 0x73, 0x05, 0x49, 0x80, 0x00, 0x40, 0x18
	.byte 0x00, 0x68, 0x00, 0x78, 0x90, 0x73, 0x70, 0x47, 0x52, 0x18, 0x0C, 0x08, 0xA0, 0x1D, 0x02, 0x02
	.byte 0x8C, 0x4A, 0xFC, 0x08, 0x08, 0x4A, 0x90, 0x7B, 0x00, 0x28, 0x13, 0xD1, 0x07, 0x49, 0x90, 0x7A
	.byte 0x40, 0x18, 0x01, 0x78, 0x06, 0x48, 0x89, 0x00, 0x09, 0x18, 0x50, 0x7B, 0x09, 0x68, 0xC0, 0x00
	.byte 0x40, 0x18, 0x00, 0x78, 0x07, 0xE0, 0x00, 0x00, 0xA0, 0x1D, 0x02, 0x02, 0x52, 0x18, 0x0C, 0x08
	.byte 0x8C, 0x4A, 0xFC, 0x08, 0x01, 0x38, 0x90, 0x73, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8022B7C
sub_8022B7C: @ 0x08022B7C
	ldr r1, _08022B84
	strb r0, [r1, #9]
	bx lr
	.align 2, 0
_08022B84: .4byte 0x02021DA0
	.byte 0x01, 0x48, 0x40, 0x7A, 0x70, 0x47, 0x00, 0x00
	.byte 0xA0, 0x1D, 0x02, 0x02, 0x01, 0x49, 0x64, 0x20, 0x08, 0x60, 0x70, 0x47, 0xA0, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_8022BA0
sub_8022BA0: @ 0x08022BA0
	adds r3, r0, #0
	ldr r2, _08022BB4
	ldr r0, [r2]
	ldr r1, _08022BB8
	cmp r0, r1
	bne _08022BBC
	movs r0, #0x64
	str r0, [r2]
	b _08022BC6
	.align 2, 0
_08022BB4: .4byte 0x02021DA0
_08022BB8: .4byte 0x0000FDE8
_08022BBC:
	adds r0, r0, r3
	str r0, [r2]
	cmp r0, r1
	ble _08022BC6
	str r1, [r2]
_08022BC6:
	bx lr

	THUMB_FUNC_START sub_8022BC8
sub_8022BC8: @ 0x08022BC8
	adds r2, r0, #0
	ldr r1, _08022BD8
	ldr r0, [r1]
	cmp r0, #0x64
	bne _08022BE0
	ldr r0, _08022BDC
	b _08022BEA
	.align 2, 0
_08022BD8: .4byte 0x02021DA0
_08022BDC: .4byte 0x0000FDE8
_08022BE0:
	subs r0, r0, r2
	str r0, [r1]
	cmp r0, #0x63
	bgt _08022BEC
	movs r0, #0x64
_08022BEA:
	str r0, [r1]
_08022BEC:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8022BF0
sub_8022BF0: @ 0x08022BF0
	adds r1, r0, #0
	ldr r0, _08022BFC
	cmp r1, r0
	ble _08022C00
	adds r1, r0, #0
	b _08022C06
	.align 2, 0
_08022BFC: .4byte 0x0000FDE8
_08022C00:
	cmp r1, #0x63
	bgt _08022C06
	movs r1, #0x64
_08022C06:
	ldr r0, _08022C0C
	str r1, [r0]
	bx lr
	.align 2, 0
_08022C0C: .4byte 0x02021DA0

	THUMB_FUNC_START sub_8022C10
sub_8022C10: @ 0x08022C10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08022C34
	cmp r4, r2
	bgt _08022C4C
	ldr r1, _08022C38
	movs r0, #0x64
	str r0, [r1]
	cmp r4, #0x64
	ble _08022C4C
	adds r3, r1, #0
	movs r5, #0x64
_08022C28:
	ldr r0, [r3]
	cmp r0, r2
	bne _08022C3C
	str r5, [r1]
	b _08022C46
	.align 2, 0
_08022C34: .4byte 0x0000FDE8
_08022C38: .4byte 0x02021DA0
_08022C3C:
	adds r0, #0x64
	str r0, [r1]
	cmp r0, r2
	ble _08022C46
	str r2, [r3]
_08022C46:
	ldr r0, [r3]
	cmp r4, r0
	bgt _08022C28
_08022C4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8022C54
sub_8022C54: @ 0x08022C54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	ldr r0, _08022C74
	ldrb r0, [r0]
	cmp r0, #2
	bne _08022C6A
	b _08022E38
_08022C6A:
	cmp r0, #2
	bgt _08022C78
	cmp r0, #1
	beq _08022C86
	b _08023348
	.align 2, 0
_08022C74: .4byte 0x02021CF8
_08022C78:
	cmp r0, #3
	bne _08022C7E
	b _08022FE8
_08022C7E:
	cmp r0, #4
	bne _08022C84
	b _08023198
_08022C84:
	b _08023348
_08022C86:
	ldr r0, _08022DDC
	ldr r5, _08022DE0
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08022DE4
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp]
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r1, r5, r0
	ldr r6, _08022DE8
	mov r0, sp
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DEC
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #4]
	add r0, sp, #4
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DF0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #8]
	add r0, sp, #8
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DF4
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DF8
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DFC
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x14]
	add r0, sp, #0x14
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08022E00
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08022E04
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08022E08
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_08022D3E:
	ldr r0, _08022E0C
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022E10
	adds r0, r0, r1
	ldr r4, _08022E14
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08022E18
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _08022D3E
	movs r7, #0
	ldr r1, _08022E1C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08022E20
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08022E24
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_08022D98:
	ldr r0, _08022E28
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022E2C
	adds r0, r0, r1
	ldr r1, _08022E30
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08022E34
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _08022D98
	b _08023478
	.align 2, 0
_08022DDC: .4byte 0x08DE8C1C
_08022DE0: .4byte 0x02008400
_08022DE4: .4byte 0x08DEDE60
_08022DE8: .4byte 0x01000200
_08022DEC: .4byte 0x08DEDF50
_08022DF0: .4byte 0x08DEE0B8
_08022DF4: .4byte 0x08DEE220
_08022DF8: .4byte 0x08DEE388
_08022DFC: .4byte 0x08DEE478
_08022E00: .4byte 0x00007012
_08022E04: .4byte 0x00004216
_08022E08: .4byte 0x00007212
_08022E0C: .4byte 0x08DEE568
_08022E10: .4byte 0x08DEE970
_08022E14: .4byte 0xFFFFDFF2
_08022E18: .4byte 0x08DEEA40
_08022E1C: .4byte 0x000017FE
_08022E20: .4byte 0x000009C2
_08022E24: .4byte 0x000019BE
_08022E28: .4byte 0x08DEE5C8
_08022E2C: .4byte 0x08DEE718
_08022E30: .4byte 0xFFFFF802
_08022E34: .4byte 0x08DEE850
_08022E38:
	ldr r0, _08022F8C
	ldr r5, _08022F90
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08022F94
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r1, r5, r2
	ldr r6, _08022F98
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022F9C
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x1c]
	add r0, sp, #0x1c
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FA0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x20]
	add r0, sp, #0x20
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FA4
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x24]
	add r0, sp, #0x24
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FA8
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FAC
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x2c]
	add r0, sp, #0x2c
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08022FB0
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08022FB4
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08022FB8
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_08022EF0:
	ldr r0, _08022FBC
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022FC0
	adds r0, r0, r1
	ldr r4, _08022FC4
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08022FC8
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _08022EF0
	movs r7, #0
	ldr r1, _08022FCC
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08022FD0
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08022FD4
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_08022F4A:
	ldr r0, _08022FD8
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022FDC
	adds r0, r0, r1
	ldr r1, _08022FE0
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08022FE4
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _08022F4A
	b _08023478
	.align 2, 0
_08022F8C: .4byte 0x08DE9FD8
_08022F90: .4byte 0x02008400
_08022F94: .4byte 0x08DEDE60
_08022F98: .4byte 0x01000200
_08022F9C: .4byte 0x08DEDF50
_08022FA0: .4byte 0x08DEE0B8
_08022FA4: .4byte 0x08DEE220
_08022FA8: .4byte 0x08DEE388
_08022FAC: .4byte 0x08DEE478
_08022FB0: .4byte 0x00007012
_08022FB4: .4byte 0x00004216
_08022FB8: .4byte 0x00007212
_08022FBC: .4byte 0x08DEEA80
_08022FC0: .4byte 0x08DEEE88
_08022FC4: .4byte 0xFFFFDFF2
_08022FC8: .4byte 0x08DEEF58
_08022FCC: .4byte 0x000017FE
_08022FD0: .4byte 0x000009C2
_08022FD4: .4byte 0x000019BE
_08022FD8: .4byte 0x08DEEAE0
_08022FDC: .4byte 0x08DEEC30
_08022FE0: .4byte 0xFFFFF802
_08022FE4: .4byte 0x08DEED68
_08022FE8:
	ldr r0, _0802313C
	ldr r5, _08023140
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08023144
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x30
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r1, r5, r2
	ldr r6, _08023148
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0802314C
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x34]
	add r0, sp, #0x34
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023150
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x38]
	add r0, sp, #0x38
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023154
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x3c]
	add r0, sp, #0x3c
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023158
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0802315C
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x44]
	add r0, sp, #0x44
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08023160
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08023164
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08023168
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_080230A0:
	ldr r0, _0802316C
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08023170
	adds r0, r0, r1
	ldr r4, _08023174
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08023178
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _080230A0
	movs r7, #0
	ldr r1, _0802317C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08023180
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08023184
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_080230FA:
	ldr r0, _08023188
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _0802318C
	adds r0, r0, r1
	ldr r1, _08023190
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08023194
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _080230FA
	b _08023478
	.align 2, 0
_0802313C: .4byte 0x08DEB77C
_08023140: .4byte 0x02008400
_08023144: .4byte 0x08DEDE60
_08023148: .4byte 0x01000200
_0802314C: .4byte 0x08DEDF50
_08023150: .4byte 0x08DEE0B8
_08023154: .4byte 0x08DEE220
_08023158: .4byte 0x08DEE388
_0802315C: .4byte 0x08DEE478
_08023160: .4byte 0x00007012
_08023164: .4byte 0x00004216
_08023168: .4byte 0x00007212
_0802316C: .4byte 0x08DEEF98
_08023170: .4byte 0x08DEFB40
_08023174: .4byte 0xFFFFDFF2
_08023178: .4byte 0x08DEFC10
_0802317C: .4byte 0x000017FE
_08023180: .4byte 0x000009C2
_08023184: .4byte 0x000019BE
_08023188: .4byte 0x08DEF798
_0802318C: .4byte 0x08DEF8E8
_08023190: .4byte 0xFFFFF802
_08023194: .4byte 0x08DEFA20
_08023198:
	ldr r0, _080232EC
	ldr r5, _080232F0
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _080232F4
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x48]
	add r0, sp, #0x48
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r1, r5, r2
	ldr r6, _080232F8
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _080232FC
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x4c]
	add r0, sp, #0x4c
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023300
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x50]
	add r0, sp, #0x50
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023304
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x54]
	add r0, sp, #0x54
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023308
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x58]
	add r0, sp, #0x58
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0802330C
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x5c]
	add r0, sp, #0x5c
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08023310
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08023314
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08023318
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_08023250:
	ldr r0, _0802331C
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08023320
	adds r0, r0, r1
	ldr r4, _08023324
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08023328
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _08023250
	movs r7, #0
	ldr r1, _0802332C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08023330
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08023334
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_080232AA:
	ldr r0, _08023338
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _0802333C
	adds r0, r0, r1
	ldr r1, _08023340
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08023344
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _080232AA
	b _08023478
	.align 2, 0
_080232EC: .4byte 0x08DECAAC
_080232F0: .4byte 0x02008400
_080232F4: .4byte 0x08DEDE60
_080232F8: .4byte 0x01000200
_080232FC: .4byte 0x08DEDF50
_08023300: .4byte 0x08DEE0B8
_08023304: .4byte 0x08DEE220
_08023308: .4byte 0x08DEE388
_0802330C: .4byte 0x08DEE478
_08023310: .4byte 0x00007012
_08023314: .4byte 0x00004216
_08023318: .4byte 0x00007212
_0802331C: .4byte 0x08DEFC50
_08023320: .4byte 0x08DF07F8
_08023324: .4byte 0xFFFFDFF2
_08023328: .4byte 0x08DF08C8
_0802332C: .4byte 0x000017FE
_08023330: .4byte 0x000009C2
_08023334: .4byte 0x000019BE
_08023338: .4byte 0x08DF0450
_0802333C: .4byte 0x08DF05A0
_08023340: .4byte 0xFFFFF802
_08023344: .4byte 0x08DF06D8
_08023348:
	ldr r0, _08023494
	ldr r4, _08023498
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0802349C
	ldrh r0, [r0]
	str r0, [sp, #0x60]
	add r0, sp, #0x60
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r6, r4, r2
	ldr r5, _080234A0
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234A4
	ldrh r0, [r0]
	str r0, [sp, #0x64]
	add r0, sp, #0x64
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234A8
	ldrh r0, [r0]
	str r0, [sp, #0x68]
	add r0, sp, #0x68
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234AC
	ldrh r0, [r0]
	str r0, [sp, #0x6c]
	add r0, sp, #0x6c
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234B0
	ldrh r0, [r0]
	str r0, [sp, #0x70]
	add r0, sp, #0x70
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234B4
	ldrh r0, [r0]
	str r0, [sp, #0x74]
	add r0, sp, #0x74
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	movs r7, #0
	mov sl, r6
	movs r0, #0x84
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r1, #0xe4
	lsls r1, r1, #7
	adds r4, r4, r1
	movs r2, #0x80
	lsls r2, r2, #2
	mov sb, r2
	movs r5, #0
_080233E6:
	ldr r0, _0802349C
	adds r0, r5, r0
	adds r1, r4, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234B0
	adds r0, r5, r0
	ldr r1, _080234B8
	add r1, sl
	mov r8, r1
	mov r1, sb
	add r1, r8
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234B4
	adds r0, r5, r0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	adds r6, #0x40
	adds r4, #0x40
	movs r2, #0x40
	add sb, r2
	adds r5, #0x3c
	adds r7, #1
	cmp r7, #3
	bls _080233E6
	movs r7, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	add r0, r8
	mov sb, r0
	movs r6, #0x9c
	lsls r6, r6, #4
	add r6, r8
	movs r5, #0xce
	lsls r5, r5, #5
	add r5, r8
	movs r1, #0xe0
	lsls r1, r1, #1
	mov r8, r1
	movs r4, #0
_08023440:
	ldr r0, _080234A4
	adds r0, r4, r0
	adds r1, r5, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234A8
	adds r0, r4, r0
	ldr r1, _080234BC
	add r1, sb
	add r1, r8
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234AC
	adds r0, r4, r0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	movs r2, #0x40
	add r8, r2
	adds r4, #0x3c
	adds r7, #1
	cmp r7, #5
	bls _08023440
_08023478:
	ldr r0, _080234C0
	ldr r1, _080234C4
	movs r2, #0x10
	bl CpuSet
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023494: .4byte 0x08DE7888
_08023498: .4byte 0x02008400
_0802349C: .4byte 0x08DEDE60
_080234A0: .4byte 0x01000200
_080234A4: .4byte 0x08DEDF50
_080234A8: .4byte 0x08DEE0B8
_080234AC: .4byte 0x08DEE220
_080234B0: .4byte 0x08DEE388
_080234B4: .4byte 0x08DEE478
_080234B8: .4byte 0xFFFFE000
_080234BC: .4byte 0xFFFFF800
_080234C0: .4byte 0x08DF0908
_080234C4: .4byte 0x020000A0

	THUMB_FUNC_START sub_80234C8
sub_80234C8: @ 0x080234C8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0802352C
	ldr r1, _08023530
	ldr r2, _08023534
	adds r0, r5, #0
	bl sub_8020A3C
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	movs r0, #0xd0
	lsls r0, r0, #7
	adds r5, r5, r0
	ldr r2, _08023538
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	ldr r2, _0802353C
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #0xe1
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r0, _08023540
	strh r0, [r3]
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #0x1c
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #0xf1
	lsls r0, r0, #1
	adds r3, r2, r0
	movs r0, #0x1f
	strh r0, [r3]
	movs r3, #0xf2
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802352C: .4byte 0x02006400
_08023530: .4byte 0x080C18BC
_08023534: .4byte 0x00001801
_08023538: .4byte 0x01000400
_0802353C: .4byte 0x02000000
_08023540: .4byte 0x00007FFF

	THUMB_FUNC_START sub_8023544
sub_8023544: @ 0x08023544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080235B0
	mov sb, r0
	movs r1, #0
	ldr r2, _080235B4
	mov sl, r2
_08023558:
	ldr r0, _080235B8
	ldrb r0, [r0, #0xa]
	cmp r1, r0
	bne _080235C4
	ldr r2, _080235BC
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0802360C
	ldr r6, _080235C0
	ldr r2, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	mov ip, r1
_08023584:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08023584
	b _0802360C
	.align 2, 0
_080235B0: .4byte 0x02018450
_080235B4: .4byte 0x08FC4A8C
_080235B8: .4byte 0x02021DA0
_080235BC: .4byte 0x080C184B
_080235C0: .4byte 0xFFFFF3FF
_080235C4:
	ldr r2, _0802362C
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0802360C
	ldr r6, _08023630
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_080235E8:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _080235E8
_0802360C:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #6
	bls _08023558
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802362C: .4byte 0x080C1844
_08023630: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023634
sub_8023634: @ 0x08023634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802369C
	mov sb, r0
	movs r1, #0
	ldr r2, _080236A0
	mov sl, r2
_08023648:
	ldr r0, _080236A4
	ldrb r0, [r0, #0xa]
	cmp r1, r0
	bne _080236B0
	ldr r2, _080236A8
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _080236F8
	ldr r6, _080236AC
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_08023674:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08023674
	b _080236F8
	.align 2, 0
_0802369C: .4byte 0x02018450
_080236A0: .4byte 0x08FC4A8C
_080236A4: .4byte 0x02021DA0
_080236A8: .4byte 0x080C184B
_080236AC: .4byte 0xFFFFF3FF
_080236B0:
	ldr r2, _08023718
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _080236F8
	ldr r6, _0802371C
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_080236D4:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _080236D4
_080236F8:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #6
	bls _08023648
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023718: .4byte 0x080C1844
_0802371C: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023720
sub_8023720: @ 0x08023720
	push {r4, r5, r6, r7, lr}
	ldr r1, _08023774
	ldr r2, _08023778
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _0802377C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r5, r0, r1
	ldr r3, _08023780
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _0802376E
	ldr r6, _08023784
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802374C:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802374C
_0802376E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023774: .4byte 0x080C1852
_08023778: .4byte 0x02021DA0
_0802377C: .4byte 0x08FC4A8C
_08023780: .4byte 0x02018408
_08023784: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023788
sub_8023788: @ 0x08023788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08023820
	ldr r0, _08023824
	ldr r5, [r0, #0x40]
	adds r3, r1, #0
	movs r4, #0
	mov r8, r0
	movs r0, #8
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080237D6
	ldr r6, _08023828
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_080237AE:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080237AE
_080237D6:
	mov r0, r8
	ldr r5, [r0, #0x44]
	mov r3, ip
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023814
	ldr r6, _08023828
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_080237EC:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080237EC
_08023814:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023820: .4byte 0x02018418
_08023824: .4byte 0x08FC4A8C
_08023828: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_802382C
sub_802382C: @ 0x0802382C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080238B8
	ldr r0, _080238BC
	ldr r5, [r0, #0x40]
	adds r3, r1, #0
	movs r4, #0
	mov r8, r0
	movs r0, #8
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023874
	ldr r6, _080238C0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_08023852:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08023852
_08023874:
	mov r0, r8
	ldr r5, [r0, #0x44]
	mov r3, ip
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080238AC
	ldr r6, _080238C0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802388A:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802388A
_080238AC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080238B8: .4byte 0x02018418
_080238BC: .4byte 0x08FC4A8C
_080238C0: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_80238C4
sub_80238C4: @ 0x080238C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _0802390C
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _08023910
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_080238E4:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _08023914
	mov ip, r0
_080238EC:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08023918
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _08023920
	.align 2, 0
_0802390C: .4byte 0x02000000
_08023910: .4byte 0xFFFFFC1F
_08023914: .4byte 0x000001FF
_08023918:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_08023920:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0802393E
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _08023944
_0802393E:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_08023944:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08023962
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0802396A
_08023962:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_0802396A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _080238EC
	ldr r0, _08023994
	bl sub_80081DC
	bl sub_8008220
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080238E4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023994: .4byte 0x080454E1

	THUMB_FUNC_START sub_8023998
sub_8023998: @ 0x08023998
	push {lr}
	bl sub_8022C54
	bl sub_80234C8
	bl sub_8023DD8
	bl sub_8023E28
	bl sub_8023EDC
	bl sub_8023F4C
	bl sub_8023F90
	bl sub_8023C58
	bl sub_8023720
	bl sub_8023544
	bl sub_8023788
	bl sub_8045718
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045434
	bl sub_804549C
	ldr r0, _08023A04
	bl sub_80081DC
	bl sub_8008220
	ldr r1, _08023A08
	ldr r2, _08023A0C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08023A10
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08023A04: .4byte 0x080454C9
_08023A08: .4byte 0x0400000C
_08023A0C: .4byte 0x00001902
_08023A10: .4byte 0x00001F03

	THUMB_FUNC_START sub_8023A14
sub_8023A14: @ 0x08023A14
	push {lr}
	bl sub_8023C58
	bl sub_8023720
	bl sub_8023544
	bl sub_8023788
	bl sub_8023FD4
	ldr r0, _08023A40
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045690
	bl sub_804549C
	pop {r0}
	bx r0
	.align 2, 0
_08023A40: .4byte 0x080454C9

	THUMB_FUNC_START sub_8023A44
sub_8023A44: @ 0x08023A44
	push {r4, r5, lr}
	bl sub_8023544
	bl sub_8023788
	ldr r4, _08023A88
	ldr r5, _08023A8C
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl sub_8023EB8
	subs r4, #0x10
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl sub_8023EB8
	bl sub_8023FD4
	ldr r0, _08023A90
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08023A94
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023A88: .4byte 0x02018410
_08023A8C: .4byte 0x08FC4A8C
_08023A90: .4byte 0x080454C9
_08023A94: .4byte 0x0000FDFF

	THUMB_FUNC_START sub_8023A98
sub_8023A98: @ 0x08023A98
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x16
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023AD8
	ldr r2, _08023ADC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023AE0
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023AD8: .4byte 0x0400000A
_08023ADC: .4byte 0x00001A09
_08023AE0: .4byte 0x080454C9

	THUMB_FUNC_START sub_8023AE4
sub_8023AE4: @ 0x08023AE4
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x14
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023B24
	ldr r2, _08023B28
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023B2C
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023B24: .4byte 0x0400000A
_08023B28: .4byte 0x00001C09
_08023B2C: .4byte 0x080454C9

	THUMB_FUNC_START sub_8023B30
sub_8023B30: @ 0x08023B30
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x13
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023B70
	ldr r2, _08023B74
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023B78
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023B70: .4byte 0x0400000A
_08023B74: .4byte 0x00001D09
_08023B78: .4byte 0x080454C9

	THUMB_FUNC_START sub_8023B7C
sub_8023B7C: @ 0x08023B7C
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x15
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023BBC
	ldr r2, _08023BC0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023BC4
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023BBC: .4byte 0x0400000A
_08023BC0: .4byte 0x00001B09
_08023BC4: .4byte 0x080454C9

	THUMB_FUNC_START sub_8023BC8
sub_8023BC8: @ 0x08023BC8
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x12
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023C08
	ldr r2, _08023C0C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023C10
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023C08: .4byte 0x0400000A
_08023C0C: .4byte 0x00001E09
_08023C10: .4byte 0x080454C9

	THUMB_FUNC_START sub_8023C14
sub_8023C14: @ 0x08023C14
	push {lr}
	bl sub_8023634
	bl sub_802382C
	bl sub_8024018
	ldr r1, _08023C4C
	ldr r2, _08023C50
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023C54
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023C4C: .4byte 0x0400000A
_08023C50: .4byte 0x00001809
_08023C54: .4byte 0x080454C9

	THUMB_FUNC_START sub_8023C58
sub_8023C58: @ 0x08023C58
	push {lr}
	ldr r1, _08023C6C
	ldrb r0, [r1, #8]
	cmp r0, #0x28
	bne _08023C70
	movs r1, #0xe
	bl sub_8023CC0
	b _08023C78
	.align 2, 0
_08023C6C: .4byte 0x02021DA0
_08023C70:
	ldrb r0, [r1, #8]
	movs r1, #0xf
	bl sub_8023CC0
_08023C78:
	ldr r0, _08023C8C
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	blo _08023C90
	adds r0, r1, #0
	movs r1, #0xe
	bl sub_8023D7C
	b _08023C98
	.align 2, 0
_08023C8C: .4byte 0x02021DA0
_08023C90:
	adds r0, r1, #0
	movs r1, #0xf
	bl sub_8023D7C
_08023C98:
	bl sub_801D718
	ldr r1, _08023CB0
	ldr r1, [r1, #4]
	cmp r0, r1
	blo _08023CB4
	adds r0, r1, #0
	movs r1, #0xe
	bl sub_8023D20
	b _08023CBC
	.align 2, 0
_08023CB0: .4byte 0x02021DA0
_08023CB4:
	adds r0, r1, #0
	movs r1, #0xf
	bl sub_8023D20
_08023CBC:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8023CC0
sub_8023CC0: @ 0x08023CC0
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _08023D0C
	lsls r4, r4, #0xc
	ldr r3, _08023D10
	ldr r0, _08023D14
	adds r2, r0, #0
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1]
	adds r1, #2
	ldr r2, _08023D18
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, _08023D1C
	adds r0, r5, #0
	strh r0, [r1]
	subs r2, #0xb
	adds r0, r2, #0
	strh r0, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D0C: .4byte 0x0200CE30
_08023D10: .4byte 0x02021BD0
_08023D14: .4byte 0x00000301
_08023D18: .4byte 0x0000E30C
_08023D1C: .4byte 0x0000E305

	THUMB_FUNC_START sub_8023D20
sub_8023D20: @ 0x08023D20
	push {r4, r5, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _08023D70
	lsls r4, r4, #0xc
	ldr r3, _08023D74
	ldr r0, _08023D78
	adds r2, r0, #0
	ldrb r5, [r3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #1]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #2]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D70: .4byte 0x0200CF70
_08023D74: .4byte 0x02021BD0
_08023D78: .4byte 0x00000301

	THUMB_FUNC_START sub_8023D7C
sub_8023D7C: @ 0x08023D7C
	push {r4, r5, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _08023DCC
	lsls r4, r4, #0xc
	ldr r3, _08023DD0
	ldr r0, _08023DD4
	adds r2, r0, #0
	ldrb r5, [r3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #1]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #2]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023DCC: .4byte 0x0200CEF0
_08023DD0: .4byte 0x02021BD0
_08023DD4: .4byte 0x00000301

	THUMB_FUNC_START sub_8023DD8
sub_8023DD8: @ 0x08023DD8
	push {r4, r5, lr}
	ldr r0, _08023E10
	ldr r1, _08023E14
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_08023DE6:
	ldr r0, _08023E18
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _08023E1C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _08023DE6
	ldr r0, _08023E20
	ldr r1, _08023E24
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023E10: .4byte 0x08DE2F08
_08023E14: .4byte 0x02000400
_08023E18: .4byte 0x08DE7358
_08023E1C: .4byte 0x0200FC00
_08023E20: .4byte 0x08DE7808
_08023E24: .4byte 0x02000000

	THUMB_FUNC_START sub_8023E28
sub_8023E28: @ 0x08023E28
	push {r4, lr}
	ldr r0, _08023E50
	ldr r4, _08023E54
	ldr r1, [r4]
	bl LZ77UnCompWram
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _08023E58
	ldr r1, _08023E5C
	movs r2, #0x50
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023E50: .4byte 0x08DF0928
_08023E54: .4byte 0x08E010A0
_08023E58: .4byte 0x08DF1430
_08023E5C: .4byte 0x02000200
	.byte 0xF0, 0xB5, 0x07, 0x1C, 0x0C, 0x1C, 0x12, 0x06, 0x12, 0x0E, 0x1B, 0x06, 0x1B, 0x0E, 0x00, 0x26
	.byte 0x79, 0x78, 0x8E, 0x42, 0x1B, 0xD2, 0x0F, 0x48, 0x84, 0x46, 0x9D, 0x02, 0xC0, 0x20, 0x00, 0x01
	.byte 0x05, 0x40, 0x93, 0x02, 0x03, 0x40, 0x7A, 0x68, 0x0F, 0x1C, 0x50, 0x88, 0x00, 0x04, 0x11, 0x88
	.byte 0x08, 0x43, 0x61, 0x46, 0x08, 0x40, 0x20, 0x60, 0x28, 0x43, 0x01, 0xC4, 0x90, 0x88, 0x08, 0x40
	.byte 0x20, 0x60, 0x18, 0x43, 0x01, 0xC4, 0x08, 0x32, 0x01, 0x36, 0xBE, 0x42, 0xED, 0xD3, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xFF, 0xF3, 0xFF, 0xFF

	THUMB_FUNC_START sub_8023EB8
sub_8023EB8: @ 0x08023EB8
	push {r4, lr}
	movs r2, #0
	ldrb r0, [r0, #1]
	cmp r2, r0
	bhs _08023ED4
	movs r4, #0x80
	lsls r4, r4, #2
	movs r3, #0x80
	lsls r3, r3, #0x11
_08023ECA:
	stm r1!, {r4}
	stm r1!, {r3}
	adds r2, #1
	cmp r2, r0
	blo _08023ECA
_08023ED4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8023EDC
sub_8023EDC: @ 0x08023EDC
	ldr r1, _08023EF4
	movs r0, #0
	movs r3, #0x80
	lsls r3, r3, #2
	movs r2, #0x80
	lsls r2, r2, #0x11
_08023EE8:
	stm r1!, {r3}
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #0x7f
	bls _08023EE8
	bx lr
	.align 2, 0
_08023EF4: .4byte 0x02018400

	THUMB_FUNC_START sub_8023EF8
sub_8023EF8: @ 0x08023EF8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	ldr r1, _08023F40
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r3, _08023F44
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023F3A
	ldr r7, _08023F48
	movs r6, #0x80
	lsls r6, r6, #3
	ldr r2, [r5, #4]
_08023F16:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r7
	str r0, [r3]
	orrs r0, r6
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r7
	str r0, [r3]
	orrs r0, r6
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08023F16
_08023F3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023F40: .4byte 0x08FC4A8C
_08023F44: .4byte 0x02018410
_08023F48: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023F4C
sub_8023F4C: @ 0x08023F4C
	ldr r0, _08023F70
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08023F74
	strh r1, [r0]
	ldr r0, _08023F78
	strh r1, [r0]
	ldr r0, _08023F7C
	strh r1, [r0]
	ldr r0, _08023F80
	strh r1, [r0]
	ldr r0, _08023F84
	strh r1, [r0]
	ldr r0, _08023F88
	strh r1, [r0]
	ldr r0, _08023F8C
	strh r1, [r0]
	bx lr
	.align 2, 0
_08023F70: .4byte 0x02024240
_08023F74: .4byte 0x02024214
_08023F78: .4byte 0x0202422C
_08023F7C: .4byte 0x02024248
_08023F80: .4byte 0x0202420C
_08023F84: .4byte 0x0202424C
_08023F88: .4byte 0x02024218
_08023F8C: .4byte 0x02024204

	THUMB_FUNC_START sub_8023F90
sub_8023F90: @ 0x08023F90
	ldr r1, _08023FB8
	ldr r2, _08023FBC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08023FC0
	ldr r2, _08023FC4
	ldr r1, _08023FC8
	ldr r0, _08023FCC
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08023FD0
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08023FB8: .4byte 0x02024228
_08023FBC: .4byte 0x00000CD8
_08023FC0: .4byte 0x02024238
_08023FC4: .4byte 0x080C1868
_08023FC8: .4byte 0x080C185F
_08023FCC: .4byte 0x02021DA0
_08023FD0: .4byte 0x02024230

	THUMB_FUNC_START sub_8023FD4
sub_8023FD4: @ 0x08023FD4
	ldr r1, _08023FFC
	ldr r2, _08024000
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08024004
	ldr r2, _08024008
	ldr r1, _0802400C
	ldr r0, _08024010
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08024014
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08023FFC: .4byte 0x02024228
_08024000: .4byte 0x00000CD8
_08024004: .4byte 0x02024238
_08024008: .4byte 0x080C1868
_0802400C: .4byte 0x080C185F
_08024010: .4byte 0x02021DA0
_08024014: .4byte 0x02024230

	THUMB_FUNC_START sub_8024018
sub_8024018: @ 0x08024018
	ldr r1, _08024040
	ldr r2, _08024044
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08024048
	ldr r2, _0802404C
	ldr r1, _08024050
	ldr r0, _08024054
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08024058
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08024040: .4byte 0x02024228
_08024044: .4byte 0x00000EDC
_08024048: .4byte 0x02024238
_0802404C: .4byte 0x080C1882
_08024050: .4byte 0x080C187A
_08024054: .4byte 0x02021DA0
_08024058: .4byte 0x02024230

	THUMB_FUNC_START sub_802405C
sub_802405C: @ 0x0802405C
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	cmp r0, #0xff
	beq _0802407E
	ldr r1, _08024088
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
_0802407E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024088: .4byte 0x08FA2BAC

	THUMB_FUNC_START sub_802408C
sub_802408C: @ 0x0802408C
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	cmp r0, #0xff
	beq _080240AE
	ldr r1, _080240B8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	movs r4, #0
	str r4, [sp]
	bl sub_80419EC
_080240AE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080240B8: .4byte 0x08FA2BAC

	THUMB_FUNC_START sub_80240BC
sub_80240BC: @ 0x080240BC
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #8]
	bx lr

	THUMB_FUNC_START sub_80240CC
sub_80240CC: @ 0x080240CC
	push {r4, r5, r6, r7, lr}
	bl sub_80325D4
	ldr r4, _08024168
	movs r3, #0
	ldr r5, _0802416C
	ldr r0, [r5]
	cmp r0, #0
	beq _0802410A
	adds r7, r5, #0
	adds r6, r5, #4
_080240E2:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024100
_080240F2:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080240F2
_08024100:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080240E2
_0802410A:
	ldr r4, _08024170
	ldr r0, _08024168
	str r0, [r4, #0xc]
	ldr r5, _08024174
	str r5, [r4, #0x10]
	movs r1, #0x67
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030EF0
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08024162
	adds r2, r5, #0
	movs r3, #0
	ldr r5, _08024178
	ldr r0, [r5]
	cmp r0, #0
	beq _08024162
	adds r7, r5, #0
	adds r6, r5, #4
_0802413A:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r4, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024158
_0802414A:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _0802414A
_08024158:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _0802413A
_08024162:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024168: .4byte 0x03000C78
_0802416C: .4byte 0x080C18D8
_08024170: .4byte 0x03000C38
_08024174: .4byte 0x03001078
_08024178: .4byte 0x080C1910

	THUMB_FUNC_START sub_802417C
sub_802417C: @ 0x0802417C
	push {r4, r5, r6, r7, lr}
	bl sub_80325D4
	movs r0, #0
	movs r1, #1
	bl sub_8056258
	ldr r4, _080241E4
	strb r0, [r4]
	ldr r1, _080241E8
	ldrb r0, [r1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #1]
	strb r0, [r4, #2]
	ldrb r0, [r1, #2]
	strb r0, [r4, #3]
	ldrb r0, [r1, #3]
	strb r0, [r4, #4]
	ldrb r0, [r1, #4]
	strb r0, [r4, #5]
	ldrb r0, [r1, #5]
	strb r0, [r4, #6]
	ldr r5, _080241EC
	str r4, [r5, #0xc]
	ldr r6, _080241F0
	str r6, [r5, #0x10]
	movs r0, #7
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #7
	bl sub_8032644
	movs r7, #0
	strh r0, [r5, #0x28]
	bl sub_8030EF0
	adds r0, r5, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024210
	ldrb r0, [r4]
	ldrb r6, [r6]
	cmp r0, r6
	bne _080241F4
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802420C
	b _080241FE
	.align 2, 0
_080241E4: .4byte 0x03000C78
_080241E8: .4byte 0x08E01098
_080241EC: .4byte 0x03000C38
_080241F0: .4byte 0x03001078
_080241F4:
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802420C
_080241FE:
	ldr r1, _08024208
	movs r0, #1
	strb r0, [r1]
	b _08024210
	.align 2, 0
_08024208: .4byte 0x020245A8
_0802420C:
	ldr r0, _08024218
	strb r7, [r0]
_08024210:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024218: .4byte 0x020245A8
	.byte 0x10, 0xB5, 0x0E, 0xF0
	.byte 0xD9, 0xF9, 0x00, 0x20, 0x01, 0x21, 0x32, 0xF0, 0x17, 0xF8, 0x01, 0x1C, 0x13, 0x48, 0x01, 0x70
	.byte 0x13, 0x4A, 0x11, 0x78, 0x41, 0x70, 0x51, 0x78, 0x81, 0x70, 0x91, 0x78, 0xC1, 0x70, 0xD1, 0x78
	.byte 0x01, 0x71, 0x11, 0x79, 0x41, 0x71, 0x51, 0x79, 0x81, 0x71, 0x0E, 0x4C, 0xE0, 0x60, 0x0E, 0x49
	.byte 0x21, 0x61, 0x07, 0x21, 0x21, 0x60, 0x0E, 0xF0, 0xF5, 0xF9, 0x20, 0x85, 0x0C, 0xF0, 0x48, 0xFE
	.byte 0x20, 0x1C, 0x34, 0x30, 0x00, 0x78, 0x00, 0x28, 0x15, 0xD1, 0x20, 0x1C, 0x31, 0x30, 0x00, 0x78
	.byte 0x00, 0x28, 0x0D, 0xD1, 0x05, 0x49, 0x00, 0x20, 0x0C, 0xE0, 0x00, 0x00, 0x78, 0x0C, 0x00, 0x03
	.byte 0x98, 0x10, 0xE0, 0x08, 0x38, 0x0C, 0x00, 0x03, 0x78, 0x10, 0x00, 0x03, 0xA8, 0x45, 0x02, 0x02
	.byte 0x02, 0x49, 0x01, 0x20, 0x08, 0x70, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xA8, 0x45, 0x02, 0x02
	.byte 0x10, 0xB5, 0x0E, 0xF0, 0x97, 0xF9, 0x00, 0x20, 0x01, 0x21, 0x31, 0xF0, 0xD5, 0xFF, 0x01, 0x1C
	.byte 0x13, 0x48, 0x01, 0x70, 0x13, 0x4A, 0x11, 0x78, 0x41, 0x70, 0x51, 0x78, 0x81, 0x70, 0x91, 0x78
	.byte 0xC1, 0x70, 0xD1, 0x78, 0x01, 0x71, 0x11, 0x79, 0x41, 0x71, 0x51, 0x79, 0x81, 0x71, 0x0E, 0x4C
	.byte 0xE0, 0x60, 0x0E, 0x49, 0x21, 0x61, 0x07, 0x21, 0x21, 0x60, 0x0E, 0xF0, 0xB3, 0xF9, 0x20, 0x85
	.byte 0x0C, 0xF0, 0x06, 0xFE, 0x20, 0x1C, 0x34, 0x30, 0x00, 0x78, 0x00, 0x28, 0x15, 0xD1, 0x20, 0x1C
	.byte 0x31, 0x30, 0x00, 0x78, 0x00, 0x28, 0x0D, 0xD1, 0x05, 0x49, 0x01, 0x20, 0x0C, 0xE0, 0x00, 0x00
	.byte 0x78, 0x0C, 0x00, 0x03, 0x98, 0x10, 0xE0, 0x08, 0x38, 0x0C, 0x00, 0x03, 0x78, 0x10, 0x00, 0x03
	.byte 0xA8, 0x45, 0x02, 0x02, 0x02, 0x49, 0x00, 0x20, 0x08, 0x70, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA8, 0x45, 0x02, 0x02, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802432C
sub_802432C: @ 0x0802432C
	push {lr}
	bl sub_80325D4
	ldr r1, _08024348
	ldr r0, _0802434C
	str r0, [r1, #0xc]
	ldr r0, _08024350
	str r0, [r1, #0x10]
	movs r0, #0
	str r0, [r1]
	bl sub_80324C4
	pop {r0}
	bx r0
	.align 2, 0
_08024348: .4byte 0x03000C38
_0802434C: .4byte 0x03000C78
_08024350: .4byte 0x03001078

	THUMB_FUNC_START sub_8024354
sub_8024354: @ 0x08024354
	push {r4, lr}
	ldr r4, _08024378
	ldr r0, _0802437C
	str r0, [r4, #0xc]
	ldr r1, _08024380
	str r1, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030F90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024378: .4byte 0x03000C38
_0802437C: .4byte 0x03000C78
_08024380: .4byte 0x03001078

	THUMB_FUNC_START sub_8024384
sub_8024384: @ 0x08024384
	push {r4, r5, r6, r7, lr}
	ldr r4, _080243C4
	movs r3, #0
	ldr r5, _080243C8
	ldr r0, [r5]
	cmp r0, #0
	beq _080243BE
	adds r7, r5, #0
	adds r6, r5, #4
_08024396:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080243B4
_080243A6:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080243A6
_080243B4:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024396
_080243BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080243C4: .4byte 0x03000C78
_080243C8: .4byte 0x080C1948

	THUMB_FUNC_START sub_80243CC
sub_80243CC: @ 0x080243CC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802440C
	movs r3, #0
	ldr r5, _08024410
	ldr r0, [r5]
	cmp r0, #0
	beq _08024406
	adds r7, r5, #0
	adds r6, r5, #4
_080243DE:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080243FC
_080243EE:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _080243EE
_080243FC:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080243DE
_08024406:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802440C: .4byte 0x03001078
_08024410: .4byte 0x080C19D8

	THUMB_FUNC_START sub_8024414
sub_8024414: @ 0x08024414
	push {r4, r5, r6, r7, lr}
	ldr r4, _08024454
	movs r3, #0
	ldr r5, _08024458
	ldr r0, [r5]
	cmp r0, #0
	beq _0802444E
	adds r7, r5, #0
	adds r6, r5, #4
_08024426:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024444
_08024436:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _08024436
_08024444:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024426
_0802444E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024454: .4byte 0x03000C78
_08024458: .4byte 0x080C1A68

	THUMB_FUNC_START sub_802445C
sub_802445C: @ 0x0802445C
	push {r4, r5, r6, r7, lr}
	ldr r4, _080244AC
	movs r3, #0
	ldr r5, _080244B0
	ldr r0, [r5]
	cmp r0, #0
	beq _08024496
	adds r7, r5, #0
	adds r6, r5, #4
_0802446E:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _0802448C
_0802447E:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0802447E
_0802448C:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _0802446E
_08024496:
	bl sub_803FD48
	bl sub_8043EF4
	ldr r0, _080244B4
	ldrb r0, [r0, #0x18]
	bl sub_8044160
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244AC: .4byte 0x03001078
_080244B0: .4byte 0x080C1B18
_080244B4: .4byte 0x02023EA0

	THUMB_FUNC_START sub_80244B8
sub_80244B8: @ 0x080244B8
	push {r4, r5, r6, r7, lr}
	ldr r4, _080244F8
	movs r3, #0
	ldr r5, _080244FC
	ldr r0, [r5]
	cmp r0, #0
	beq _080244F2
	adds r7, r5, #0
	adds r6, r5, #4
_080244CA:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080244E8
_080244DA:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080244DA
_080244E8:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080244CA
_080244F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244F8: .4byte 0x03000C78
_080244FC: .4byte 0x080C1BC8

	THUMB_FUNC_START sub_8024500
sub_8024500: @ 0x08024500
	push {r4, r5, r6, r7, lr}
	ldr r4, _08024540
	movs r3, #0
	ldr r5, _08024544
	ldr r0, [r5]
	cmp r0, #0
	beq _0802453A
	adds r7, r5, #0
	adds r6, r5, #4
_08024512:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024530
_08024522:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08024522
_08024530:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024512
_0802453A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024540: .4byte 0x03001078
_08024544: .4byte 0x080C1C60

	THUMB_FUNC_START sub_8024548
sub_8024548: @ 0x08024548
	push {lr}
	ldr r1, _08024560
	ldr r0, _08024564
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_08024560: .4byte 0x08E010A4
_08024564: .4byte 0x02021D98

	THUMB_FUNC_START sub_8024568
sub_8024568: @ 0x08024568
	push {lr}
	ldr r1, _08024580
	ldr r0, _08024584
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_08024580: .4byte 0x08E010CC
_08024584: .4byte 0x03001078

	THUMB_FUNC_START sub_8024588
sub_8024588: @ 0x08024588
	push {r4, lr}
	movs r0, #0x2f
	bl sub_8034F60
	ldr r4, _080245AC
	adds r0, r4, #0
	bl sub_8024A28
	adds r0, r4, #0
	bl sub_8024A74
	adds r0, r4, #0
	bl sub_8024ADC
	adds r0, r4, #0
	bl sub_8024ECC
	b _08024648
	.align 2, 0
_080245AC: .4byte 0x02021DB0
_080245B0:
	cmp r0, #3
	bne _080245D8
	bl sub_8024DF8
	bl sub_802240C
	movs r0, #0x2f
	bl sub_8034F60
	movs r0, #0
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_8024A74
	adds r0, r4, #0
	bl sub_8024ADC
	adds r0, r4, #0
	bl sub_8024ECC
_080245D8:
	ldrb r0, [r4]
	cmp r0, #4
	bne _08024602
	bl sub_8024DF8
	bl sub_8035B48
	movs r0, #0x2f
	bl sub_8034F60
	movs r0, #0
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_8024A74
	adds r0, r4, #0
	bl sub_8024ADC
	adds r0, r4, #0
	bl sub_8024ECC
_08024602:
	bl sub_8024668
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0802463A
	cmp r0, #2
	bgt _08024618
	cmp r0, #1
	beq _08024632
	b _08024642
_08024618:
	cmp r0, #0x40
	beq _08024622
	cmp r0, #0x80
	beq _0802462A
	b _08024642
_08024622:
	adds r0, r4, #0
	bl sub_8024750
	b _08024648
_0802462A:
	adds r0, r4, #0
	bl sub_80247DC
	b _08024648
_08024632:
	adds r0, r4, #0
	bl sub_8024868
	b _08024648
_0802463A:
	adds r0, r4, #0
	bl sub_8024978
	b _08024648
_08024642:
	ldr r0, _08024664
	bl sub_80246D0
_08024648:
	bl sub_8056208
	ldrb r0, [r4]
	cmp r0, #1
	bne _080245B0
	movs r0, #1
	bl sub_8035020
	bl sub_8024DF8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024664: .4byte 0x02021DB0

	THUMB_FUNC_START sub_8024668
sub_8024668: @ 0x08024668
	push {lr}
	bl sub_802618C
	ldr r0, _08024680
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08024684
	movs r0, #1
	b _080246CA
	.align 2, 0
_08024680: .4byte 0x02020DFC
_08024684:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08024690
	movs r0, #2
	b _080246CA
_08024690:
	ldr r0, _080246A0
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080246A4
	movs r0, #0x40
	b _080246CA
	.align 2, 0
_080246A0: .4byte 0x02021DCC
_080246A4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080246B0
	movs r0, #0x80
	b _080246CA
_080246B0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080246BC
	movs r0, #0x20
	b _080246CA
_080246BC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080246C8
	movs r0, #0
	b _080246CA
_080246C8:
	movs r0, #0x10
_080246CA:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80246D0
sub_80246D0: @ 0x080246D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #2
	beq _08024708
	cmp r0, #2
	bgt _080246E4
	cmp r0, #0
	beq _080246EE
	b _08024744
_080246E4:
	cmp r0, #6
	beq _0802471C
	cmp r0, #7
	beq _08024730
	b _08024744
_080246EE:
	ldr r4, _08024704
	adds r0, r4, #0
	bl sub_8024A94
	adds r0, r4, #0
	bl sub_80249C8
	adds r0, r4, #0
	bl sub_8024F40
	b _08024748
	.align 2, 0
_08024704: .4byte 0x02021DB0
_08024708:
	ldr r0, _08024718
	bl sub_8024AB8
	adds r0, r4, #0
	bl sub_8024F6C
	b _08024748
	.align 2, 0
_08024718: .4byte 0x02021DB0
_0802471C:
	ldr r0, _0802472C
	bl sub_8024AB8
	adds r0, r4, #0
	bl sub_8024FB8
	b _08024748
	.align 2, 0
_0802472C: .4byte 0x02021DB0
_08024730:
	ldr r0, _08024740
	bl sub_8024AB8
	adds r0, r4, #0
	bl sub_8025000
	b _08024748
	.align 2, 0
_08024740: .4byte 0x02021DB0
_08024744:
	bl sub_8008220
_08024748:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8024750
sub_8024750: @ 0x08024750
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #2
	beq _08024794
	cmp r0, #2
	bgt _08024764
	cmp r0, #0
	beq _0802476E
	b _080247D0
_08024764:
	cmp r0, #6
	beq _080247A8
	cmp r0, #7
	beq _080247BC
	b _080247D0
_0802476E:
	adds r0, r4, #0
	bl sub_8024A34
	adds r0, r4, #0
	bl sub_8024A94
	ldr r0, _08024790
	bl sub_80249C8
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8024F40
	b _080247D4
	.align 2, 0
_08024790: .4byte 0x02021DB0
_08024794:
	adds r0, r4, #0
	bl sub_8024A54
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8024F6C
	b _080247D4
_080247A8:
	adds r0, r4, #0
	bl sub_8024B54
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8024FB8
	b _080247D4
_080247BC:
	adds r0, r4, #0
	bl sub_8024B74
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8025000
	b _080247D4
_080247D0:
	bl sub_8008220
_080247D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80247DC
sub_80247DC: @ 0x080247DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #2
	beq _08024820
	cmp r0, #2
	bgt _080247F0
	cmp r0, #0
	beq _080247FA
	b _0802485C
_080247F0:
	cmp r0, #6
	beq _08024834
	cmp r0, #7
	beq _08024848
	b _0802485C
_080247FA:
	adds r0, r4, #0
	bl sub_8024A44
	adds r0, r4, #0
	bl sub_8024A94
	ldr r0, _0802481C
	bl sub_80249C8
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8024F40
	b _08024860
	.align 2, 0
_0802481C: .4byte 0x02021DB0
_08024820:
	adds r0, r4, #0
	bl sub_8024A64
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8024F6C
	b _08024860
_08024834:
	adds r0, r4, #0
	bl sub_8024B64
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8024FB8
	b _08024860
_08024848:
	adds r0, r4, #0
	bl sub_8024B84
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #0
	bl sub_8025000
	b _08024860
_0802485C:
	bl sub_8008220
_08024860:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8024868
sub_8024868: @ 0x08024868
	push {lr}
	ldrb r1, [r0]
	cmp r1, #2
	beq _0802488E
	cmp r1, #2
	bgt _0802487A
	cmp r1, #0
	beq _08024888
	b _08024894
_0802487A:
	cmp r1, #7
	bgt _08024894
	cmp r1, #6
	blt _08024894
	bl sub_802491C
	b _08024898
_08024888:
	bl sub_802489C
	b _08024898
_0802488E:
	bl sub_80248D0
	b _08024898
_08024894:
	bl sub_8008220
_08024898:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802489C
sub_802489C: @ 0x0802489C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _080248BA
	cmp r0, #1
	ble _080248C8
	cmp r0, #2
	beq _080248B4
	cmp r0, #3
	beq _080248B8
	b _080248C8
_080248B4:
	movs r0, #3
	b _080248BA
_080248B8:
	movs r0, #4
_080248BA:
	strb r0, [r1]
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8008220
	b _080248CC
_080248C8:
	bl sub_8008220
_080248CC:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80248D0
sub_80248D0: @ 0x080248D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _080248E4
	cmp r0, #1
	beq _08024904
	bl sub_8008220
	b _08024914
_080248E4:
	ldr r0, _08024900
	movs r1, #1
	bl sub_801FB50
	bl sub_80260E0
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8008220
	b _08024914
	.align 2, 0
_08024900: .4byte 0x02021C8C
_08024904:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8025048
_08024914:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802491C
sub_802491C: @ 0x0802491C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #1]
	cmp r4, #1
	beq _08024940
	cmp r4, #1
	bgt _08024930
	cmp r4, #0
	beq _08024936
	b _0802496C
_08024930:
	cmp r4, #2
	beq _08024950
	b _0802496C
_08024936:
	ldr r0, _0802493C
	movs r1, #1
	b _08024954
	.align 2, 0
_0802493C: .4byte 0x02021C8C
_08024940:
	ldr r0, _0802494C
	movs r1, #2
	bl sub_801FB50
	strb r4, [r5]
	b _0802495C
	.align 2, 0
_0802494C: .4byte 0x02021C8C
_08024950:
	ldr r0, _08024968
	movs r1, #3
_08024954:
	bl sub_801FB50
	movs r0, #1
	strb r0, [r5]
_0802495C:
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8008220
	b _08024970
	.align 2, 0
_08024968: .4byte 0x02021C8C
_0802496C:
	bl sub_8008220
_08024970:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8024978
sub_8024978: @ 0x08024978
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #2
	beq _080249A6
	cmp r0, #2
	blt _080249BE
	cmp r0, #7
	bgt _080249BE
	cmp r0, #6
	blt _080249BE
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	adds r0, r1, #0
	bl sub_8024A74
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8025108
	b _080249C2
_080249A6:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	adds r0, r1, #0
	bl sub_8024A74
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8025048
	b _080249C2
_080249BE:
	bl sub_8008220
_080249C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80249C8
sub_80249C8: @ 0x080249C8
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _08024A1C
	ldr r4, _08024A14
	ldrb r0, [r2, #1]
	adds r0, r0, r4
	ldrb r1, [r0]
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	ldr r3, _08024A18
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r0, [r2, #4]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2, #1]
	cmp r0, #0
	bne _080249F8
	strb r0, [r2, #4]
_080249F8:
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _08024A1C
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	b _08024A20
	.align 2, 0
_08024A14: .4byte 0x080C1D00
_08024A18: .4byte 0x08FC488C
_08024A1C:
	ldrb r0, [r2, #5]
	subs r0, #1
_08024A20:
	strb r0, [r2, #5]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8024A28
sub_8024A28: @ 0x08024A28
	movs r1, #0
	strb r1, [r0]
	movs r1, #1
	strb r1, [r0, #1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8024A34
sub_8024A34: @ 0x08024A34
	ldr r2, _08024A40
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024A40: .4byte 0x080C1D3E

	THUMB_FUNC_START sub_8024A44
sub_8024A44: @ 0x08024A44
	ldr r2, _08024A50
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024A50: .4byte 0x080C1D42

	THUMB_FUNC_START sub_8024A54
sub_8024A54: @ 0x08024A54
	ldr r2, _08024A60
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024A60: .4byte 0x080C1D56

	THUMB_FUNC_START sub_8024A64
sub_8024A64: @ 0x08024A64
	ldr r2, _08024A70
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024A70: .4byte 0x080C1D58

	THUMB_FUNC_START sub_8024A74
sub_8024A74: @ 0x08024A74
	movs r1, #0
	strb r1, [r0, #2]
	movs r1, #3
	strb r1, [r0, #3]
	bx lr
	.byte 0x00, 0x00
	.byte 0x01, 0x1C, 0xC8, 0x78, 0x00, 0x28, 0x01, 0xD1, 0x03, 0x20, 0x00, 0xE0, 0x01, 0x38, 0xC8, 0x70
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8024A94
sub_8024A94: @ 0x08024A94
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _08024AB0
	ldr r1, _08024AAC
	ldrb r0, [r2, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #2]
	movs r0, #3
	b _08024AB2
	.align 2, 0
_08024AAC: .4byte 0x080C1D09
_08024AB0:
	subs r0, #1
_08024AB2:
	strb r0, [r2, #3]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8024AB8
sub_8024AB8: @ 0x08024AB8
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _08024AD4
	ldr r1, _08024AD0
	ldrb r0, [r2, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #2]
	movs r0, #3
	b _08024AD6
	.align 2, 0
_08024AD0: .4byte 0x080C1D24
_08024AD4:
	subs r0, #1
_08024AD6:
	strb r0, [r2, #3]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8024ADC
sub_8024ADC: @ 0x08024ADC
	ldr r2, _08024AF8
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0
	strb r2, [r0, #4]
	ldr r2, _08024AFC
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r1, [r1]
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_08024AF8: .4byte 0x080C1D00
_08024AFC: .4byte 0x08FC488C
	.byte 0x02, 0x1C, 0x50, 0x79, 0x00, 0x28, 0x11, 0xD1, 0x06, 0x49, 0x50, 0x78, 0x40, 0x18, 0x01, 0x78
	.byte 0x05, 0x48, 0x89, 0x00, 0x09, 0x18, 0x10, 0x79, 0x09, 0x68, 0xC0, 0x00, 0x40, 0x18, 0x00, 0x78
	.byte 0x05, 0xE0, 0x00, 0x00, 0x00, 0x1D, 0x0C, 0x08, 0x8C, 0x48, 0xFC, 0x08, 0x01, 0x38, 0x50, 0x71
	.byte 0x70, 0x47, 0x00, 0x00, 0x02, 0x4A, 0x41, 0x78, 0x89, 0x18, 0x09, 0x78, 0x41, 0x70, 0x70, 0x47
	.byte 0x62, 0x1D, 0x0C, 0x08, 0x02, 0x4A, 0x41, 0x78, 0x89, 0x18, 0x09, 0x78, 0x41, 0x70, 0x70, 0x47
	.byte 0x65, 0x1D, 0x0C, 0x08

	THUMB_FUNC_START sub_8024B54
sub_8024B54: @ 0x08024B54
	ldr r2, _08024B60
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024B60: .4byte 0x080C1D68

	THUMB_FUNC_START sub_8024B64
sub_8024B64: @ 0x08024B64
	ldr r2, _08024B70
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024B70: .4byte 0x080C1D6B

	THUMB_FUNC_START sub_8024B74
sub_8024B74: @ 0x08024B74
	ldr r2, _08024B80
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024B80: .4byte 0x080C1D6E

	THUMB_FUNC_START sub_8024B84
sub_8024B84: @ 0x08024B84
	ldr r2, _08024B90
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08024B90: .4byte 0x080C1D71

	THUMB_FUNC_START sub_8024B94
sub_8024B94: @ 0x08024B94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _08024C04
	mov sb, r0
	movs r1, #0
	ldr r2, _08024C08
	mov sl, r2
_08024BAC:
	ldr r0, [sp]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08024C14
	ldr r2, _08024C0C
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _08024C5C
	ldr r6, _08024C10
	ldr r2, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	mov ip, r1
_08024BD8:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08024BD8
	b _08024C5C
	.align 2, 0
_08024C04: .4byte 0x02018418
_08024C08: .4byte 0x08FC488C
_08024C0C: .4byte 0x080C1CFC
_08024C10: .4byte 0xFFFFF3FF
_08024C14:
	ldr r2, _08024C80
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _08024C5C
	ldr r6, _08024C84
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_08024C38:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08024C38
_08024C5C:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #3
	bls _08024BAC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024C80: .4byte 0x080C1CF8
_08024C84: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8024C88
sub_8024C88: @ 0x08024C88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08024D30
	ldrb r0, [r0, #1]
	adds r0, r0, r1
	ldrb r7, [r0]
	ldr r2, _08024D34
	ldr r1, _08024D38
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r3, r2, #0
	movs r4, #0
	mov sb, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r3
	mov r8, r0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024CE4
	ldr r6, _08024D3C
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	mov ip, r0
_08024CC0:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024CC0
_08024CE4:
	lsls r0, r7, #2
	add r0, sb
	ldr r5, [r0]
	mov r3, r8
	movs r4, #0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024D24
	ldr r6, _08024D3C
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_08024CFC:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024CFC
_08024D24:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D30: .4byte 0x080C1D04
_08024D34: .4byte 0x02018410
_08024D38: .4byte 0x08FC488C
_08024D3C: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8024D40
sub_8024D40: @ 0x08024D40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08024DE8
	ldrb r0, [r0, #1]
	adds r0, r0, r1
	ldrb r7, [r0]
	ldr r2, _08024DEC
	ldr r1, _08024DF0
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r3, r2, #0
	movs r4, #0
	mov sb, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r3
	mov r8, r0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024D9C
	ldr r6, _08024DF4
	ldr r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	mov ip, r0
_08024D78:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024D78
_08024D9C:
	lsls r0, r7, #2
	add r0, sb
	ldr r5, [r0]
	mov r3, r8
	movs r4, #0
	ldrb r1, [r5, #1]
	cmp r4, r1
	bhs _08024DDC
	ldr r6, _08024DF4
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_08024DB4:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08024DB4
_08024DDC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024DE8: .4byte 0x080C1D06
_08024DEC: .4byte 0x02018410
_08024DF0: .4byte 0x08FC488C
_08024DF4: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8024DF8
sub_8024DF8: @ 0x08024DF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _08024E40
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _08024E44
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_08024E18:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _08024E48
	mov ip, r0
_08024E20:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08024E4C
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _08024E54
	.align 2, 0
_08024E40: .4byte 0x02000000
_08024E44: .4byte 0xFFFFFC1F
_08024E48: .4byte 0x000001FF
_08024E4C:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_08024E54:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08024E72
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _08024E78
_08024E72:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_08024E78:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08024E96
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _08024E9E
_08024E96:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_08024E9E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _08024E20
	ldr r0, _08024EC8
	bl sub_80081DC
	bl sub_8008220
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08024E18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024EC8: .4byte 0x080454E1

	THUMB_FUNC_START sub_8024ECC
sub_8024ECC: @ 0x08024ECC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8025170
	adds r0, r4, #0
	bl sub_80251D8
	adds r0, r4, #0
	bl sub_8025228
	adds r0, r4, #0
	bl sub_80252DC
	adds r0, r4, #0
	bl sub_8024B94
	adds r0, r4, #0
	bl sub_8025340
	adds r0, r4, #0
	bl sub_80253A4
	adds r0, r4, #0
	bl sub_80253E8
	bl sub_8045718
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045434
	bl sub_804549C
	ldr r0, _08024F34
	bl sub_80081DC
	bl sub_8008220
	ldr r1, _08024F38
	ldr r2, _08024F3C
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024F34: .4byte 0x080454C9
_08024F38: .4byte 0x0400000E
_08024F3C: .4byte 0x00001F03

	THUMB_FUNC_START sub_8024F40
sub_8024F40: @ 0x08024F40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024B94
	adds r0, r4, #0
	bl sub_8025340
	adds r0, r4, #0
	bl sub_8025424
	ldr r0, _08024F68
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024F68: .4byte 0x080454C9

	THUMB_FUNC_START sub_8024F6C
sub_8024F6C: @ 0x08024F6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024C88
	adds r0, r4, #0
	bl sub_8025460
	ldr r1, _08024FA8
	ldr r2, _08024FAC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08024FB0
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024FA8: .4byte 0x0400000C
_08024FAC: .4byte 0x00001E0A
_08024FB0: .4byte 0x080454C9
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8024FB8
sub_8024FB8: @ 0x08024FB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024D40
	adds r0, r4, #0
	bl sub_8025460
	ldr r1, _08024FF4
	ldr r2, _08024FF8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08024FFC
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024FF4: .4byte 0x0400000C
_08024FF8: .4byte 0x00001D0A
_08024FFC: .4byte 0x080454C9

	THUMB_FUNC_START sub_8025000
sub_8025000: @ 0x08025000
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8024D40
	adds r0, r4, #0
	bl sub_8025460
	ldr r1, _0802503C
	ldr r2, _08025040
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08025044
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802503C: .4byte 0x0400000C
_08025040: .4byte 0x00001D0A
_08025044: .4byte 0x080454C9

	THUMB_FUNC_START sub_8025048
sub_8025048: @ 0x08025048
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08025094
	ldr r1, _08025098
	ldr r0, _0802509C
	ldrb r4, [r0]
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	subs r5, #0x10
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	adds r0, r6, #0
	bl sub_8025424
	ldr r0, _080250A0
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080250A4
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025094: .4byte 0x02018410
_08025098: .4byte 0x08FC488C
_0802509C: .4byte 0x080C1D04
_080250A0: .4byte 0x080454C9
_080250A4: .4byte 0x0000FBFF
	.byte 0x70, 0xB5, 0x06, 0x1C, 0x11, 0x4D, 0x12, 0x49
	.byte 0x12, 0x48, 0x04, 0x78, 0xA4, 0x00, 0x64, 0x18, 0x20, 0x68, 0x29, 0x1C, 0x32, 0x1C, 0x00, 0xF0
	.byte 0xFB, 0xF8, 0x10, 0x3D, 0x20, 0x68, 0x29, 0x1C, 0x32, 0x1C, 0x00, 0xF0, 0xF5, 0xF8, 0x30, 0x1C
	.byte 0x00, 0xF0, 0xA8, 0xF9, 0x0A, 0x48, 0xE3, 0xF7, 0x81, 0xF8, 0xE3, 0xF7, 0xA1, 0xF8, 0x20, 0xF0
	.byte 0xDD, 0xF9, 0x80, 0x22, 0xD2, 0x04, 0x11, 0x88, 0x06, 0x48, 0x08, 0x40, 0x10, 0x80, 0x70, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x10, 0x84, 0x01, 0x02, 0x8C, 0x48, 0xFC, 0x08, 0x06, 0x1D, 0x0C, 0x08
	.byte 0xC9, 0x54, 0x04, 0x08, 0xFF, 0xFB, 0x00, 0x00

	THUMB_FUNC_START sub_8025108
sub_8025108: @ 0x08025108
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08025154
	ldr r1, _08025158
	ldr r0, _0802515C
	ldrb r4, [r0]
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	subs r5, #0x10
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80252B8
	adds r0, r6, #0
	bl sub_8025424
	ldr r0, _08025160
	bl sub_80081DC
	bl sub_8008220
	bl sub_804549C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08025164
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025154: .4byte 0x02018410
_08025158: .4byte 0x08FC488C
_0802515C: .4byte 0x080C1D06
_08025160: .4byte 0x080454C9
_08025164: .4byte 0x0000FBFF
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8025170
sub_8025170: @ 0x08025170
	push {r4, r5, r6, r7, lr}
	ldr r0, _080251C0
	ldr r4, _080251C4
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r7, #0
	movs r0, #0xd0
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r4, #0
_0802518C:
	ldr r0, _080251C8
	adds r0, r4, r0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080251CC
	adds r0, r4, r0
	adds r1, r5, #0
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x40
	adds r6, #0x40
	adds r4, #0x3c
	adds r7, #1
	cmp r7, #0x13
	bls _0802518C
	ldr r0, _080251D0
	ldr r1, _080251D4
	movs r2, #0x10
	bl CpuSet
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080251C0: .4byte 0x08DE0800
_080251C4: .4byte 0x02008400
_080251C8: .4byte 0x08DE168C
_080251CC: .4byte 0x08DE1B3C
_080251D0: .4byte 0x08DE1FEC
_080251D4: .4byte 0x020000A0

	THUMB_FUNC_START sub_80251D8
sub_80251D8: @ 0x080251D8
	push {r4, r5, lr}
	ldr r0, _08025210
	ldr r1, _08025214
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_080251E6:
	ldr r0, _08025218
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0802521C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _080251E6
	ldr r0, _08025220
	ldr r1, _08025224
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025210: .4byte 0x08DDB898
_08025214: .4byte 0x02000400
_08025218: .4byte 0x08DE02D0
_0802521C: .4byte 0x0200FC00
_08025220: .4byte 0x08DE0780
_08025224: .4byte 0x02000000

	THUMB_FUNC_START sub_8025228
sub_8025228: @ 0x08025228
	push {r4, lr}
	ldr r0, _08025250
	ldr r4, _08025254
	ldr r1, [r4]
	bl LZ77UnCompWram
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _08025258
	ldr r1, _0802525C
	movs r2, #0x50
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025250: .4byte 0x08DE200C
_08025254: .4byte 0x08E010F4
_08025258: .4byte 0x08DE2B98
_0802525C: .4byte 0x02000200
	.byte 0xF0, 0xB5, 0x02, 0x1C, 0x0C, 0x1C, 0x05, 0x98, 0x1B, 0x06, 0x1B, 0x0E, 0x00, 0x06, 0x00, 0x0E
	.byte 0x00, 0x26, 0x51, 0x78, 0x8E, 0x42, 0x19, 0xD2, 0x0E, 0x4F, 0x85, 0x02, 0xC0, 0x20, 0x00, 0x01
	.byte 0x05, 0x40, 0x9B, 0x02, 0x03, 0x40, 0x52, 0x68, 0x8C, 0x46, 0x50, 0x88, 0x00, 0x04, 0x11, 0x88
	.byte 0x08, 0x43, 0x38, 0x40, 0x20, 0x60, 0x28, 0x43, 0x01, 0xC4, 0x90, 0x88, 0x38, 0x40, 0x20, 0x60
	.byte 0x18, 0x43, 0x01, 0xC4, 0x08, 0x32, 0x01, 0x36, 0x66, 0x45, 0xEE, 0xD3, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xFF, 0xF3, 0xFF, 0xFF

	THUMB_FUNC_START sub_80252B8
sub_80252B8: @ 0x080252B8
	push {r4, lr}
	movs r2, #0
	ldrb r0, [r0, #1]
	cmp r2, r0
	bhs _080252D4
	movs r4, #0x80
	lsls r4, r4, #2
	movs r3, #0x80
	lsls r3, r3, #0x11
_080252CA:
	stm r1!, {r4}
	stm r1!, {r3}
	adds r2, #1
	cmp r2, r0
	blo _080252CA
_080252D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80252DC
sub_80252DC: @ 0x080252DC
	push {r4, r5, lr}
	ldr r0, _0802533C
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	movs r1, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r4, r5, #0
_080252F0:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _080252F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802533C: .4byte 0x02018400

	THUMB_FUNC_START sub_8025340
sub_8025340: @ 0x08025340
	push {r4, r5, r6, r7, lr}
	ldr r2, _08025394
	ldrb r1, [r0, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _08025398
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r0, #4]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r5, r0, r1
	ldr r3, _0802539C
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _0802538C
	ldr r6, _080253A0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802536A:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802536A
_0802538C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025394: .4byte 0x080C1D00
_08025398: .4byte 0x08FC488C
_0802539C: .4byte 0x02018408
_080253A0: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_80253A4
sub_80253A4: @ 0x080253A4
	ldr r0, _080253C8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080253CC
	strh r1, [r0]
	ldr r0, _080253D0
	strh r1, [r0]
	ldr r0, _080253D4
	strh r1, [r0]
	ldr r0, _080253D8
	strh r1, [r0]
	ldr r0, _080253DC
	strh r1, [r0]
	ldr r0, _080253E0
	strh r1, [r0]
	ldr r0, _080253E4
	strh r1, [r0]
	bx lr
	.align 2, 0
_080253C8: .4byte 0x02024240
_080253CC: .4byte 0x02024214
_080253D0: .4byte 0x0202422C
_080253D4: .4byte 0x02024248
_080253D8: .4byte 0x0202420C
_080253DC: .4byte 0x0202424C
_080253E0: .4byte 0x02024218
_080253E4: .4byte 0x02024204

	THUMB_FUNC_START sub_80253E8
sub_80253E8: @ 0x080253E8
	ldr r2, _0802540C
	ldr r3, _08025410
	adds r1, r3, #0
	strh r1, [r2]
	ldr r3, _08025414
	ldr r2, _08025418
	ldr r1, _0802541C
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08025420
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802540C: .4byte 0x02024228
_08025410: .4byte 0x000008D8
_08025414: .4byte 0x02024238
_08025418: .4byte 0x080C1D1A
_0802541C: .4byte 0x080C1D11
_08025420: .4byte 0x02024230

	THUMB_FUNC_START sub_8025424
sub_8025424: @ 0x08025424
	ldr r2, _08025448
	ldr r3, _0802544C
	adds r1, r3, #0
	strh r1, [r2]
	ldr r3, _08025450
	ldr r2, _08025454
	ldr r1, _08025458
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _0802545C
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025448: .4byte 0x02024228
_0802544C: .4byte 0x000008D8
_08025450: .4byte 0x02024238
_08025454: .4byte 0x080C1D1A
_08025458: .4byte 0x080C1D11
_0802545C: .4byte 0x02024230

	THUMB_FUNC_START sub_8025460
sub_8025460: @ 0x08025460
	ldr r2, _08025484
	ldr r3, _08025488
	adds r1, r3, #0
	strh r1, [r2]
	ldr r3, _0802548C
	ldr r2, _08025490
	ldr r1, _08025494
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08025498
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08025484: .4byte 0x02024228
_08025488: .4byte 0x00000CD8
_0802548C: .4byte 0x02024238
_08025490: .4byte 0x080C1D1A
_08025494: .4byte 0x080C1D11
_08025498: .4byte 0x02024230

	THUMB_FUNC_START sub_802549C
sub_802549C: @ 0x0802549C
	push {r4, lr}
	sub sp, #0xc
	ldr r4, _080254D4
	ldr r0, [r4]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080254CC
	mov r0, sp
	bl sub_8021A14
	mov r2, sp
	ldr r1, _080254D8
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #8]
	mov r0, sp
	bl sub_80219E4
_080254CC:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080254D4: .4byte 0x02023FC0
_080254D8: .4byte 0x080C1D80

	THUMB_FUNC_START sub_80254DC
sub_80254DC: @ 0x080254DC
	movs r1, #0
	ldr r3, _080254F4
	movs r2, #0
_080254E2:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _080254E2
	bx lr
	.align 2, 0
_080254F4: .4byte 0x02021DB8

	THUMB_FUNC_START sub_80254F8
sub_80254F8: @ 0x080254F8
	push {r4, lr}
	movs r2, #0
	ldr r4, _0802551C
	movs r3, #1
_08025500:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802550A
	strb r3, [r1]
_0802550A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08025500
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802551C: .4byte 0x02021DB8

	THUMB_FUNC_START sub_8025520
sub_8025520: @ 0x08025520
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08025530
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08025530: .4byte 0x02021DB8

	THUMB_FUNC_START sub_8025534
sub_8025534: @ 0x08025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08025540
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08025540: .4byte 0x02021DB8

	THUMB_FUNC_START sub_8025544
sub_8025544: @ 0x08025544
	movs r2, #0
	movs r1, #0
	ldr r3, _08025564
_0802554A:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #2
	bne _08025554
	movs r2, #1
_08025554:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _0802554A
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08025564: .4byte 0x02021DB8

	THUMB_FUNC_START sub_8025568
sub_8025568: @ 0x08025568
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	ldr r0, _0802558C
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _080255A0
	adds r1, r3, #0
_0802557C:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r4
	bne _08025590
	movs r0, #0
	b _080255A2
	.align 2, 0
_0802558C: .4byte 0x080C1D84
_08025590:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802557C
_080255A0:
	movs r0, #1
_080255A2:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80255A8
sub_80255A8: @ 0x080255A8
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #1
	bl sub_80257D8
	bl sub_80258AC
_080255B6:
	bl sub_8025768
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x10
	beq _0802563E
	cmp r1, #0x10
	bgt _080255E4
	cmp r1, #2
	bne _080255CC
	b _080256D0
_080255CC:
	cmp r1, #2
	bgt _080255D6
	cmp r1, #1
	beq _08025674
	b _0802570C
_080255D6:
	cmp r1, #4
	bne _080255DC
	b _080256E2
_080255DC:
	cmp r1, #8
	bne _080255E2
	b _080256E2
_080255E2:
	b _0802570C
_080255E4:
	cmp r1, #0x80
	beq _0802561A
	cmp r1, #0x80
	bgt _080255F6
	cmp r1, #0x20
	beq _0802562C
	cmp r1, #0x40
	beq _08025608
	b _0802570C
_080255F6:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08025662
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08025650
	b _0802570C
_08025608:
	bl sub_8025CBC
	bl sub_8025924
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_0802561A:
	bl sub_8025CBC
	bl sub_80259B4
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_0802562C:
	bl sub_8025CBC
	bl sub_8025A44
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_0802563E:
	bl sub_8025CBC
	bl sub_8025AD4
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_08025650:
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025BA4
	bl sub_8025C34
	b _080256EA
_08025662:
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025BC0
	bl sub_8025C34
	b _080256EA
_08025674:
	bl sub_8025C50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0802568E
	movs r4, #0
	movs r5, #1
	bl sub_8025CAC
	bl sub_8025C24
	b _080256B6
_0802568E:
	bl sub_8025BEC
	bl sub_8025CAC
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025CCC
	bl sub_8025C44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _080256C0
	bl sub_8025CBC
	bl sub_8025BDC
_080256B6:
	bl sub_8025E80
	bl sub_8025CCC
	b _080256CC
_080256C0:
	bl sub_8025BC0
	bl sub_8025C34
	bl sub_8025E80
_080256CC:
	movs r0, #0x37
	b _080256F4
_080256D0:
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025BA4
	bl sub_8025C34
	b _080256EA
_080256E2:
	bl sub_8025CBC
	bl sub_8025BDC
_080256EA:
	bl sub_8025E80
	bl sub_8025CCC
_080256F2:
	movs r0, #0x36
_080256F4:
	bl sub_8034F60
	ldr r0, _08025708
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026070
	b _08025722
	.align 2, 0
_08025708: .4byte 0x08026015
_0802570C:
	bl sub_8025E80
	bl sub_8025CCC
	ldr r0, _08025734
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026070
_08025722:
	bl sub_8025C08
	bl sub_8025C74
	cmp r4, #0
	beq _08025730
	b _080255B6
_08025730:
	b _08025740
	.align 2, 0
_08025734: .4byte 0x08026015
_08025738:
	bl sub_8025C08
	bl sub_8025C74
_08025740:
	bl sub_8025E80
	bl sub_8025CCC
	ldr r0, _08025764
	bl sub_80081DC
	bl sub_8008220
	bl sub_8025C88
	cmp r0, #0
	bne _08025738
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08025764: .4byte 0x08026015

	THUMB_FUNC_START sub_8025768
sub_8025768: @ 0x08025768
	push {r4, lr}
	movs r4, #0
	bl sub_802618C
	movs r2, #1
	ldr r0, _080257CC
	ldrh r3, [r0]
	ldr r0, _080257D0
	ands r0, r3
	cmp r0, #0
	beq _08025798
	movs r1, #0
_08025780:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0802578A
	adds r4, r2, #0
_0802578A:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08025780
_08025798:
	movs r2, #0x10
	ldr r0, _080257D4
	ldrh r3, [r0]
	movs r0, #0xfc
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080257C2
	movs r1, #0
_080257AA:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080257B4
	adds r4, r2, #0
_080257B4:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _080257AA
_080257C2:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080257CC: .4byte 0x02020DFC
_080257D0: .4byte 0x000003FF
_080257D4: .4byte 0x02021DCC

	THUMB_FUNC_START sub_80257D8
sub_80257D8: @ 0x080257D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _08025820
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _08025824
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_080257F8:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _08025828
	mov ip, r0
_08025800:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0802582C
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _08025834
	.align 2, 0
_08025820: .4byte 0x02000000
_08025824: .4byte 0xFFFFFC1F
_08025828: .4byte 0x000001FF
_0802582C:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_08025834:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08025852
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _08025858
_08025852:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_08025858:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08025876
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0802587E
_08025876:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_0802587E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _08025800
	ldr r0, _080258A8
	bl sub_80081DC
	bl sub_8008220
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080257F8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080258A8: .4byte 0x080454E1

	THUMB_FUNC_START sub_80258AC
sub_80258AC: @ 0x080258AC
	push {lr}
	bl sub_8025B64
	bl sub_8025F38
	bl sub_8025F64
	bl sub_8025DB4
	bl sub_8025CCC
	ldr r0, _080258E0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026060
	ldr r0, _080258E4
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_080258E0: .4byte 0x0802601D
_080258E4: .4byte 0x08025FFD

	THUMB_FUNC_START sub_80258E8
sub_80258E8: @ 0x080258E8
	push {r4, r5, r6, lr}
	ldr r1, _08025918
	movs r0, #0xff
	strh r0, [r1]
	movs r4, #0
	ldr r6, _0802591C
	movs r5, #0x1f
_080258F6:
	adds r0, r4, #0
	ands r0, r5
	strh r0, [r6]
	ldr r0, _08025920
	bl sub_80081DC
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080258F6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025918: .4byte 0x02024228
_0802591C: .4byte 0x02024230
_08025920: .4byte 0x0804549D

	THUMB_FUNC_START sub_8025924
sub_8025924: @ 0x08025924
	ldr r1, _0802593C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _080259B2
	lsls r0, r0, #2
	ldr r1, _08025940
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802593C: .4byte 0x08E010F8
_08025940: .4byte 0x08025944
_08025944: @ jump table
	.4byte _08025970 @ case 0
	.4byte _08025976 @ case 1
	.4byte _0802597C @ case 2
	.4byte _08025982 @ case 3
	.4byte _08025988 @ case 4
	.4byte _0802598E @ case 5
	.4byte _08025994 @ case 6
	.4byte _0802599A @ case 7
	.4byte _080259A0 @ case 8
	.4byte _080259A6 @ case 9
	.4byte _080259AC @ case 10
_08025970:
	ldr r1, [r2]
	movs r0, #1
	b _080259B0
_08025976:
	ldr r1, [r2]
	movs r0, #4
	b _080259B0
_0802597C:
	ldr r1, [r2]
	movs r0, #5
	b _080259B0
_08025982:
	ldr r1, [r2]
	movs r0, #6
	b _080259B0
_08025988:
	ldr r1, [r2]
	movs r0, #7
	b _080259B0
_0802598E:
	ldr r1, [r2]
	movs r0, #8
	b _080259B0
_08025994:
	ldr r1, [r2]
	movs r0, #9
	b _080259B0
_0802599A:
	ldr r1, [r2]
	movs r0, #0
	b _080259B0
_080259A0:
	ldr r1, [r2]
	movs r0, #0xa
	b _080259B0
_080259A6:
	ldr r1, [r2]
	movs r0, #0xa
	b _080259B0
_080259AC:
	ldr r1, [r2]
	movs r0, #2
_080259B0:
	strb r0, [r1, #1]
_080259B2:
	bx lr

	THUMB_FUNC_START sub_80259B4
sub_80259B4: @ 0x080259B4
	ldr r1, _080259CC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _08025A42
	lsls r0, r0, #2
	ldr r1, _080259D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080259CC: .4byte 0x08E010F8
_080259D0: .4byte 0x080259D4
_080259D4: @ jump table
	.4byte _08025A00 @ case 0
	.4byte _08025A06 @ case 1
	.4byte _08025A0C @ case 2
	.4byte _08025A12 @ case 3
	.4byte _08025A18 @ case 4
	.4byte _08025A1E @ case 5
	.4byte _08025A24 @ case 6
	.4byte _08025A2A @ case 7
	.4byte _08025A30 @ case 8
	.4byte _08025A36 @ case 9
	.4byte _08025A3C @ case 10
_08025A00:
	ldr r1, [r2]
	movs r0, #7
	b _08025A40
_08025A06:
	ldr r1, [r2]
	movs r0, #0
	b _08025A40
_08025A0C:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025A40
_08025A12:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025A40
_08025A18:
	ldr r1, [r2]
	movs r0, #1
	b _08025A40
_08025A1E:
	ldr r1, [r2]
	movs r0, #2
	b _08025A40
_08025A24:
	ldr r1, [r2]
	movs r0, #3
	b _08025A40
_08025A2A:
	ldr r1, [r2]
	movs r0, #4
	b _08025A40
_08025A30:
	ldr r1, [r2]
	movs r0, #5
	b _08025A40
_08025A36:
	ldr r1, [r2]
	movs r0, #6
	b _08025A40
_08025A3C:
	ldr r1, [r2]
	movs r0, #8
_08025A40:
	strb r0, [r1, #1]
_08025A42:
	bx lr

	THUMB_FUNC_START sub_8025A44
sub_8025A44: @ 0x08025A44
	ldr r1, _08025A5C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _08025AD2
	lsls r0, r0, #2
	ldr r1, _08025A60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025A5C: .4byte 0x08E010F8
_08025A60: .4byte 0x08025A64
_08025A64: @ jump table
	.4byte _08025A90 @ case 0
	.4byte _08025A96 @ case 1
	.4byte _08025A9C @ case 2
	.4byte _08025AA2 @ case 3
	.4byte _08025AA8 @ case 4
	.4byte _08025AAE @ case 5
	.4byte _08025AB4 @ case 6
	.4byte _08025ABA @ case 7
	.4byte _08025AC0 @ case 8
	.4byte _08025AC6 @ case 9
	.4byte _08025ACC @ case 10
_08025A90:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025AD0
_08025A96:
	ldr r1, [r2]
	movs r0, #3
	b _08025AD0
_08025A9C:
	ldr r1, [r2]
	movs r0, #1
	b _08025AD0
_08025AA2:
	ldr r1, [r2]
	movs r0, #2
	b _08025AD0
_08025AA8:
	ldr r1, [r2]
	movs r0, #6
	b _08025AD0
_08025AAE:
	ldr r1, [r2]
	movs r0, #4
	b _08025AD0
_08025AB4:
	ldr r1, [r2]
	movs r0, #5
	b _08025AD0
_08025ABA:
	ldr r1, [r2]
	movs r0, #9
	b _08025AD0
_08025AC0:
	ldr r1, [r2]
	movs r0, #7
	b _08025AD0
_08025AC6:
	ldr r1, [r2]
	movs r0, #8
	b _08025AD0
_08025ACC:
	ldr r1, [r2]
	movs r0, #0
_08025AD0:
	strb r0, [r1, #1]
_08025AD2:
	bx lr

	THUMB_FUNC_START sub_8025AD4
sub_8025AD4: @ 0x08025AD4
	ldr r1, _08025AEC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _08025B62
	lsls r0, r0, #2
	ldr r1, _08025AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025AEC: .4byte 0x08E010F8
_08025AF0: .4byte 0x08025AF4
_08025AF4: @ jump table
	.4byte _08025B20 @ case 0
	.4byte _08025B26 @ case 1
	.4byte _08025B2C @ case 2
	.4byte _08025B32 @ case 3
	.4byte _08025B38 @ case 4
	.4byte _08025B3E @ case 5
	.4byte _08025B44 @ case 6
	.4byte _08025B4A @ case 7
	.4byte _08025B50 @ case 8
	.4byte _08025B56 @ case 9
	.4byte _08025B5C @ case 10
_08025B20:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025B60
_08025B26:
	ldr r1, [r2]
	movs r0, #2
	b _08025B60
_08025B2C:
	ldr r1, [r2]
	movs r0, #3
	b _08025B60
_08025B32:
	ldr r1, [r2]
	movs r0, #1
	b _08025B60
_08025B38:
	ldr r1, [r2]
	movs r0, #5
	b _08025B60
_08025B3E:
	ldr r1, [r2]
	movs r0, #6
	b _08025B60
_08025B44:
	ldr r1, [r2]
	movs r0, #4
	b _08025B60
_08025B4A:
	ldr r1, [r2]
	movs r0, #8
	b _08025B60
_08025B50:
	ldr r1, [r2]
	movs r0, #9
	b _08025B60
_08025B56:
	ldr r1, [r2]
	movs r0, #7
	b _08025B60
_08025B5C:
	ldr r1, [r2]
	movs r0, #0
_08025B60:
	strb r0, [r1, #1]
_08025B62:
	bx lr

	THUMB_FUNC_START sub_8025B64
sub_8025B64: @ 0x08025B64
	push {r4, lr}
	movs r1, #0
	ldr r3, _08025B98
	ldr r4, _08025B9C
	movs r2, #0
_08025B6E:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _08025B6E
	ldr r0, [r3]
	movs r1, #0
	strb r1, [r0]
	ldr r2, [r3]
	movs r0, #1
	strb r0, [r2, #1]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025B98: .4byte 0x08E010F8
_08025B9C: .4byte 0x02021DC0
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8025BA4
sub_8025BA4: @ 0x08025BA4
	ldr r0, _08025BB4
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08025BB8
	movs r0, #7
	b _08025BBA
	.align 2, 0
_08025BB4: .4byte 0x08E010F8
_08025BB8:
	subs r0, #1
_08025BBA:
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8025BC0
sub_8025BC0: @ 0x08025BC0
	ldr r0, _08025BD0
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #6
	bls _08025BD4
	movs r0, #0
	b _08025BD6
	.align 2, 0
_08025BD0: .4byte 0x08E010F8
_08025BD4:
	adds r0, #1
_08025BD6:
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8025BDC
sub_8025BDC: @ 0x08025BDC
	ldr r0, _08025BE8
	ldr r1, [r0]
	movs r0, #0xa
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08025BE8: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025BEC
sub_8025BEC: @ 0x08025BEC
	ldr r0, _08025C00
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	cmp r2, #9
	bhi _08025BFE
	ldr r1, _08025C04
	ldrb r0, [r0]
	adds r0, r0, r1
	strb r2, [r0]
_08025BFE:
	bx lr
	.align 2, 0
_08025C00: .4byte 0x08E010F8
_08025C04: .4byte 0x02021DC0

	THUMB_FUNC_START sub_8025C08
sub_8025C08: @ 0x08025C08
	ldr r0, _08025C18
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	cmp r0, #0x1d
	bls _08025C1C
	movs r0, #0
	b _08025C1E
	.align 2, 0
_08025C18: .4byte 0x08E010F8
_08025C1C:
	adds r0, #1
_08025C1E:
	strb r0, [r1, #4]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8025C24
sub_8025C24: @ 0x08025C24
	ldr r0, _08025C30
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08025C30: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025C34
sub_8025C34: @ 0x08025C34
	ldr r0, _08025C40
	ldr r1, [r0]
	movs r0, #0xf
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08025C40: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025C44
sub_8025C44: @ 0x08025C44
	ldr r0, _08025C4C
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08025C4C: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025C50
sub_8025C50: @ 0x08025C50
	ldr r0, _08025C58
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_08025C58: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025C5C
sub_8025C5C: @ 0x08025C5C
	movs r1, #0
	ldr r0, _08025C70
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0xf
	bls _08025C6A
	movs r1, #1
_08025C6A:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08025C70: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025C74
sub_8025C74: @ 0x08025C74
	ldr r0, _08025C84
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025C82
	subs r0, #1
	strb r0, [r1, #5]
_08025C82:
	bx lr
	.align 2, 0
_08025C84: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025C88
sub_8025C88: @ 0x08025C88
	movs r1, #0
	ldr r0, _08025CA8
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08025CA2
	movs r1, #1
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08025CA2
	movs r1, #2
_08025CA2:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08025CA8: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025CAC
sub_8025CAC: @ 0x08025CAC
	ldr r0, _08025CB8
	ldr r1, [r0]
	movs r0, #8
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08025CB8: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025CBC
sub_8025CBC: @ 0x08025CBC
	ldr r0, _08025CC8
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08025CC8: .4byte 0x08E010F8

	THUMB_FUNC_START sub_8025CCC
sub_8025CCC: @ 0x08025CCC
	push {r4, r5, r6, lr}
	bl sub_8025C50
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_8025C88
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08025D44
	ldr r0, _08025D38
	lsls r3, r4, #2
	adds r3, r3, r0
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	movs r2, #0xff
	adds r5, r2, #0
	ands r5, r1
	adds r5, #0x30
	ldr r4, _08025D3C
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r2
	orrs r0, r5
	adds r1, r4, #0
	adds r1, #0x40
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	ldr r2, _08025D40
	adds r5, r2, #0
	ands r5, r1
	adds r5, #0x48
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r2
	orrs r0, r5
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #2
	strh r6, [r0]
	b _08025DA0
	.align 2, 0
_08025D38: .4byte 0x08E01248
_08025D3C: .4byte 0x02018400
_08025D40: .4byte 0x000001FF
_08025D44:
	subs r2, r6, #1
	lsls r2, r2, #0x18
	ldr r1, _08025DA8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r2, r2, #0x15
	adds r2, r2, r0
	ldr r0, [r2, #4]
	ldrh r1, [r0]
	movs r3, #0xff
	adds r5, r3, #0
	ands r5, r1
	adds r5, #0x30
	ldr r0, _08025DAC
	mov ip, r0
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r3
	orrs r0, r5
	mov r1, ip
	adds r1, #0x40
	movs r4, #0
	strh r0, [r1]
	ldr r0, [r2, #4]
	ldrh r1, [r0, #2]
	ldr r3, _08025DB0
	adds r5, r3, #0
	ands r5, r1
	adds r5, #0x48
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r3
	orrs r0, r5
	mov r1, ip
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r2, #4]
	ldrh r1, [r0, #4]
	mov r0, ip
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
_08025DA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025DA8: .4byte 0x08E01328
_08025DAC: .4byte 0x02018400
_08025DB0: .4byte 0x000001FF

	THUMB_FUNC_START sub_8025DB4
sub_8025DB4: @ 0x08025DB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	movs r0, #0xff
	mov r8, r0
	ldr r1, _08025E6C
	mov ip, r1
	movs r3, #0xf0
	lsls r3, r3, #8
	mov sb, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sl, r0
_08025DD4:
	ldr r1, _08025E70
	adds r0, r7, r1
	ldrb r5, [r0]
	lsls r5, r5, #2
	ldr r3, _08025E74
	adds r5, r5, r3
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0]
	mov r1, r8
	ands r1, r3
	adds r1, #0x12
	lsls r2, r7, #3
	add r2, ip
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r3
	mov r3, r8
	ands r1, r3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #2]
	lsls r0, r7, #4
	adds r0, #0x38
	mov r2, r8
	ands r2, r6
	adds r2, r2, r0
	lsls r4, r7, #2
	adds r3, r4, #1
	lsls r3, r3, #1
	add r3, ip
	mov r1, sl
	ands r1, r6
	ldr r0, _08025E78
	ands r2, r0
	orrs r1, r2
	strh r1, [r3]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #4]
	mov r1, sb
	ands r1, r3
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x16
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	adds r2, r4, #2
	lsls r2, r2, #1
	add r2, ip
	ldr r0, _08025E7C
	ands r0, r3
	mov r3, sb
	ands r1, r3
	orrs r0, r1
	strh r0, [r2]
	adds r4, #3
	lsls r4, r4, #1
	add r4, ip
	movs r0, #0
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08025DD4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025E6C: .4byte 0x02018400
_08025E70: .4byte 0x02021DC0
_08025E74: .4byte 0x08E0119C
_08025E78: .4byte 0x000001FF
_08025E7C: .4byte 0x00000FFF

	THUMB_FUNC_START sub_8025E80
sub_8025E80: @ 0x08025E80
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_8025C44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08025F24
	adds r0, r4, r0
	ldrb r5, [r0]
	bl sub_8025C5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r5, r5, r1
	lsls r5, r5, #0x18
	ldr r0, _08025F28
	lsrs r5, r5, #0x16
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r6, [r0]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r6
	adds r0, #0x12
	ldr r1, _08025F2C
	mov r8, r1
	lsls r2, r4, #3
	add r2, r8
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r6
	ands r0, r3
	orrs r1, r0
	movs r6, #0
	strh r1, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	lsls r0, r4, #4
	adds r0, #0x38
	ands r3, r1
	adds r3, r3, r0
	lsls r4, r4, #2
	adds r2, r4, #1
	lsls r2, r2, #1
	add r2, r8
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r1, _08025F30
	ands r3, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #4]
	lsrs r1, r3, #0xc
	adds r1, #3
	lsls r1, r1, #0x1c
	adds r2, r4, #2
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _08025F34
	ands r0, r3
	lsrs r1, r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	adds r4, #3
	lsls r4, r4, #1
	add r4, r8
	strh r6, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025F24: .4byte 0x02021DC0
_08025F28: .4byte 0x08E0119C
_08025F2C: .4byte 0x02018400
_08025F30: .4byte 0x000001FF
_08025F34: .4byte 0x00000FFF

	THUMB_FUNC_START sub_8025F38
sub_8025F38: @ 0x08025F38
	push {r4, r5, lr}
	movs r1, #0
	movs r5, #0
	ldr r0, _08025F60
	movs r4, #0xa0
	movs r3, #0xf0
	movs r2, #0xc0
	lsls r2, r2, #4
_08025F48:
	strh r4, [r0]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	strh r5, [r0, #6]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x7f
	bls _08025F48
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025F60: .4byte 0x02018400

	THUMB_FUNC_START sub_8025F64
sub_8025F64: @ 0x08025F64
	push {r4, r5, r6, lr}
	ldr r0, _08025FC4
	ldr r1, _08025FC8
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_800E074
	ldr r0, _08025FCC
	ldr r1, _08025FD0
	ldr r2, _08025FD4
	bl CpuSet
	movs r4, #0
	movs r5, #0
_08025F80:
	ldr r0, _08025FD8
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _08025FDC
	adds r1, r1, r6
	ldr r2, _08025FE0
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _08025F80
	ldr r0, _08025FE4
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r6, r2
	bl LZ77UnCompWram
	ldr r0, _08025FE8
	ldr r4, _08025FEC
	ldr r2, _08025FF0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08025FF4
	adds r4, #0x60
	ldr r2, _08025FF8
	adds r1, r4, #0
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025FC4: .4byte 0x080C1DD4
_08025FC8: .4byte 0x02000400
_08025FCC: .4byte 0x080C5840
_08025FD0: .4byte 0x02000000
_08025FD4: .4byte 0x04000020
_08025FD8: .4byte 0x080C58C0
_08025FDC: .4byte 0x0200FC00
_08025FE0: .4byte 0x0400000F
_08025FE4: .4byte 0x080C61B8
_08025FE8: .4byte 0x080C5EF0
_08025FEC: .4byte 0x02000200
_08025FF0: .4byte 0x04000018
_08025FF4: .4byte 0x080C5D70
_08025FF8: .4byte 0x04000010

	THUMB_FUNC_START sub_8025FFC
sub_8025FFC: @ 0x08025FFC
	push {lr}
	bl sub_80454E0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802601C
sub_802601C: @ 0x0802601C
	push {lr}
	bl sub_8045718
	ldr r0, _08026048
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _0802604C
	ldr r3, _08026050
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08026054
	strh r1, [r0]
	ldr r0, _08026058
	strh r1, [r0]
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_08026048: .4byte 0x04000050
_0802604C: .4byte 0x0400000E
_08026050: .4byte 0x00001F03
_08026054: .4byte 0x02024218
_08026058: .4byte 0x02024204
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8026060
sub_8026060: @ 0x08026060
	push {lr}
	bl sub_80454F8
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026070
sub_8026070: @ 0x08026070
	push {lr}
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802607C
sub_802607C: @ 0x0802607C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	ldr r0, _080260A0
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _080260B4
	adds r1, r3, #0
_08026090:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r4
	bne _080260A4
	movs r0, #1
	b _080260B6
	.align 2, 0
_080260A0: .4byte 0x08E01358
_080260A4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _08026090
_080260B4:
	movs r0, #0
_080260B6:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80260BC
sub_80260BC: @ 0x080260BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	ldr r0, _080260D8
	cmp r1, r0
	beq _080260DC
	cmp r1, #0xf0
	beq _080260DC
	movs r0, #0xce
	lsls r0, r0, #1
	cmp r2, r0
	beq _080260DC
	movs r0, #0
	b _080260DE
	.align 2, 0
_080260D8: .4byte 0x00000129
_080260DC:
	movs r0, #1
_080260DE:
	bx lr

	THUMB_FUNC_START sub_80260E0
sub_80260E0: @ 0x080260E0
	push {lr}
	bl sub_80260F4
	bl sub_8026100
	bl sub_802610C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80260F4
sub_80260F4: @ 0x080260F4
	push {lr}
	movs r0, #0xea
	bl sub_8008DCC
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8026100
sub_8026100: @ 0x08026100
	push {lr}
	movs r0, #0xee
	bl sub_8008DCC
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802610C
sub_802610C: @ 0x0802610C
	push {lr}
	ldr r0, _08026128
	bl sub_8008DCC
	movs r0, #0xf0
	bl sub_8008DCC
	movs r0, #0xce
	lsls r0, r0, #1
	bl sub_8008DCC
	pop {r0}
	bx r0
	.align 2, 0
_08026128: .4byte 0x00000129

	THUMB_FUNC_START sub_802612C
sub_802612C: @ 0x0802612C
	push {r4, lr}
	ldr r0, _08026148
	ldrh r2, [r0]
	ldr r1, _0802614C
	ands r1, r2
	cmp r1, #0
	beq _08026158
	ldr r0, _08026150
	strh r2, [r0]
	ldr r1, _08026154
	movs r0, #0x14
	strb r0, [r1]
	b _0802617E
	.align 2, 0
_08026148: .4byte 0x02020DFC
_0802614C: .4byte 0x000003FF
_08026150: .4byte 0x02021DCC
_08026154: .4byte 0x02021DC8
_08026158:
	ldr r4, _0802616C
	ldrb r2, [r4]
	adds r3, r2, #0
	cmp r3, #0
	beq _08026174
	ldr r0, _08026170
	strh r1, [r0]
	subs r0, r2, #1
	strb r0, [r4]
	b _0802617E
	.align 2, 0
_0802616C: .4byte 0x02021DC8
_08026170: .4byte 0x02021DCC
_08026174:
	ldr r0, _08026184
	ldr r1, _08026188
	ldrh r1, [r1]
	strh r1, [r0]
	strb r3, [r4]
_0802617E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026184: .4byte 0x02021DCC
_08026188: .4byte gKeyState

	THUMB_FUNC_START sub_802618C
sub_802618C: @ 0x0802618C
	ldr r0, _080261A4
	ldrh r2, [r0]
	ldr r1, _080261A8
	ands r1, r2
	cmp r1, #0
	beq _080261B4
	ldr r0, _080261AC
	strh r2, [r0]
	ldr r1, _080261B0
	movs r0, #0x14
	strb r0, [r1]
	b _080261D8
	.align 2, 0
_080261A4: .4byte 0x02020DFC
_080261A8: .4byte 0x000003FF
_080261AC: .4byte 0x02021DCC
_080261B0: .4byte 0x02021DC8
_080261B4:
	ldr r3, _080261C4
	ldrb r2, [r3]
	cmp r2, #0
	beq _080261CC
	ldr r0, _080261C8
	strh r1, [r0]
	subs r0, r2, #1
	b _080261D6
	.align 2, 0
_080261C4: .4byte 0x02021DC8
_080261C8: .4byte 0x02021DCC
_080261CC:
	ldr r1, _080261DC
	ldr r0, _080261E0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #3
_080261D6:
	strb r0, [r3]
_080261D8:
	bx lr
	.align 2, 0
_080261DC: .4byte 0x02021DCC
_080261E0: .4byte gKeyState

	THUMB_FUNC_START sub_80261E4
sub_80261E4: @ 0x080261E4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08026274
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #0
	beq _08026266
	adds r0, r5, #0
	bl sub_80435C8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	adds r4, r4, r5
	ldr r1, [r4]
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r3, [r4]
	ldrb r0, [r6, #5]
	movs r1, #4
	ands r1, r0
	ldrb r2, [r3, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r5, [r4]
	adds r0, r6, #0
	bl sub_8040688
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8040684
	ldr r0, [r4]
	bl sub_80403E8
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
_08026266:
	adds r0, r6, #0
	bl sub_80402BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026274: .4byte 0x02023FE4

	THUMB_FUNC_START sub_8026278
sub_8026278: @ 0x08026278
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080262AC
_0802627E:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802629A
	ldrb r1, [r2, #5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802629A
	adds r0, r2, #0
	bl sub_80261E4
_0802629A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802627E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080262AC: .4byte 0x02023FF8

	THUMB_FUNC_START sub_80262B0
sub_80262B0: @ 0x080262B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #0x48
	ldr r1, _08026324
	ldr r5, _08026328
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0802632C
	ldr r1, [r4]
	adds r1, #0x40
	bl sub_800E08C
	mov r0, sp
	movs r6, #0
	strh r6, [r0]
	ldr r1, [r4]
	ldr r2, _08026330
	bl CpuSet
	ldr r1, _08026334
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _08026338
	ldr r1, [r4]
	ldr r2, _0802633C
	bl CpuSet
	ldr r0, [r4]
	strh r6, [r0]
	movs r4, #0
	ldr r5, _08026340
_080262F6:
	lsls r3, r4, #2
	adds r2, r3, r4
	lsls r0, r2, #2
	ldr r1, _08026344
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r2, r2, r3
	lsls r2, r2, #1
	ldr r1, [r5]
	adds r1, r1, r2
	ldr r2, _08026348
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _080262F6
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026324: .4byte 0x08E11EB8
_08026328: .4byte 0x02021AD0
_0802632C: .4byte 0x08E01364
_08026330: .4byte 0x01000020
_08026334: .4byte 0x08E12B3C
_08026338: .4byte 0x08E01368
_0802633C: .4byte 0x04000020
_08026340: .4byte 0x08E0136C
_08026344: .4byte 0x08936130
_08026348: .4byte 0x04000005

	THUMB_FUNC_START sub_802634C
sub_802634C: @ 0x0802634C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080263C0
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	beq _080263B6
	ldr r1, _080263C4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080263C8
	ldr r1, [r1]
	adds r1, #0xac
	movs r2, #7
	bl CpuSet
	ldr r0, _080263CC
	mov r8, r0
	ldr r6, _080263D0
	ldrb r1, [r7, #0x17]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r4, _080263D4
	ldr r1, [r4]
	movs r2, #0xc8
	lsls r2, r2, #6
	adds r1, r1, r2
	ldr r5, _080263D8
	adds r2, r5, #0
	bl CpuSet
	ldrb r1, [r7, #0x17]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r6, [r6]
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	adds r0, #0x80
	ldr r1, [r4]
	movs r2, #0xd0
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r2, r5, #0
	bl CpuSet
_080263B6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080263C0: .4byte 0x02021AD0
_080263C4: .4byte 0x08E17F18
_080263C8: .4byte 0x08E01368
_080263CC: .4byte 0x08E17E28
_080263D0: .4byte 0x02021CF8
_080263D4: .4byte 0x08E01364
_080263D8: .4byte 0x04000020

	THUMB_FUNC_START sub_80263DC
sub_80263DC: @ 0x080263DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _08026474
	ldrb r0, [r7, #0x16]
	cmp r0, #0
	beq _08026468
	ldr r1, _08026478
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802647C
	ldr r1, [r1]
	adds r1, #0xba
	movs r2, #0xb
	bl CpuSet
	ldrb r0, [r7, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	mov sb, r1
	cmp r0, #2
	bhi _08026414
	movs r2, #4
	mov sb, r2
_08026414:
	ldr r0, _08026480
	mov r8, r0
	ldr r6, _08026484
	ldrb r1, [r7, #0x16]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r5, _08026488
	ldr r1, [r5]
	movs r2, #0xc6
	lsls r2, r2, #6
	adds r1, r1, r2
	mov r2, sb
	lsls r4, r2, #4
	movs r2, #0x80
	lsls r2, r2, #0x13
	orrs r4, r2
	adds r2, r4, #0
	bl CpuSet
	ldrb r1, [r7, #0x16]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r6, [r6]
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	mov r2, sb
	lsls r1, r2, #6
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, [r5]
	movs r2, #0xce
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r2, r4, #0
	bl CpuSet
_08026468:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026474: .4byte 0x02021AD0
_08026478: .4byte 0x08E151C8
_0802647C: .4byte 0x08E01368
_08026480: .4byte 0x08E14FE8
_08026484: .4byte 0x02021CF8
_08026488: .4byte 0x08E01364

	THUMB_FUNC_START sub_802648C
sub_802648C: @ 0x0802648C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080264EC
	ldrh r0, [r0, #0x12]
	movs r1, #0
	bl sub_800DDA0
	movs r6, #0
	ldr r0, _080264F0
	mov sb, r0
	ldr r5, _080264F4
	ldr r7, _080264F8
	movs r1, #0xe4
	lsls r1, r1, #5
	mov r8, r1
_080264AE:
	mov r0, sb
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _0802650C
	adds r0, #2
	lsls r0, r0, #6
	ldr r1, _080264FC
	adds r0, r0, r1
	ldr r1, _08026500
	adds r2, r5, #0
	bl CpuSet
	adds r4, r6, #0
	adds r4, #0x72
	lsls r4, r4, #6
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r1, _08026504
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	adds r1, r1, r4
	ldr r0, _08026508
	adds r2, r5, #0
	bl CpuSet
	b _0802653E
	.align 2, 0
_080264EC: .4byte 0x02021AD0
_080264F0: .4byte 0x02021BD0
_080264F4: .4byte 0x04000010
_080264F8: .4byte 0x08E01364
_080264FC: .4byte 0x089385D8
_08026500: .4byte 0x02021B50
_08026504: .4byte 0x02021B10
_08026508: .4byte 0x02021B90
_0802650C:
	cmp r6, #0
	bne _0802653E
	mov r1, sb
	ldrb r0, [r1, #4]
	cmp r0, #0xa
	beq _0802653E
	ldr r0, _08026554
	ldr r1, _08026558
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7]
	add r0, r8
	ldr r1, _0802655C
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	add r1, r8
	ldr r0, _08026560
	adds r2, r5, #0
	bl CpuSet
_0802653E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080264AE
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026554: .4byte 0x08938618
_08026558: .4byte 0x02021B50
_0802655C: .4byte 0x02021B10
_08026560: .4byte 0x02021B90

	THUMB_FUNC_START sub_8026564
sub_8026564: @ 0x08026564
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080265C4
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl sub_800DDA0
	movs r6, #0
	ldr r0, _080265C8
	mov sb, r0
	ldr r5, _080265CC
	ldr r7, _080265D0
	movs r1, #0xee
	lsls r1, r1, #5
	mov r8, r1
_08026586:
	mov r0, sb
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _080265E4
	adds r0, #2
	lsls r0, r0, #6
	ldr r1, _080265D4
	adds r0, r0, r1
	ldr r1, _080265D8
	adds r2, r5, #0
	bl CpuSet
	adds r4, r6, #0
	adds r4, #0x77
	lsls r4, r4, #6
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r1, _080265DC
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	adds r1, r1, r4
	ldr r0, _080265E0
	adds r2, r5, #0
	bl CpuSet
	b _08026616
	.align 2, 0
_080265C4: .4byte 0x02021AD0
_080265C8: .4byte 0x02021BD0
_080265CC: .4byte 0x04000010
_080265D0: .4byte 0x08E01364
_080265D4: .4byte 0x089385D8
_080265D8: .4byte 0x02021B50
_080265DC: .4byte 0x02021B10
_080265E0: .4byte 0x02021B90
_080265E4:
	cmp r6, #0
	bne _08026616
	mov r1, sb
	ldrb r0, [r1, #4]
	cmp r0, #0xa
	beq _08026616
	ldr r0, _0802662C
	ldr r1, _08026630
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7]
	add r0, r8
	ldr r1, _08026634
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	add r1, r8
	ldr r0, _08026638
	adds r2, r5, #0
	bl CpuSet
_08026616:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08026586
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802662C: .4byte 0x089385D8
_08026630: .4byte 0x02021B50
_08026634: .4byte 0x02021B10
_08026638: .4byte 0x02021B90

	THUMB_FUNC_START sub_802663C
sub_802663C: @ 0x0802663C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r0, _08026668
	ldrb r0, [r0]
	ldr r2, _0802666C
	cmp r0, #0
	bne _08026674
	ldrh r1, [r2, #0x10]
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, r0
	beq _08026662
	ldr r0, _08026670
	cmp r1, r0
	bne _08026674
_08026662:
	movs r0, #1
	str r0, [sp, #0x48]
	b _08026678
	.align 2, 0
_08026668: .4byte 0x02021CF8
_0802666C: .4byte 0x02021AD0
_08026670: .4byte 0x0000029E
_08026674:
	movs r1, #0
	str r1, [sp, #0x48]
_08026678:
	ldr r6, [r2]
	adds r0, r6, #0
	bl sub_8020824
	adds r6, r0, #0
	movs r7, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802668C
	b _08026790
_0802668C:
	cmp r0, #0x24
	bne _08026692
	b _08026790
_08026692:
	ldr r0, _080266B8
	mov sl, r0
	ldr r1, _080266BC
	mov sb, r1
	ldr r0, _080266C0
	mov r8, r0
_0802669E:
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq _080266C8
	cmp r7, #1
	bne _080266C8
	ldr r1, _080266C4
	ldr r0, [r1, #0x38]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	ldrb r0, [r0]
	orrs r1, r0
	adds r6, #4
	b _080266F6
	.align 2, 0
_080266B8: .4byte 0x02021B50
_080266BC: .4byte 0x08E01364
_080266C0: .4byte 0x04000010
_080266C4: .4byte 0x08E00E30
_080266C8:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _080266EC
	ldrb r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #2
	ldr r1, _080266E8
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	ldrb r0, [r0]
	orrs r1, r0
	adds r6, #1
	b _080266F6
	.align 2, 0
_080266E8: .4byte 0x08E00E30
_080266EC:
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	ldrb r1, [r6]
	orrs r1, r0
	adds r6, #2
_080266F6:
	mov r0, sp
	ldr r2, _080267A0
	bl sub_8020968
	movs r0, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	mov r1, sl
	ldr r2, _080267A4
	bl CpuSet
	mov r0, sp
	mov r1, sl
	adds r1, #0x28
	ldr r2, _080267A8
	bl CpuSet
	lsls r5, r7, #1
	adds r4, r5, #0
	adds r4, #0x85
	lsls r4, r4, #6
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	ldr r1, _080267AC
	mov r2, r8
	bl CpuSet
	bl sub_800DD4C
	mov r0, sb
	ldr r1, [r0]
	adds r1, r1, r4
	ldr r0, _080267B0
	mov r2, r8
	bl CpuSet
	movs r1, #0
	str r1, [sp, #0x44]
	add r0, sp, #0x44
	mov r1, sl
	ldr r2, _080267A4
	bl CpuSet
	add r0, sp, #0x18
	mov r1, sl
	ldr r2, _080267B4
	bl CpuSet
	adds r5, #0x86
	lsls r5, r5, #6
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r5
	ldr r1, _080267AC
	mov r2, r8
	bl CpuSet
	bl sub_800DD4C
	mov r0, sb
	ldr r1, [r0]
	adds r1, r1, r5
	ldr r0, _080267B0
	mov r2, r8
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bhi _08026790
	ldrb r0, [r6]
	cmp r0, #0
	beq _08026790
	cmp r0, #0x24
	bne _0802669E
_08026790:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080267A0: .4byte 0x0000044A
_080267A4: .4byte 0x05000010
_080267A8: .4byte 0x04000006
_080267AC: .4byte 0x02021B10
_080267B0: .4byte 0x02021B90
_080267B4: .4byte 0x0400000A

	THUMB_FUNC_START sub_80267B8
sub_80267B8: @ 0x080267B8
	push {lr}
	bl sub_80267E0
	bl sub_80262B0
	bl sub_802634C
	bl sub_80263DC
	bl sub_8026864
	bl sub_802648C
	bl sub_8026564
	bl sub_802663C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80267E0
sub_80267E0: @ 0x080267E0
	push {r4, lr}
	ldr r0, _0802683C
	ldr r4, _08026840
	ldr r1, [r4]
	movs r2, #0x85
	lsls r2, r2, #1
	bl CpuSet
	movs r2, #0
	ldr r3, _08026844
_080267F4:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x65
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _080267F4
	ldr r0, _08026848
	ldr r0, [r0]
	ldr r1, _0802684C
	ldr r1, [r1]
	movs r2, #0xca
	lsls r2, r2, #5
	adds r1, r1, r2
	ldr r2, _08026850
	bl CpuSet
	ldr r1, _08026854
	ldr r0, _08026858
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802685C
	ldr r1, [r1]
	adds r1, #0x80
	ldr r2, _08026860
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802683C: .4byte 0x08938384
_08026840: .4byte 0x08E0136C
_08026844: .4byte 0x00000109
_08026848: .4byte 0x08E137C0
_0802684C: .4byte 0x08E01364
_08026850: .4byte 0x04000800
_08026854: .4byte 0x08E137C4
_08026858: .4byte 0x02021AD0
_0802685C: .4byte 0x08E01368
_08026860: .4byte 0x0400000A

	THUMB_FUNC_START sub_8026864
sub_8026864: @ 0x08026864
	push {r4, r5, r6, r7, lr}
	ldr r0, _080268BC
	ldrb r5, [r0, #0x18]
	cmp r5, #0
	beq _080268B4
	cmp r5, #0xc
	bls _08026874
	movs r5, #0xc
_08026874:
	ldr r0, _080268C0
	ldr r1, _080268C4
	ldr r4, _080268C8
	adds r2, r4, #0
	bl CpuSet
	cmp r5, #0
	beq _080268B4
	ldr r7, _080268CC
	adds r6, r4, #0
_08026888:
	movs r4, #0x72
	subs r4, r4, r5
	lsls r4, r4, #6
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r1, _080268D0
	adds r2, r6, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	adds r1, r1, r4
	ldr r0, _080268D4
	adds r2, r6, #0
	bl CpuSet
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08026888
_080268B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080268BC: .4byte 0x02021AD0
_080268C0: .4byte 0x08938598
_080268C4: .4byte 0x02021B50
_080268C8: .4byte 0x04000010
_080268CC: .4byte 0x08E01364
_080268D0: .4byte 0x02021B10
_080268D4: .4byte 0x02021B90

	THUMB_FUNC_START sub_80268D8
sub_80268D8: @ 0x080268D8
	push {r4, r5, r6, lr}
	bl sub_8026A94
	ldr r0, _08026918
	bl sub_80081DC
	bl sub_8008220
	movs r4, #0
_080268EA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x77
	bls _080268EA
	bl sub_8026D04
	ldr r0, _0802691C
	bl sub_80081DC
	ldr r1, _08026920
	ldr r2, _08026924
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08026928
	movs r0, #0x10
	strb r0, [r4]
	ldr r5, _0802692C
	movs r0, #0
	strb r0, [r5]
	b _08026954
	.align 2, 0
_08026918: .4byte 0x08026D75
_0802691C: .4byte 0x08026E45
_08026920: .4byte 0x04000050
_08026924: .4byte 0x00003FFF
_08026928: .4byte 0x0201EE61
_0802692C: .4byte 0x0201EE60
_08026930:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0802694E
	ldr r1, _080269CC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802694A
	subs r0, #1
	strb r0, [r1]
_0802694A:
	movs r0, #0
	strb r0, [r5]
_0802694E:
	ldr r0, _080269D0
	ldrb r1, [r4]
	strh r1, [r0]
_08026954:
	bl sub_8008220
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026930
	movs r4, #0
_08026960:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x77
	bls _08026960
	ldr r2, _080269CC
	movs r1, #0
	strb r1, [r2]
	ldr r0, _080269D4
	strb r1, [r0]
	adds r4, r0, #0
	adds r5, r2, #0
_0802697C:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0802699A
	ldr r1, _080269CC
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08026996
	adds r0, #1
	strb r0, [r1]
_08026996:
	movs r0, #0
	strb r0, [r4]
_0802699A:
	ldr r0, _080269D0
	ldrb r1, [r5]
	strh r1, [r0]
	bl sub_8008220
	ldrb r0, [r5]
	cmp r0, #0xf
	bls _0802697C
	bl sub_8026D20
	ldr r0, _080269D8
	bl sub_80081DC
	ldr r1, _080269DC
	ldr r2, _080269E0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _080269CC
	movs r0, #0x10
	strb r0, [r4]
	ldr r5, _080269D4
	movs r0, #0
	strb r0, [r5]
	b _08026A08
	.align 2, 0
_080269CC: .4byte 0x0201EE61
_080269D0: .4byte 0x04000054
_080269D4: .4byte 0x0201EE60
_080269D8: .4byte 0x08026E95
_080269DC: .4byte 0x04000050
_080269E0: .4byte 0x00003FFF
_080269E4:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08026A02
	ldr r1, _08026A80
	ldrb r0, [r1]
	cmp r0, #0
	beq _080269FE
	subs r0, #1
	strb r0, [r1]
_080269FE:
	movs r0, #0
	strb r0, [r5]
_08026A02:
	ldr r0, _08026A84
	ldrb r1, [r4]
	strh r1, [r0]
_08026A08:
	bl sub_8008220
	ldrb r0, [r4]
	cmp r0, #0
	bne _080269E4
	movs r4, #0
_08026A14:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x77
	bls _08026A14
	ldr r2, _08026A80
	movs r1, #0
	strb r1, [r2]
	ldr r0, _08026A88
	strb r1, [r0]
	adds r4, r0, #0
	ldr r6, _08026A84
	adds r5, r2, #0
_08026A32:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08026A50
	ldr r1, _08026A80
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08026A4C
	adds r0, #1
	strb r0, [r1]
_08026A4C:
	movs r0, #0
	strb r0, [r4]
_08026A50:
	ldrb r0, [r5]
	strh r0, [r6]
	bl sub_8008220
	ldrb r0, [r5]
	cmp r0, #0xf
	bls _08026A32
	ldr r1, _08026A8C
	ldr r2, _08026A90
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08026A80
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08026A88
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08026A84
	movs r0, #0x10
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026A80: .4byte 0x0201EE61
_08026A84: .4byte 0x04000054
_08026A88: .4byte 0x0201EE60
_08026A8C: .4byte 0x04000050
_08026A90: .4byte 0x00003FFF

	THUMB_FUNC_START sub_8026A94
sub_8026A94: @ 0x08026A94
	push {lr}
	bl sub_08026BA4
	ldr r0, _08026AC0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026C2C
	bl sub_8026BA8
	bl sub_8026BE8
	bl sub_08026C28
	bl sub_80454F8
	bl sub_8026CEC
	pop {r0}
	bx r0
	.align 2, 0
_08026AC0: .4byte 0x08026D59

	THUMB_FUNC_START sub_8026AC4
sub_8026AC4: @ 0x08026AC4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08026B10
	cmp r0, #2
	bgt _08026AE0
	cmp r0, #1
	beq _08026AEA
	b _08026B7C
_08026AE0:
	cmp r1, #3
	beq _08026B34
	cmp r1, #4
	beq _08026B58
	b _08026B7C
_08026AEA:
	movs r4, #0
	ldr r6, _08026B08
	ldr r5, _08026B0C
_08026AF0:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026AF0
	b _08026B96
	.align 2, 0
_08026B08: .4byte 0x08E0B2B0
_08026B0C: .4byte 0x0200FC00
_08026B10:
	movs r4, #0
	ldr r6, _08026B2C
	ldr r5, _08026B30
_08026B16:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B16
	b _08026B96
	.align 2, 0
_08026B2C: .4byte 0x08E0B7B0
_08026B30: .4byte 0x0200FC00
_08026B34:
	movs r4, #0
	ldr r6, _08026B50
	ldr r5, _08026B54
_08026B3A:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B3A
	b _08026B96
	.align 2, 0
_08026B50: .4byte 0x08E0BCB0
_08026B54: .4byte 0x0200FC00
_08026B58:
	movs r4, #0
	ldr r6, _08026B74
	ldr r5, _08026B78
_08026B5E:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B5E
	b _08026B96
	.align 2, 0
_08026B74: .4byte 0x08E0C1B0
_08026B78: .4byte 0x0200FC00
_08026B7C:
	movs r4, #0
	ldr r6, _08026B9C
	ldr r5, _08026BA0
_08026B82:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B82
_08026B96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026B9C: .4byte 0x08E0ADB0
_08026BA0: .4byte 0x0200FC00

	THUMB_FUNC_START sub_08026BA4
sub_08026BA4: @ 0x08026BA4
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026BA8
sub_8026BA8: @ 0x08026BA8
	push {r4, r5, r6, lr}
	ldr r0, _08026BDC
	ldr r4, _08026BE0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	ldr r5, _08026BE4
	movs r0, #0xf8
	lsls r0, r0, #8
	adds r4, r4, r0
_08026BC2:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	adds r4, #0x40
	adds r6, #1
	cmp r6, #0x13
	bls _08026BC2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026BDC: .4byte 0x08E01E50
_08026BE0: .4byte 0x02000400
_08026BE4: .4byte 0x08E02610

	THUMB_FUNC_START sub_8026BE8
sub_8026BE8: @ 0x08026BE8
	push {r4, r5, r6, lr}
	ldr r0, _08026C1C
	ldr r4, _08026C20
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	ldr r5, _08026C24
	movs r0, #0xb0
	lsls r0, r0, #8
	adds r4, r4, r0
_08026C02:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	adds r4, #0x40
	adds r6, #1
	cmp r6, #0x13
	bls _08026C02
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026C1C: .4byte 0x08E02E50
_08026C20: .4byte 0x02004400
_08026C24: .4byte 0x08E03E10

	THUMB_FUNC_START sub_08026C28
sub_08026C28: @ 0x08026C28
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026C2C
sub_8026C2C: @ 0x08026C2C
	push {r4, r5, r6, lr}
	ldr r0, _08026C60
	ldr r4, _08026C64
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	ldr r5, _08026C68
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r4, r0
_08026C46:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	adds r4, #0x40
	adds r6, #1
	cmp r6, #0x13
	bls _08026C46
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026C60: .4byte 0x08E01390
_08026C64: .4byte 0x0200C400
_08026C68: .4byte 0x08E01750
	.byte 0x70, 0xB5, 0x19, 0x48
	.byte 0x19, 0x4D, 0x80, 0x24, 0x64, 0x01, 0x29, 0x1C, 0x22, 0x1C, 0x31, 0xF0, 0x6B, 0xFD, 0x17, 0x48
	.byte 0x80, 0x22, 0x92, 0x01, 0xA9, 0x18, 0x22, 0x1C, 0x31, 0xF0, 0x64, 0xFD, 0x14, 0x48, 0x80, 0x22
	.byte 0xD2, 0x01, 0xA9, 0x18, 0x22, 0x1C, 0x31, 0xF0, 0x5D, 0xFD, 0x12, 0x48, 0xC0, 0x22, 0xD2, 0x01
	.byte 0xA9, 0x18, 0x50, 0x22, 0x31, 0xF0, 0x56, 0xFD, 0x00, 0x26, 0x0F, 0x4C, 0xF0, 0x20, 0x00, 0x02
	.byte 0x2D, 0x18, 0x20, 0x1C, 0x29, 0x1C, 0x20, 0x22, 0x31, 0xF0, 0x4C, 0xFD, 0x40, 0x34, 0x40, 0x35
	.byte 0x01, 0x36, 0x13, 0x2E, 0xF5, 0xD9, 0x01, 0x20, 0xFF, 0xF7, 0xFC, 0xFE, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x10, 0x48, 0xE0, 0x08, 0x00, 0x04, 0x00, 0x02, 0x10, 0x68, 0xE0, 0x08
	.byte 0x10, 0x88, 0xE0, 0x08, 0x10, 0xA8, 0xE0, 0x08, 0xB0, 0xA8, 0xE0, 0x08

	THUMB_FUNC_START sub_8026CEC
sub_8026CEC: @ 0x08026CEC
	push {lr}
	ldr r0, _08026CFC
	ldr r1, _08026D00
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08026CFC: .4byte 0x08E01370
_08026D00: .4byte 0x02000000

	THUMB_FUNC_START sub_8026D04
sub_8026D04: @ 0x08026D04
	push {lr}
	ldr r0, _08026D18
	ldr r1, _08026D1C
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08026D18: .4byte 0x08E01C50
_08026D1C: .4byte 0x02000000

	THUMB_FUNC_START sub_8026D20
sub_8026D20: @ 0x08026D20
	push {lr}
	ldr r0, _08026D30
	ldr r1, _08026D34
	movs r2, #0x20
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08026D30: .4byte 0x08E02E10
_08026D34: .4byte 0x02000000
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x04, 0x48
	.byte 0x04, 0x49, 0x80, 0x22, 0x52, 0x00, 0x31, 0xF0, 0x05, 0xFD, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x10, 0x46, 0xE0, 0x08, 0x00, 0x00, 0x00, 0x02, 0x80, 0x21, 0xC9, 0x04, 0x80, 0x20, 0x08, 0x80
	.byte 0x03, 0x48, 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x70, 0x47
	.byte 0x50, 0x00, 0x00, 0x04

	THUMB_FUNC_START sub_8026D74
sub_8026D74: @ 0x08026D74
	push {lr}
	bl sub_80454E0
	ldr r0, _08026DB8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026DBC
	strh r1, [r0]
	bl sub_8045434
	ldr r2, _08026DC0
	ldrh r1, [r2]
	ldr r0, _08026DC4
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0xe0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026DB8: .4byte 0x02024218
_08026DBC: .4byte 0x02024204
_08026DC0: .4byte 0x0400000E
_08026DC4: .4byte 0x0000E0F3
	.byte 0x10, 0xB5, 0x1E, 0xF0, 0x89, 0xFB, 0x17, 0x48
	.byte 0x00, 0x21, 0x01, 0x80, 0x16, 0x48, 0x01, 0x80, 0x16, 0x48, 0x01, 0x80, 0x16, 0x48, 0x01, 0x80
	.byte 0x1E, 0xF0, 0x28, 0xFB, 0x15, 0x4A, 0x11, 0x88, 0x15, 0x4B, 0x18, 0x1C, 0x08, 0x40, 0x10, 0x80
	.byte 0x10, 0x88, 0xF8, 0x24, 0x64, 0x01, 0x21, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x10, 0x88, 0x10, 0x80
	.byte 0x02, 0x32, 0x10, 0x88, 0x03, 0x40, 0x13, 0x80, 0x10, 0x88, 0xF0, 0x23, 0x5B, 0x01, 0x19, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x10, 0x88, 0x10, 0x80, 0x80, 0x21, 0xC9, 0x04, 0xC0, 0x24, 0x24, 0x01
	.byte 0x20, 0x1C, 0x08, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x0C, 0x42, 0x02, 0x02
	.byte 0x4C, 0x42, 0x02, 0x02, 0x18, 0x42, 0x02, 0x02, 0x04, 0x42, 0x02, 0x02, 0x0C, 0x00, 0x00, 0x04
	.byte 0xF3, 0xE0, 0x00, 0x00

	THUMB_FUNC_START sub_8026E44
sub_8026E44: @ 0x08026E44
	push {lr}
	bl sub_80454E0
	ldr r0, _08026E84
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026E88
	strh r1, [r0]
	bl sub_8045434
	ldr r2, _08026E8C
	ldrh r1, [r2]
	ldr r0, _08026E90
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026E84: .4byte 0x02024218
_08026E88: .4byte 0x02024204
_08026E8C: .4byte 0x0400000E
_08026E90: .4byte 0x0000E0F3

	THUMB_FUNC_START sub_8026E94
sub_8026E94: @ 0x08026E94
	push {lr}
	bl sub_80454E0
	ldr r0, _08026ED8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026EDC
	strh r1, [r0]
	bl sub_8045434
	ldr r2, _08026EE0
	ldrh r1, [r2]
	ldr r0, _08026EE4
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026ED8: .4byte 0x02024218
_08026EDC: .4byte 0x02024204
_08026EE0: .4byte 0x0400000E
_08026EE4: .4byte 0x0000E0F3
	.byte 0x00, 0xB5, 0x1E, 0xF0, 0xF9, 0xFA, 0x0F, 0x48
	.byte 0x00, 0x21, 0x01, 0x80, 0x0E, 0x48, 0x01, 0x80, 0x1E, 0xF0, 0x9C, 0xFA, 0x0D, 0x4A, 0x11, 0x88
	.byte 0x0D, 0x48, 0x08, 0x40, 0x10, 0x80, 0x10, 0x88, 0xE8, 0x23, 0x5B, 0x01, 0x19, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x10, 0x88, 0x08, 0x21, 0x08, 0x43, 0x10, 0x80, 0x80, 0x21, 0xC9, 0x04, 0x80, 0x22
	.byte 0x12, 0x01, 0x10, 0x1C, 0x08, 0x80, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x18, 0x42, 0x02, 0x02
	.byte 0x04, 0x42, 0x02, 0x02, 0x0E, 0x00, 0x00, 0x04, 0xF3, 0xE0, 0x00, 0x00

	THUMB_FUNC_START sub_8026F3C
sub_8026F3C: @ 0x08026F3C
	ldr r2, _08026F48
	ldr r0, _08026F4C
	ldr r1, _08026F50
	str r0, [r2]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
_08026F48: .4byte 0x02021DD0
_08026F4C: .4byte 0x000001F4
_08026F50: .4byte 0x00000000

	THUMB_FUNC_START sub_8026F54
sub_8026F54: @ 0x08026F54
	ldr r2, _08026F5C
	str r0, [r2]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
_08026F5C: .4byte 0x02021DD0

	THUMB_FUNC_START sub_8026F60
sub_8026F60: @ 0x08026F60
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r2, _08026F88
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r3, _08026F8C
	ldr r4, _08026F90
	subs r3, r3, r0
	sbcs r4, r1
	cmp r6, r4
	bhi _08026F80
	cmp r6, r4
	bne _08026F94
	cmp r5, r3
	bls _08026F94
_08026F80:
	ldr r0, _08026F8C
	ldr r1, _08026F90
	b _08026F9C
	.align 2, 0
_08026F88: .4byte 0x02021DD0
_08026F8C: .4byte 0x4E729FFF
_08026F90: .4byte 0x00000918
_08026F94:
	ldr r0, [r2]
	ldr r1, [r2, #4]
	adds r0, r0, r5
	adcs r1, r6
_08026F9C:
	str r0, [r2]
	str r1, [r2, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026FA8
sub_8026FA8: @ 0x08026FA8
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _08026FC8
	ldr r1, [r0, #4]
	adds r4, r0, #0
	cmp r3, r1
	bhi _08026FC2
	cmp r3, r1
	bne _08026FCC
	ldr r0, [r4]
	cmp r2, r0
	bls _08026FCC
_08026FC2:
	movs r0, #0
	movs r1, #0
	b _08026FD4
	.align 2, 0
_08026FC8: .4byte 0x02021DD0
_08026FCC:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	subs r0, r0, r2
	sbcs r1, r3
_08026FD4:
	str r0, [r4]
	str r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026FE0
sub_8026FE0: @ 0x08026FE0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, _08027004
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, _08027008
	ldr r3, _0802700C
	subs r2, r2, r0
	sbcs r3, r1
	cmp r5, r3
	bhi _08027000
	cmp r5, r3
	bne _08027010
	cmp r4, r2
	bls _08027010
_08027000:
	movs r0, #0
	b _08027012
	.align 2, 0
_08027004: .4byte 0x02021DD0
_08027008: .4byte 0x4E729FFF
_0802700C: .4byte 0x00000918
_08027010:
	movs r0, #1
_08027012:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8027018
sub_8027018: @ 0x08027018
	adds r2, r1, #0
	adds r1, r0, #0
	ldr r0, _08027034
	ldr r3, [r0, #4]
	cmp r2, r3
	bhi _0802702E
	cmp r2, r3
	bne _08027038
	ldr r0, [r0]
	cmp r1, r0
	bls _08027038
_0802702E:
	movs r0, #0
	b _0802703A
	.align 2, 0
_08027034: .4byte 0x02021DD0
_08027038:
	movs r0, #1
_0802703A:
	bx lr

	THUMB_FUNC_START sub_802703C
sub_802703C: @ 0x0802703C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	movs r6, #0
	ldr r0, _080270A4
	mov r8, r0
	ldr r7, _080270A8
_0802704C:
	lsls r0, r6, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_80270B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0802708C
	ldr r1, [r4]
	ldr r5, _080270AC
	lsls r4, r0, #1
	adds r5, r4, r5
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801D1A8
	movs r0, #0xa
	bl sub_801D188
	movs r0, #0xe
	strh r0, [r7, #8]
	ldr r0, _080270B0
	adds r4, r4, r0
	ldrh r0, [r4]
	strh r0, [r7]
	ldrh r0, [r5]
	strh r0, [r7, #2]
	bl sub_801CEBC
_0802708C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0802704C
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080270A4: .4byte 0x02023FF8
_080270A8: .4byte 0x02021C10
_080270AC: .4byte 0x08E0C6B8
_080270B0: .4byte 0x08E0C6B0

	THUMB_FUNC_START sub_80270B4
sub_80270B4: @ 0x080270B4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080270DC
	ldrh r3, [r0]
	cmp r2, r3
	beq _080270D8
	adds r3, r0, #0
_080270C4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _080270D8
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r2, r0
	bne _080270C4
_080270D8:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_080270DC: .4byte 0x08E0C6B0
	.byte 0x00, 0x06, 0x00, 0x0E, 0x03, 0x4A, 0x3F, 0x21, 0x08, 0x40, 0x11, 0x78, 0x08, 0x43, 0x10, 0x70
	.byte 0x70, 0x47, 0x00, 0x00, 0xD8, 0x1D, 0x02, 0x02, 0x10, 0xB5, 0x0B, 0x48, 0x01, 0x78, 0x00, 0x23
	.byte 0x00, 0x22, 0x01, 0x24, 0x08, 0x1C, 0x20, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x58, 0x1C, 0x00, 0x06
	.byte 0x03, 0x0E, 0x49, 0x08, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E, 0x05, 0x2A, 0xF2, 0xD9, 0x18, 0x1C
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xD8, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_802712C
sub_802712C: @ 0x0802712C
	ldr r1, _08027134
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08027134: .4byte 0x02021DD8

	THUMB_FUNC_START sub_8027138
sub_8027138: @ 0x08027138
	push {r4, r5, r6, r7, lr}
	ldr r1, _08027290
	movs r0, #4
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r6, _08027294
_08027146:
	strb r4, [r5, #3]
	ldr r1, _08027298
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08027160
	bl sub_802ACC0
_08027160:
	bl sub_802A478
	cmp r0, #1
	bne _0802717E
	ldr r0, _0802729C
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802717E
	ldr r0, _0802729C
	bl sub_8034F60
_0802717E:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08027146
	ldr r1, _08027290
	movs r0, #5
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _080272A0
	ldr r6, _08027294
_080271A2:
	strb r4, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080271BA
	bl sub_802ADF4
_080271BA:
	bl sub_802A478
	cmp r0, #1
	bne _080271D8
	ldr r0, _0802729C
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _080271D8
	ldr r0, _0802729C
	bl sub_8034F60
_080271D8:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080271A2
	ldr r5, _08027294
	ldrb r0, [r5]
	cmp r0, #0
	bne _080271FC
	ldr r0, _0802729C
	bl sub_8034F60
_080271FC:
	ldr r1, _08027290
	movs r2, #0
	movs r0, #6
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	ldr r0, _080272A4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08027218
	bl sub_802ADF4
_08027218:
	bl sub_802A478
	cmp r0, #1
	bne _08027238
	ldr r4, _0802729C
	adds r0, r4, #0
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r5]
	cmp r0, #0
	bne _08027238
	adds r0, r4, #0
	bl sub_8034F60
_08027238:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	ldr r5, _08027290
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	ldr r0, _080272A4
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r6, _08027294
	ldrb r0, [r6]
	cmp r0, #0
	bne _08027262
	bl sub_802ADF4
_08027262:
	bl sub_802A478
	cmp r0, #1
	bne _0802727C
	ldr r4, _0802729C
	adds r0, r4, #0
	bl sub_8034FEC
	bl sub_8029864
	adds r0, r4, #0
	bl sub_8034F60
_0802727C:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080272A8
_08027288:
	ldr r0, _0802729C
	bl sub_8034FEC
	b _0802742C
	.align 2, 0
_08027290: .4byte 0x02021DE0
_08027294: .4byte 0x02021C08
_08027298: .4byte 0x020240B0
_0802729C: .4byte 0x00000177
_080272A0: .4byte 0x020240C4
_080272A4: .4byte 0x02023FC0
_080272A8:
	movs r0, #2
	strb r0, [r5, #2]
	movs r4, #0
	ldr r7, _08027434
_080272B0:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080272CE
	bl sub_802ACC0
_080272CE:
	bl sub_802A478
	cmp r0, #1
	bne _080272EC
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _080272EC
	ldr r0, _08027438
	bl sub_8034F60
_080272EC:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080272B0
	ldr r1, _0802743C
	movs r0, #1
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08027434
	ldr r6, _08027440
_08027310:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802732E
	bl sub_802ACC0
_0802732E:
	bl sub_802A478
	cmp r0, #1
	bne _0802734C
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802734C
	ldr r0, _08027438
	bl sub_8034F60
_0802734C:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08027310
	ldr r1, _0802743C
	movs r0, #3
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08027434
	ldr r6, _08027440
_08027370:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802738E
	bl sub_802ACC0
_0802738E:
	bl sub_802A478
	cmp r0, #1
	bne _080273AC
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _080273AC
	ldr r0, _08027438
	bl sub_8034F60
_080273AC:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080273BA
	b _08027288
_080273BA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08027370
	ldr r1, _0802743C
	movs r0, #0
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08027434
	ldr r6, _08027440
_080273D2:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080273F0
	bl sub_802ACC0
_080273F0:
	bl sub_802A478
	cmp r0, #1
	bne _0802740E
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802740E
	ldr r0, _08027438
	bl sub_8034F60
_0802740E:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802741C
	b _08027288
_0802741C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080273D2
	ldr r0, _08027438
	bl sub_8034FEC
_0802742C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027434: .4byte 0x02023FD0
_08027438: .4byte 0x00000177
_0802743C: .4byte 0x02021DE0
_08027440: .4byte 0x02021C08

	THUMB_FUNC_START sub_8027444
sub_8027444: @ 0x08027444
	push {r4, r5, r6, lr}
	ldr r1, _080274A4
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _080274B8
	ldr r4, _080274A8
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x3c
_08027466:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _080274AC
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08027482
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_08027482:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027466
	ldr r0, _080274B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802750C
	ldr r1, _080274B4
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
	b _0802750C
	.align 2, 0
_080274A4: .4byte 0x02021DE0
_080274A8: .4byte 0x02023FD0
_080274AC: .4byte 0x02021AD0
_080274B0: .4byte 0x02021C08
_080274B4: .4byte 0x02021C10
_080274B8:
	cmp r0, #2
	bne _0802750C
	ldr r4, _08027514
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
_080274D2:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08027518
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _080274EE
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_080274EE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080274D2
	ldr r0, _0802751C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802750C
	ldr r1, _08027520
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0802750C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027514: .4byte 0x02023FD0
_08027518: .4byte 0x02021AD0
_0802751C: .4byte 0x02021C08
_08027520: .4byte 0x02021C10

	THUMB_FUNC_START sub_8027524
sub_8027524: @ 0x08027524
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080275BC
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _080275D0
	ldr r4, _080275C0
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	ldr r0, _080275C4
	mov r8, r0
	adds r7, r4, #0
	adds r4, r6, #0
_08027552:
	lsls r0, r5, #2
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802759A
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
_0802759A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027552
	ldr r0, _080275C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027658
	ldr r0, _080275CC
	ldr r1, _080275BC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _08027658
	.align 2, 0
_080275BC: .4byte 0x02021DE0
_080275C0: .4byte 0x02023FD0
_080275C4: .4byte 0x020240C4
_080275C8: .4byte 0x02021C08
_080275CC: .4byte 0x02021C10
_080275D0:
	cmp r0, #2
	bne _08027658
	ldr r4, _08027664
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r7, r4, #0
	adds r4, r6, #0
_080275F0:
	ldr r1, _08027668
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802763A
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
_0802763A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080275F0
	ldr r0, _0802766C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027658
	ldr r0, _08027670
	ldr r1, _08027674
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08027658:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027664: .4byte 0x02023FD0
_08027668: .4byte 0x020240B0
_0802766C: .4byte 0x02021C08
_08027670: .4byte 0x02021C10
_08027674: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027678
sub_8027678: @ 0x08027678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080276F0
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08027708
	ldr r4, _080276F4
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r6, #0
	adds r7, r4, #0
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
_0802769E:
	lsls r5, r6, #2
	adds r4, r5, r7
	ldr r0, [r4]
	bl sub_80406D8
	cmp r0, #1
	beq _080276D2
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_802607C
	cmp r0, #1
	beq _080276D2
	mov r0, r8
	adds r4, r5, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _080276F8
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080276D2
	ldr r0, [r4]
	bl sub_80406C0
_080276D2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0802769E
	ldr r0, _080276FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802777E
	ldr r1, _08027700
	ldr r0, _08027704
	strh r0, [r1]
	bl sub_801CEBC
	b _0802777E
	.align 2, 0
_080276F0: .4byte 0x02021DE0
_080276F4: .4byte 0x02023FD0
_080276F8: .4byte 0x02021AD0
_080276FC: .4byte 0x02021C08
_08027700: .4byte 0x02021C10
_08027704: .4byte 0x00000149
_08027708:
	cmp r0, #3
	bne _0802777E
	ldr r4, _08027788
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8040340
	movs r6, #0
	adds r5, r4, #0
	adds r7, r5, #0
	adds r7, #0x14
_08027726:
	lsls r4, r6, #2
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_80406D8
	cmp r0, #1
	beq _08027762
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r4, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802607C
	cmp r0, #1
	beq _08027762
	adds r4, r4, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _0802778C
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08027762
	ldr r0, [r4]
	bl sub_80406C0
_08027762:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08027726
	ldr r0, _08027790
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802777E
	ldr r1, _08027794
	ldr r0, _08027798
	strh r0, [r1]
	bl sub_801CEBC
_0802777E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027788: .4byte 0x02023FD0
_0802778C: .4byte 0x02021AD0
_08027790: .4byte 0x02021C08
_08027794: .4byte 0x02021C10
_08027798: .4byte 0x00000149

	THUMB_FUNC_START sub_802779C
sub_802779C: @ 0x0802779C
	push {r4, r5, lr}
	ldr r1, _080277D0
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027824
	ldr r4, _080277D4
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
_080277B8:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x60
	beq _080277C8
	cmp r1, #0x61
	bne _080277D8
_080277C8:
	bl sub_80403F0
	b _080277E0
	.align 2, 0
_080277D0: .4byte 0x02021DE0
_080277D4: .4byte 0x02023FD0
_080277D8:
	cmp r1, #0x62
	bne _080277E0
	bl sub_80403F0
_080277E0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080277B8
	ldr r0, _08027814
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802788C
	ldr r4, _08027818
	ldr r3, _0802781C
	ldr r2, _08027820
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802788C
	.align 2, 0
_08027814: .4byte 0x02021C08
_08027818: .4byte 0x02021C10
_0802781C: .4byte 0x02023FD0
_08027820: .4byte 0x02021DE0
_08027824:
	cmp r0, #2
	bne _0802788C
	ldr r4, _08027850
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
_0802783A:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x60
	beq _0802784A
	cmp r1, #0x61
	bne _08027854
_0802784A:
	bl sub_80403F0
	b _0802785C
	.align 2, 0
_08027850: .4byte 0x02023FD0
_08027854:
	cmp r1, #0x62
	bne _0802785C
	bl sub_80403F0
_0802785C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802783A
	ldr r0, _08027894
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802788C
	ldr r4, _08027898
	ldr r3, _0802789C
	ldr r2, _080278A0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802788C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027894: .4byte 0x02021C08
_08027898: .4byte 0x02021C10
_0802789C: .4byte 0x02023FD0
_080278A0: .4byte 0x02021DE0

	THUMB_FUNC_START sub_80278A4
sub_80278A4: @ 0x080278A4
	push {r4, r5, r6, lr}
	ldr r1, _0802790C
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _0802791C
	ldr r4, _08027910
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	movs r4, #0xc1
	lsls r4, r4, #1
_080278C6:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _080278D8
	adds r0, r1, #0
	bl sub_80403F0
_080278D8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080278C6
	ldr r0, _08027914
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802797A
	ldr r4, _08027918
	ldr r3, _08027910
	ldr r2, _0802790C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802797A
	.align 2, 0
_0802790C: .4byte 0x02021DE0
_08027910: .4byte 0x02023FD0
_08027914: .4byte 0x02021C08
_08027918: .4byte 0x02021C10
_0802791C:
	cmp r0, #2
	bne _0802797A
	ldr r4, _08027980
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	movs r4, #0xc1
	lsls r4, r4, #1
_08027938:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _0802794A
	adds r0, r1, #0
	bl sub_80403F0
_0802794A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027938
	ldr r0, _08027984
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802797A
	ldr r4, _08027988
	ldr r3, _08027980
	ldr r2, _0802798C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802797A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027980: .4byte 0x02023FD0
_08027984: .4byte 0x02021C08
_08027988: .4byte 0x02021C10
_0802798C: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027990
sub_8027990: @ 0x08027990
	push {r4, r5, r6, r7, lr}
	ldr r1, _080279FC
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027A0C
	ldr r4, _08027A00
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r7, r4, #0
	movs r6, #0xc1
	lsls r6, r6, #1
_080279B2:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, r6
	bne _080279CA
	adds r0, r1, #0
	bl sub_80403F0
	ldr r0, [r4]
	bl sub_80403F0
_080279CA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080279B2
	ldr r0, _08027A04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027A70
	ldr r4, _08027A08
	ldr r3, _08027A00
	ldr r2, _080279FC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027A70
	.align 2, 0
_080279FC: .4byte 0x02021DE0
_08027A00: .4byte 0x02023FD0
_08027A04: .4byte 0x02021C08
_08027A08: .4byte 0x02021C10
_08027A0C:
	cmp r0, #2
	bne _08027A70
	ldr r4, _08027A78
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r7, r4, #0
	movs r6, #0xc1
	lsls r6, r6, #1
_08027A28:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, r6
	bne _08027A40
	adds r0, r1, #0
	bl sub_80403F0
	ldr r0, [r4]
	bl sub_80403F0
_08027A40:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027A28
	ldr r0, _08027A7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027A70
	ldr r4, _08027A80
	ldr r3, _08027A78
	ldr r2, _08027A84
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027A70:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027A78: .4byte 0x02023FD0
_08027A7C: .4byte 0x02021C08
_08027A80: .4byte 0x02021C10
_08027A84: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027A88
sub_8027A88: @ 0x08027A88
	push {r4, r5, lr}
	ldr r1, _08027AE8
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027AF8
	ldr r4, _08027AEC
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
_08027AA4:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #1
	bne _08027AB6
	adds r0, r1, #0
	bl sub_80403F0
_08027AB6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027AA4
	ldr r0, _08027AF0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027B3E
	ldr r4, _08027AF4
	ldr r3, _08027AEC
	ldr r2, _08027AE8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027B3E
	.align 2, 0
_08027AE8: .4byte 0x02021DE0
_08027AEC: .4byte 0x02023FD0
_08027AF0: .4byte 0x02021C08
_08027AF4: .4byte 0x02021C10
_08027AF8:
	cmp r0, #2
	bne _08027B3E
	ldr r4, _08027B44
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
_08027B0E:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #1
	bne _08027B20
	adds r0, r1, #0
	bl sub_80403F0
_08027B20:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027B0E
	ldr r0, _08027B48
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027B3E
	ldr r0, _08027B4C
	ldr r1, _08027B50
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08027B3E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027B44: .4byte 0x02023FD0
_08027B48: .4byte 0x02021C08
_08027B4C: .4byte 0x02021C10
_08027B50: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027B54
sub_8027B54: @ 0x08027B54
	push {r4, r5, r6, lr}
	ldr r1, _08027BB8
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027BCC
	ldr r4, _08027BBC
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	ldr r4, _08027BC0
_08027B74:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _08027B86
	adds r0, r1, #0
	bl sub_80403F0
_08027B86:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027B74
	ldr r0, _08027BC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027C28
	ldr r4, _08027BC8
	ldr r3, _08027BBC
	ldr r2, _08027BB8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027C28
	.align 2, 0
_08027BB8: .4byte 0x02021DE0
_08027BBC: .4byte 0x02023FD0
_08027BC0: .4byte 0x00000177
_08027BC4: .4byte 0x02021C08
_08027BC8: .4byte 0x02021C10
_08027BCC:
	cmp r0, #2
	bne _08027C28
	ldr r4, _08027C30
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	ldr r4, _08027C34
_08027BE6:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _08027BF8
	adds r0, r1, #0
	bl sub_80403F0
_08027BF8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027BE6
	ldr r0, _08027C38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027C28
	ldr r4, _08027C3C
	ldr r3, _08027C30
	ldr r2, _08027C40
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027C28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027C30: .4byte 0x02023FD0
_08027C34: .4byte 0x00000177
_08027C38: .4byte 0x02021C08
_08027C3C: .4byte 0x02021C10
_08027C40: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027C44
sub_8027C44: @ 0x08027C44
	push {r4, r5, lr}
	ldr r1, _08027CA8
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027CB8
	ldr r4, _08027CAC
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r4, #0x28
_08027C64:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027C76
	adds r0, r1, #0
	bl sub_8040404
_08027C76:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027C64
	ldr r0, _08027CB0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027D14
	ldr r4, _08027CB4
	ldr r3, _08027CAC
	ldr r2, _08027CA8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027D14
	.align 2, 0
_08027CA8: .4byte 0x02021DE0
_08027CAC: .4byte 0x02023FD0
_08027CB0: .4byte 0x02021C08
_08027CB4: .4byte 0x02021C10
_08027CB8:
	cmp r0, #2
	bne _08027D14
	ldr r4, _08027D1C
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r4, #0x14
_08027CD2:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027CE4
	adds r0, r1, #0
	bl sub_8040404
_08027CE4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027CD2
	ldr r0, _08027D20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027D14
	ldr r4, _08027D24
	ldr r3, _08027D1C
	ldr r2, _08027D28
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027D14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027D1C: .4byte 0x02023FD0
_08027D20: .4byte 0x02021C08
_08027D24: .4byte 0x02021C10
_08027D28: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027D2C
sub_8027D2C: @ 0x08027D2C
	push {r4, r5, lr}
	ldr r4, _08027D60
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08027DF0
	ldr r1, _08027D64
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r5, r1, #0
	adds r5, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040340
	ldr r0, _08027D68
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027D6C
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
	b _08027D7E
	.align 2, 0
_08027D60: .4byte 0x02021DE0
_08027D64: .4byte 0x02023FD0
_08027D68: .4byte 0x02023FC0
_08027D6C:
	ldr r0, _08027D9C
	cmp r1, r0
	bne _08027D7E
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
_08027D7E:
	ldr r0, _08027DA0
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027DAC
	ldr r1, _08027DA4
	ldr r0, _08027DA8
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
	b _08027DC4
	.align 2, 0
_08027D9C: .4byte 0x000002D1
_08027DA0: .4byte 0x02023FC0
_08027DA4: .4byte 0x02023FD0
_08027DA8: .4byte 0x02021DE0
_08027DAC:
	ldr r0, _08027DDC
	cmp r1, r0
	bne _08027DC4
	ldr r1, _08027DE0
	ldr r0, _08027DE4
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
_08027DC4:
	ldr r0, _08027DE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027E94
	ldr r0, _08027DEC
	ldr r1, _08027DE4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _08027E94
	.align 2, 0
_08027DDC: .4byte 0x000002D1
_08027DE0: .4byte 0x02023FD0
_08027DE4: .4byte 0x02021DE0
_08027DE8: .4byte 0x02021C08
_08027DEC: .4byte 0x02021C10
_08027DF0:
	cmp r0, #2
	bne _08027E94
	ldr r1, _08027E20
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r5, r1, #0
	adds r5, #0x28
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040340
	ldr r0, _08027E24
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027E28
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
	b _08027E3A
	.align 2, 0
_08027E20: .4byte 0x02023FD0
_08027E24: .4byte 0x02023FC0
_08027E28:
	ldr r0, _08027E58
	cmp r1, r0
	bne _08027E3A
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
_08027E3A:
	ldr r0, _08027E5C
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027E68
	ldr r1, _08027E60
	ldr r0, _08027E64
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
	b _08027E80
	.align 2, 0
_08027E58: .4byte 0x000002D1
_08027E5C: .4byte 0x02023FC0
_08027E60: .4byte 0x02023FD0
_08027E64: .4byte 0x02021DE0
_08027E68:
	ldr r0, _08027E9C
	cmp r1, r0
	bne _08027E80
	ldr r1, _08027EA0
	ldr r0, _08027EA4
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
_08027E80:
	ldr r0, _08027EA8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027E94
	ldr r0, _08027EAC
	ldr r1, _08027EA4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08027E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027E9C: .4byte 0x000002D1
_08027EA0: .4byte 0x02023FD0
_08027EA4: .4byte 0x02021DE0
_08027EA8: .4byte 0x02021C08
_08027EAC: .4byte 0x02021C10

	THUMB_FUNC_START sub_8027EB0
sub_8027EB0: @ 0x08027EB0
	push {r4, r5, r6, lr}
	ldr r2, _08027F48
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _08027F5C
	ldr r4, _08027F4C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
_08027ED4:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027F16
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08027F16
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08027F50
	ldrb r0, [r0, #0x16]
	cmp r0, #0x14
	bne _08027F16
	ldr r2, _08027F48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08027F16:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027ED4
	ldr r0, _08027F54
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027FEC
	ldr r4, _08027F58
	ldr r3, _08027F4C
	ldr r2, _08027F48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027FEC
	.align 2, 0
_08027F48: .4byte 0x02021DE0
_08027F4C: .4byte 0x02023FD0
_08027F50: .4byte 0x02021AD0
_08027F54: .4byte 0x02021C08
_08027F58: .4byte 0x02021C10
_08027F5C:
	cmp r0, #2
	bne _08027FEC
	ldr r4, _08027FF4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
_08027F7A:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027FBC
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08027FBC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08027FF8
	ldrb r0, [r0, #0x16]
	cmp r0, #0x14
	bne _08027FBC
	ldr r2, _08027FFC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08027FBC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027F7A
	ldr r0, _08028000
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027FEC
	ldr r4, _08028004
	ldr r3, _08027FF4
	ldr r2, _08027FFC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027FEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027FF4: .4byte 0x02023FD0
_08027FF8: .4byte 0x02021AD0
_08027FFC: .4byte 0x02021DE0
_08028000: .4byte 0x02021C08
_08028004: .4byte 0x02021C10

	THUMB_FUNC_START sub_8028008
sub_8028008: @ 0x08028008
	push {r4, r5, r6, r7, lr}
	ldr r6, _08028088
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _0802809C
	ldr r4, _0802808C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	ldr r7, _08028090
_0802802C:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028054
	cmp r0, r7
	bne _08028054
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_08028054:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802802C
	ldr r0, _08028094
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028112
	ldr r4, _08028098
	ldr r3, _0802808C
	ldr r2, _08028088
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08028112
	.align 2, 0
_08028088: .4byte 0x02021DE0
_0802808C: .4byte 0x02023FD0
_08028090: .4byte 0x0000022A
_08028094: .4byte 0x02021C08
_08028098: .4byte 0x02021C10
_0802809C:
	cmp r0, #2
	bne _08028112
	ldr r4, _08028118
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	ldr r7, _0802811C
_080280BA:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080280E2
	cmp r0, r7
	bne _080280E2
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_080280E2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080280BA
	ldr r0, _08028120
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028112
	ldr r4, _08028124
	ldr r3, _08028118
	ldr r2, _08028128
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028112:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028118: .4byte 0x02023FD0
_0802811C: .4byte 0x0000022A
_08028120: .4byte 0x02021C08
_08028124: .4byte 0x02021C10
_08028128: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802812C
sub_802812C: @ 0x0802812C
	push {r4, r5, r6, lr}
	ldr r6, _080281A8
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _080281B8
	ldr r4, _080281AC
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
_0802814E:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028176
	cmp r0, #0xc
	bne _08028176
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_08028176:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802814E
	ldr r0, _080281B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802822C
	ldr r4, _080281B4
	ldr r3, _080281AC
	ldr r2, _080281A8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802822C
	.align 2, 0
_080281A8: .4byte 0x02021DE0
_080281AC: .4byte 0x02023FD0
_080281B0: .4byte 0x02021C08
_080281B4: .4byte 0x02021C10
_080281B8:
	cmp r0, #2
	bne _0802822C
	ldr r4, _08028234
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
_080281D4:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080281FC
	cmp r0, #0xc
	bne _080281FC
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_080281FC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080281D4
	ldr r0, _08028238
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802822C
	ldr r4, _0802823C
	ldr r3, _08028234
	ldr r2, _08028240
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802822C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028234: .4byte 0x02023FD0
_08028238: .4byte 0x02021C08
_0802823C: .4byte 0x02021C10
_08028240: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028244
sub_8028244: @ 0x08028244
	push {r4, r5, lr}
	ldr r2, _080282B0
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _080282C0
	ldr r4, _080282B4
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r4, #0x14
_08028268:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _0802827C
	cmp r1, #0xa1
	bne _0802827C
	bl sub_80403F0
_0802827C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028268
	ldr r0, _080282B8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028322
	ldr r4, _080282BC
	ldr r3, _080282B4
	ldr r2, _080282B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08028322
	.align 2, 0
_080282B0: .4byte 0x02021DE0
_080282B4: .4byte 0x02023FD0
_080282B8: .4byte 0x02021C08
_080282BC: .4byte 0x02021C10
_080282C0:
	cmp r0, #2
	bne _08028322
	ldr r4, _08028328
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r4, #0x28
_080282DE:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _080282F2
	cmp r1, #0xa1
	bne _080282F2
	bl sub_80403F0
_080282F2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080282DE
	ldr r0, _0802832C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028322
	ldr r4, _08028330
	ldr r3, _08028328
	ldr r2, _08028334
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028322:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028328: .4byte 0x02023FD0
_0802832C: .4byte 0x02021C08
_08028330: .4byte 0x02021C10
_08028334: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028338
sub_8028338: @ 0x08028338
	push {r4, r5, lr}
	ldr r2, _080283A4
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _080283B4
	ldr r4, _080283A8
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r4, #0x14
_0802835C:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _08028370
	cmp r1, #0xa0
	bne _08028370
	bl sub_80403F0
_08028370:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802835C
	ldr r0, _080283AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028416
	ldr r4, _080283B0
	ldr r3, _080283A8
	ldr r2, _080283A4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08028416
	.align 2, 0
_080283A4: .4byte 0x02021DE0
_080283A8: .4byte 0x02023FD0
_080283AC: .4byte 0x02021C08
_080283B0: .4byte 0x02021C10
_080283B4:
	cmp r0, #2
	bne _08028416
	ldr r4, _0802841C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r4, #0x28
_080283D2:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _080283E6
	cmp r1, #0xa0
	bne _080283E6
	bl sub_80403F0
_080283E6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080283D2
	ldr r0, _08028420
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028416
	ldr r4, _08028424
	ldr r3, _0802841C
	ldr r2, _08028428
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028416:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802841C: .4byte 0x02023FD0
_08028420: .4byte 0x02021C08
_08028424: .4byte 0x02021C10
_08028428: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802842C
sub_802842C: @ 0x0802842C
	push {r4, r5, r6, r7, lr}
	ldr r2, _080284C0
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _080284D0
	ldr r4, _080284C4
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	movs r7, #0xb7
	lsls r7, r7, #1
_08028454:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802848E
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802848E
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, r7
	bne _0802848E
	ldr r2, _080284C0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_0802848E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028454
	ldr r0, _080284C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802855C
	ldr r4, _080284CC
	ldr r3, _080284C4
	ldr r2, _080284C0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802855C
	.align 2, 0
_080284C0: .4byte 0x02021DE0
_080284C4: .4byte 0x02023FD0
_080284C8: .4byte 0x02021C08
_080284CC: .4byte 0x02021C10
_080284D0:
	cmp r0, #2
	bne _0802855C
	ldr r4, _08028564
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	movs r7, #0xb7
	lsls r7, r7, #1
_080284F2:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802852C
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802852C
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, r7
	bne _0802852C
	ldr r2, _08028568
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_0802852C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080284F2
	ldr r0, _0802856C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802855C
	ldr r4, _08028570
	ldr r3, _08028564
	ldr r2, _08028568
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802855C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028564: .4byte 0x02023FD0
_08028568: .4byte 0x02021DE0
_0802856C: .4byte 0x02021C08
_08028570: .4byte 0x02021C10

	THUMB_FUNC_START sub_8028574
sub_8028574: @ 0x08028574
	push {r4, r5, r6, lr}
	ldr r2, _080285C0
	ldrb r0, [r2, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08028646
	ldr r4, _080285C4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x14
_080285A0:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080285D6
	bl SetCardData
	ldr r0, _080285C8
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _080285CC
	ldr r0, [r4]
	bl sub_8040404
	b _080285D6
	.align 2, 0
_080285C0: .4byte 0x02021DE0
_080285C4: .4byte 0x02023FD0
_080285C8: .4byte 0x02021AD0
_080285CC:
	cmp r0, #2
	bne _080285D6
	ldr r0, [r4]
	bl sub_80403F0
_080285D6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080285A0
	movs r5, #0
	ldr r6, _08028604
_080285E4:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028616
	bl SetCardData
	ldr r0, _08028608
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _0802860C
	ldr r0, [r4]
	bl sub_8040404
	b _08028616
	.align 2, 0
_08028604: .4byte 0x02023FF8
_08028608: .4byte 0x02021AD0
_0802860C:
	cmp r0, #2
	bne _08028616
	ldr r0, [r4]
	bl sub_80403F0
_08028616:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080285E4
	ldr r0, _0802864C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028646
	ldr r4, _08028650
	ldr r3, _08028654
	ldr r2, _08028658
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028646:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802864C: .4byte 0x02021C08
_08028650: .4byte 0x02021C10
_08028654: .4byte 0x02023FD0
_08028658: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802865C
sub_802865C: @ 0x0802865C
	push {r4, r5, r6, lr}
	ldr r2, _080286A8
	ldrb r0, [r2, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0802872E
	ldr r4, _080286AC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x14
_08028688:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080286BE
	bl SetCardData
	ldr r0, _080286B0
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _080286B4
	ldr r0, [r4]
	bl sub_80403F0
	b _080286BE
	.align 2, 0
_080286A8: .4byte 0x02021DE0
_080286AC: .4byte 0x02023FD0
_080286B0: .4byte 0x02021AD0
_080286B4:
	cmp r0, #2
	bne _080286BE
	ldr r0, [r4]
	bl sub_8040404
_080286BE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028688
	movs r5, #0
	ldr r6, _080286EC
_080286CC:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080286FE
	bl SetCardData
	ldr r0, _080286F0
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _080286F4
	ldr r0, [r4]
	bl sub_80403F0
	b _080286FE
	.align 2, 0
_080286EC: .4byte 0x02023FF8
_080286F0: .4byte 0x02021AD0
_080286F4:
	cmp r0, #2
	bne _080286FE
	ldr r0, [r4]
	bl sub_8040404
_080286FE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080286CC
	ldr r0, _08028734
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802872E
	ldr r4, _08028738
	ldr r3, _0802873C
	ldr r2, _08028740
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802872E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028734: .4byte 0x02021C08
_08028738: .4byte 0x02021C10
_0802873C: .4byte 0x02023FD0
_08028740: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028744
sub_8028744: @ 0x08028744
	push {r4, r5, r6, lr}
	ldr r2, _08028838
	ldrb r0, [r2, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08028830
	ldr r4, _0802883C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
_0802876E:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080287B0
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080287B0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08028840
	ldrb r0, [r0, #0x16]
	cmp r0, #0xa
	bne _080287B0
	ldr r2, _08028838
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_080287B0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802876E
	movs r5, #0
	ldr r6, _0802883C
_080287BE:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028800
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028800
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08028840
	ldrb r0, [r0, #0x16]
	cmp r0, #0xa
	bne _08028800
	ldr r2, _08028838
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08028800:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080287BE
	ldr r0, _08028844
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028830
	ldr r4, _08028848
	ldr r3, _0802883C
	ldr r2, _08028838
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028830:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028838: .4byte 0x02021DE0
_0802883C: .4byte 0x02023FD0
_08028840: .4byte 0x02021AD0
_08028844: .4byte 0x02021C08
_08028848: .4byte 0x02021C10

	THUMB_FUNC_START sub_802884C
sub_802884C: @ 0x0802884C
	push {r4, r5, r6, lr}
	ldr r2, _080288FC
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _08028914
	ldr r4, _08028900
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
_08028870:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080288B2
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080288B2
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08028904
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080288B2
	ldr r2, _080288FC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_080288B2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028870
	ldr r0, _08028908
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08028904
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080288E6
	ldr r3, _08028900
	ldr r2, _080288FC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80403F0
_080288E6:
	ldr r0, _0802890C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080289BC
	ldr r0, _08028910
	ldr r1, _080288FC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _080289BC
	.align 2, 0
_080288FC: .4byte 0x02021DE0
_08028900: .4byte 0x02023FD0
_08028904: .4byte 0x02021AD0
_08028908: .4byte 0x02023FC0
_0802890C: .4byte 0x02021C08
_08028910: .4byte 0x02021C10
_08028914:
	cmp r0, #2
	bne _080289BC
	ldr r4, _080289C4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
_08028932:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028974
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028974
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _080289C8
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08028974
	ldr r2, _080289CC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08028974:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028932
	ldr r0, _080289D0
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _080289C8
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080289A8
	ldr r3, _080289C4
	ldr r2, _080289CC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80403F0
_080289A8:
	ldr r0, _080289D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080289BC
	ldr r0, _080289D8
	ldr r1, _080289CC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_080289BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080289C4: .4byte 0x02023FD0
_080289C8: .4byte 0x02021AD0
_080289CC: .4byte 0x02021DE0
_080289D0: .4byte 0x02023FC0
_080289D4: .4byte 0x02021C08
_080289D8: .4byte 0x02021C10

	THUMB_FUNC_START sub_80289DC
sub_80289DC: @ 0x080289DC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08028A64
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _08028A78
	ldr r4, _08028A68
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r6, r4, #0
_08028A00:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028A42
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028A42
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08028A6C
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08028A42
	ldr r2, _08028A64
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08028A42:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028A00
	ldr r0, _08028A70
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028AF4
	ldr r0, _08028A74
	ldr r1, _08028A64
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _08028AF4
	.align 2, 0
_08028A64: .4byte 0x02021DE0
_08028A68: .4byte 0x02023FD0
_08028A6C: .4byte 0x02021AD0
_08028A70: .4byte 0x02021C08
_08028A74: .4byte 0x02021C10
_08028A78:
	cmp r0, #2
	bne _08028AF4
	movs r5, #0
	ldr r7, _08028AFC
	adds r6, r2, #0
_08028A82:
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_8040340
	lsls r1, r5, #2
	adds r0, r7, #0
	adds r0, #0x28
	adds r4, r1, r0
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028AD6
	adds r0, r1, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028AD6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardData
	ldr r0, _08028B00
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08028AD6
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_80403F0
_08028AD6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028A82
	ldr r0, _08028B04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028AF4
	ldr r0, _08028B08
	ldr r1, _08028B0C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08028AF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028AFC: .4byte 0x02023FD0
_08028B00: .4byte 0x02021AD0
_08028B04: .4byte 0x02021C08
_08028B08: .4byte 0x02021C10
_08028B0C: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028B10
sub_8028B10: @ 0x08028B10
	push {r4, lr}
	ldr r4, _08028B48
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08028B58
	ldr r2, _08028B4C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldr r0, _08028B50
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028B86
	ldr r1, _08028B54
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
	b _08028B86
	.align 2, 0
_08028B48: .4byte 0x02021DE0
_08028B4C: .4byte 0x02023FD0
_08028B50: .4byte 0x02021C08
_08028B54: .4byte 0x02021C10
_08028B58:
	cmp r0, #2
	bne _08028B86
	ldr r2, _08028B8C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08028B90
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028B86
	ldr r1, _08028B94
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_08028B86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028B8C: .4byte 0x02023FD0
_08028B90: .4byte 0x02021C08
_08028B94: .4byte 0x02021C10

	THUMB_FUNC_START sub_8028B98
sub_8028B98: @ 0x08028B98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08028C88
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08028BAC
	cmp r0, #3
	bne _08028C7C
_08028BAC:
	ldr r4, _08028C8C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040340
	movs r5, #0
	adds r4, #0x14
	mov sb, r4
	ldr r6, _08028C90
	ldr r0, _08028C94
	mov r8, r0
	ldr r7, _08028C98
_08028BD0:
	lsls r0, r5, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028C02
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl sub_800B318
	ldr r0, _08028C9C
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bls _08028C02
	ldr r0, [r4]
	bl sub_80406C0
_08028C02:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028BD0
	movs r5, #0
	ldr r0, _08028CA0
	mov sb, r0
	ldr r6, _08028C90
	ldr r1, _08028C94
	mov r8, r1
	ldr r7, _08028C98
_08028C1A:
	lsls r0, r5, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028C4C
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0


