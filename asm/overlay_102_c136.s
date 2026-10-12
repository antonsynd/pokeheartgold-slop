	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA41C
	.extern ov102_021E8F6C
	.extern ov102_021E9084
	.extern ov102_021EA268
	.extern ov102_021EA80C
	.extern ov102_021EA8C0
	.extern ov102_021EA920
	.extern ov102_021EAA3C
	.extern ov102_021EAC20
	.extern ov102_021EAE40

	.text

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

