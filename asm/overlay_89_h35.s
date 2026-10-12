	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225A260
	.extern ov89_0225A368

	.text

	.text
	thumb_func_start ov89_0225A260
ov89_0225A260: ; 0x0225A260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r4, [sp, #0x9c]
	cmp r0, #0
	beq _0225A278
	bl GF_AssertFail
_0225A278:
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r2, sp, #0x28
	add r3, sp, #0x24
	ldr r7, [r6, #0x20]
	bl ov89_0225A368
	add r0, sp, #0x38
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x20]
	lsl r2, r2, #0x18
	add r1, sp, #0x38
	lsr r2, r2, #0x18
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x38
	str r3, [sp, #0x14]
	bl AddTextPrinterParameterizedWithColorAndSpacing
	add r0, sp, #0x38
	mov r1, #1
	mov r2, #0x7d
	bl sub_02013688
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x2c
	bl sub_02021AC8
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _0225A2E6
	ldr r1, [sp, #0x28]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r4, r4, r0
_0225A2E6:
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x48]
	add r0, sp, #0x38
	str r0, [sp, #0x4c]
	add r0, r7, #0
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x98]
	add r0, r7, #0
	bl SpriteManager_FindPlttResourceProxy
	mov r1, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x60]
	sub r0, #8
	str r0, [sp, #0x64]
	mov r0, #0x33
	str r0, [sp, #0x6c]
	mov r0, #1
	str r0, [sp, #0x70]
	mov r0, #0x7d
	str r0, [sp, #0x74]
	add r0, sp, #0x48
	str r1, [sp, #0x68]
	bl sub_020135D8
	ldr r1, [sp, #0x94]
	add r6, r0, #0
	bl sub_020138E0
	ldr r2, [sp, #0xa0]
	add r0, r6, #0
	add r1, r4, #0
	sub r2, #8
	bl sub_020136B4
	add r0, sp, #0x38
	bl RemoveWindow
	str r6, [r5]
	add r3, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0x28]
	strh r0, [r5, #0x10]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov89_0225A260

