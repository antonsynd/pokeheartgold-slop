	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8F6C
	.public ov102_021E9084
	.public ov102_021EA268
	.public ov102_021EA41C
	.public ov102_021EA644
	.public ov102_021EA678
	.public ov102_021EA71C
	.public ov102_021EA754
	.public ov102_021EA80C
	.public ov102_021EA8C0
	.public ov102_021EA920
	.public ov102_021EAA3C
	.public ov102_021EAC20
	.public ov102_021EAE40

	.text

	thumb_func_start ov102_021EA41C
ov102_021EA41C: ; 0x021EA41C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov102_021EA268
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021EA80C
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0xbf
	ldr r3, _021EA63C ; =0x000001E2
	mvn r0, r0
	strh r0, [r5, r3]
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	mov r1, #4
	mov r2, #3
	bl BgSetPosTextAndCommit
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #4
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	add r1, r5, #0
	lsr r4, r7, #5
	str r0, [sp, #8]
	mov r2, #0
	lsl r0, r4, #0x10
	str r2, [sp, #0xc]
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0xc
	mov r3, #3
	bl AddWindowParameterized
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	add r1, r5, #0
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x1c
	mov r3, #3
	bl AddWindowParameterized
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	add r1, r5, #0
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x6c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x2c
	mov r2, #0
	bl AddWindowParameterized
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r3, #2
	add r1, r5, #0
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x6c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x3c
	mov r2, #0
	bl AddWindowParameterized
	mov r0, #0xc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xa2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x4c
	mov r2, #0
	mov r3, #0x19
	bl AddWindowParameterized
	add r1, r4, #0
	ldr r0, _021EA640 ; =0x000001EE
	add r1, #0xa2
	strh r1, [r5, r0]
	mov r0, #0x23
	bl YesNoPrompt_Create
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0xde
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r6, #0
	add r3, r1, #0
	bl GfGfxLoader_LoadCharData
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xde
	add r0, #0x90
	str r1, [r0]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x23
	mov r3, #7
	str r0, [sp, #4]
	mov r0, #0x26
	mov r1, #0x19
	mov r2, #0
	lsl r3, r3, #6
	bl GfGfxLoader_GXLoadPal
	add r1, r4, #0
	mov r0, #0x7b
	add r1, #0xe7
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [r5, #4]
	bl ov102_021E9084
	lsl r0, r0, #0x18
	add r2, r4, #0
	lsr r0, r0, #0x18
	add r2, #0xe7
	str r0, [sp]
	mov r0, #0x23
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0xf
	bl LoadUserFrameGfx2
	add r0, r5, #0
	add r4, #0xe7
	add r0, #0x2c
	add r1, r4, #0
	mov r2, #0xf
	str r0, [r5, #0x5c]
	bl sub_0200E948
	add r0, r5, #0
	add r0, #0xc
	bl PutWindowTilemap
	add r0, r5, #0
	add r0, #0x1c
	bl PutWindowTilemap
	add r0, r5, #0
	add r0, #0x2c
	bl PutWindowTilemap
	add r0, r5, #0
	add r0, #0x3c
	bl PutWindowTilemap
	add r0, r5, #0
	bl ov102_021EA8C0
	add r0, r5, #0
	bl ov102_021EAA3C
	add r0, r5, #0
	mov r1, #0
	bl ov102_021EAE40
	add r0, r5, #0
	bl ov102_021EA920
	ldr r0, [r5, #4]
	bl ov102_021E8F6C
	cmp r0, #2
	bne _021EA636
	add r0, r5, #0
	bl ov102_021EAC20
_021EA636:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EA63C: .word 0x000001E2
_021EA640: .word 0x000001EE
	thumb_func_end ov102_021EA41C

	thumb_func_start ov102_021EA644
ov102_021EA644: ; 0x021EA644
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl ov102_021EA268
	ldr r1, _021EA674 ; =0x04000006
	ldrh r1, [r1]
	cmp r1, #0x30
	bge _021EA666
	mov r3, #0x1e
	lsl r3, r3, #4
	ldrsh r3, [r4, r3]
	mov r1, #0
	mov r2, #3
	bl BgSetPosTextAndCommit
	pop {r4, pc}
_021EA666:
	mov r1, #0
	mov r2, #3
	add r3, r1, #0
	bl BgSetPosTextAndCommit
	pop {r4, pc}
	nop
_021EA674: .word 0x04000006
	thumb_func_end ov102_021EA644

	thumb_func_start ov102_021EA678
ov102_021EA678: ; 0x021EA678
	push {r3, r4}
	ldr r2, _021EA70C ; =0x0400004A
	mov r3, #0x3f
	ldrh r0, [r2]
	mov r4, #0x1f
	bic r0, r3
	orr r0, r4
	strh r0, [r2]
	cmp r1, #0
	beq _021EA6D2
	sub r0, r2, #2
	ldrh r4, [r0]
	mov r1, #0x1a
	bic r4, r3
	orr r1, r4
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021EA710 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x1b
	lsl r1, r1, #8
	orr r1, r3
	strh r1, [r0]
	add r0, r2, #0
	mov r3, #0xff
	sub r0, #0xa
	strh r3, [r0]
	mov r0, #0x30
	sub r1, r2, #6
	strh r0, [r1]
	add r1, r2, #0
	sub r1, #8
	strh r3, [r1]
	sub r1, r2, #4
	ldr r3, _021EA714 ; =0x0000A0C0
	sub r2, #0x4a
	strh r3, [r1]
	ldr r3, [r2]
	ldr r1, _021EA718 ; =0xFFFF1FFF
	lsl r0, r0, #9
	and r1, r3
	orr r0, r1
	str r0, [r2]
	pop {r3, r4}
	bx lr
_021EA6D2:
	sub r0, r2, #2
	ldrh r1, [r0]
	bic r1, r3
	orr r1, r4
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021EA710 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r4, #8
	orr r1, r3
	strh r1, [r0]
	add r0, r2, #0
	mov r1, #0
	sub r0, #0xa
	strh r1, [r0]
	sub r0, r2, #6
	strh r1, [r0]
	add r0, r2, #0
	sub r0, #8
	strh r1, [r0]
	sub r0, r2, #4
	strh r1, [r0]
	sub r2, #0x4a
	ldr r1, [r2]
	ldr r0, _021EA718 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021EA70C: .word 0x0400004A
_021EA710: .word 0xFFFFC0FF
_021EA714: .word 0x0000A0C0
_021EA718: .word 0xFFFF1FFF
	thumb_func_end ov102_021EA678

	thumb_func_start ov102_021EA71C
ov102_021EA71C: ; 0x021EA71C
	add r2, r0, #0
	mov r0, #0x79
	mov r3, #0
	lsl r0, r0, #2
	strb r3, [r2, r0]
	add r3, r0, #1
	strb r1, [r2, r3]
	add r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _021EA740
	ldr r1, _021EA748 ; =0x04000048
	mov r0, #0x3f
	ldrh r3, [r1]
	bic r3, r0
	mov r0, #0x1b
	orr r0, r3
	strh r0, [r1]
_021EA740:
	ldr r3, _021EA74C ; =Main_SetHBlankIntrCB
	ldr r0, _021EA750 ; =ov102_021EA644
	add r1, r2, #0
	bx r3
	.balign 4, 0
_021EA748: .word 0x04000048
_021EA74C: .word Main_SetHBlankIntrCB
_021EA750: .word ov102_021EA644
	thumb_func_end ov102_021EA71C

	thumb_func_start ov102_021EA754
ov102_021EA754: ; 0x021EA754
	push {r4, r5, r6, lr}
	mov r1, #0x79
	add r5, r0, #0
	lsl r1, r1, #2
	ldrb r2, [r5, r1]
	cmp r2, #5
	bls _021EA77C
	add r1, r1, #1
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021EA772
	mov r1, #1
	bl ov102_021EA678
	b _021EA778
_021EA772:
	mov r1, #0
	bl ov102_021EA678
_021EA778:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EA77C:
	ldr r0, [r5]
	bl ov102_021EA268
	add r6, r0, #0
	ldr r0, _021EA804 ; =0x000001E5
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021EA792
	mov r4, #7
	mvn r4, r4
	b _021EA794
_021EA792:
	mov r4, #8
_021EA794:
	ldr r3, _021EA808 ; =0x000001E2
	mov r2, #3
	ldrsh r0, [r5, r3]
	add r0, r0, r4
	strh r0, [r5, r3]
	sub r0, r3, #2
	ldrsh r0, [r5, r0]
	add r1, r0, r4
	sub r0, r3, #2
	strh r1, [r5, r0]
	sub r3, r3, #2
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	mov r1, #0
	bl BgSetPosTextAndCommit
	ldr r3, _021EA808 ; =0x000001E2
	add r0, r6, #0
	ldrsh r3, [r5, r3]
	mov r1, #4
	mov r2, #3
	bl BgSetPosTextAndCommit
	neg r4, r4
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x60]
	mov r1, #0
	asr r2, r2, #0x10
	bl Sprite_OffsetPositionXY
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x64]
	mov r1, #0
	asr r2, r2, #0x10
	bl Sprite_OffsetPositionXY
	mov r0, #0x79
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	add r1, r0, #1
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _021EA800
	ldrb r0, [r5, r0]
	cmp r0, #6
	bne _021EA800
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl HBlankInterruptDisable
_021EA800:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EA804: .word 0x000001E5
_021EA808: .word 0x000001E2
	thumb_func_end ov102_021EA754

