	.include "macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E6F7C

	.text

	.text
	thumb_func_start ov109_021E6F7C
ov109_021E6F7C: ; 0x021E6F7C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	mov r1, #2
	add r6, r2, #0
	bl BgClearTilemapBufferAndCommit
	cmp r6, #0
	beq _021E6FCE
	add r0, r5, #0
	add r0, #0xbc
	lsr r1, r4, #0x1f
	add r1, r4, r1
	asr r2, r1, #1
	ldr r0, [r0]
	mov r1, #0x10
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	lsl r1, r2, #0x1c
	lsr r2, r1, #0x18
	str r2, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x14]
	bl CopyToBgTilemapRect
_021E6FCE:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov109_021E6F7C

