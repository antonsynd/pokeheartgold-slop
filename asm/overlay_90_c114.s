	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B59C
	.extern ov90_02258E54
	.extern ov90_02258EB4

	.text

	.text
	thumb_func_start ov90_0225B59C
ov90_0225B59C: ; 0x0225B59C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	ldr r1, [sp, #0x44]
	str r2, [sp, #0x14]
	str r1, [sp, #0x44]
	mov r1, #0
	mov r2, #0x4c
	add r7, r0, #0
	add r6, r3, #0
	ldr r4, [sp, #0x40]
	bl memset
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x44]
	mov r3, #7
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	lsl r3, r3, #6
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0x8b
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	mov r1, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	add r0, r4, #0
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldr r0, [sp, #0x44]
	mov r1, #0x1a
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r3, r7, #4
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	str r0, [r7]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	ldr r0, _0225B68C ; =0x00001389
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	mov r2, #0xf
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r3, #1
	bl ov90_02258E54
	str r0, [r7, #0x44]
	mov r0, #0x28
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_0225B624:
	ldr r0, [sp, #0x20]
	mov r4, #0x4a
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r6, #0
	str r0, [sp, #0x24]
_0225B630:
	ldr r0, [sp, #0x1c]
	lsl r2, r4, #0x10
	add r0, r6, r0
	lsl r0, r0, #2
	add r5, r7, r0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	ldr r1, [r1]
	ldr r3, [sp, #0x24]
	asr r2, r2, #0x10
	bl ov90_02258EB4
	str r0, [r5, #8]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x18]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #8]
	mov r1, #0
	bl Sprite_SetPriority
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #5
	blt _0225B630
	ldr r0, [sp, #0x20]
	add r0, #0x24
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #5
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0225B624
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225B68C: .word 0x00001389
	thumb_func_end ov90_0225B59C

