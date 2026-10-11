	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225B620
	.public ov89_0225B784
	.extern ov89_0225AD00
	.extern ov89_0225AD64
	.extern ov89_0225ADA4

	.text

	.text
	thumb_func_start ov89_0225B620
ov89_0225B620: ; 0x0225B620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r1, [sp]
	ldr r1, _0225B770 ; =0x0000016D
	add r4, #0x94
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0225B638
	cmp r2, #1
	beq _0225B684
	b _0225B74A
_0225B638:
	bl ov89_0225AD00
	mov r1, #0x5b
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_020182B0
	ldr r7, [sp]
	mov r6, #0
	add r5, r4, #0
	add r7, #0xc
_0225B658:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020181B0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl sub_020182A8
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #3
	blt _0225B658
	ldr r0, _0225B770 ; =0x0000016D
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_0225B684:
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_020182B0
	ldr r1, [sp, #0xc]
	ldr r0, _0225B774 ; =0xFFFB0000
	cmp r1, r0
	blt _0225B6BA
	mov r2, #5
	lsl r2, r2, #0x10
	cmp r1, r2
	bgt _0225B6BA
	mov r0, #3
	ldr r3, [sp, #8]
	lsl r0, r0, #0x10
	cmp r3, r0
	bgt _0225B6BA
	ldr r0, _0225B778 ; =0xFFFD0000
	cmp r3, r0
	blt _0225B6BA
	ldr r0, _0225B77C ; =0x0000016B
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225B6E4
_0225B6BA:
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_0225B6C0:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020182A0
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #3
	blt _0225B6C0
	ldr r0, [sp]
	mov r1, #0
	add r0, #0x1c
	bl sub_020182A0
	ldr r0, _0225B770 ; =0x0000016D
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0225B758
_0225B6E4:
	ldr r0, [sp]
	lsr r2, r2, #5
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r0, #0x1c
	bl sub_020182A8
	mov r0, #0x5a
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	bne _0225B73E
	ldr r0, _0225B780 ; =0x0000016A
	mov r2, #0xa
	ldrb r1, [r4, r0]
	ldr r3, [sp, #8]
	mov r0, #0x78
	mul r0, r1
	lsl r2, r2, #0xa
	add r2, r3, r2
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r4, r0
	bl sub_020182A8
	ldr r0, _0225B780 ; =0x0000016A
	ldrb r1, [r4, r0]
	mov r0, #0x78
	mul r0, r1
	add r0, r4, r0
	mov r1, #1
	bl sub_020182A0
	ldr r0, _0225B780 ; =0x0000016A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #3
	blo _0225B73E
	mov r1, #0
	strb r1, [r4, r0]
_0225B73E:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0225B758
_0225B74A:
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	bl ov89_0225AD64
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225B758:
	ldr r0, [sp]
	mov r2, #0x17
	lsl r2, r2, #4
	ldr r1, [sp]
	add r0, #0x1c
	add r2, r4, r2
	mov r3, #0
	bl ov89_0225ADA4
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B770: .word 0x0000016D
_0225B774: .word 0xFFFB0000
_0225B778: .word 0xFFFD0000
_0225B77C: .word 0x0000016B
_0225B780: .word 0x0000016A
	thumb_func_end ov89_0225B620

	thumb_func_start ov89_0225B784
ov89_0225B784: ; 0x0225B784
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r6, #0
	mov r0, #0x5b
	add r7, #0x94
	lsl r0, r0, #2
	ldrb r3, [r7, r0]
	cmp r3, #0xff
	beq _0225B7C0
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225B7C0:
	mov r4, #0
	add r5, r7, #0
_0225B7C4:
	add r0, r5, #0
	bl sub_020181EC
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _0225B7C4
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrb r3, [r7, r0]
	cmp r3, #0xff
	beq _0225B804
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225B804:
	add r6, #0x1c
	add r0, r6, #0
	bl sub_020181EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov89_0225B784

