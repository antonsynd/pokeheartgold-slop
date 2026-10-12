	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E5D2C

	.text

	.text
	thumb_func_start ov111_021E5D2C
ov111_021E5D2C: ; 0x021E5D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl GetWindowBgConfig
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl GetWindowBgId
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl GetWindowX
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl GetWindowY
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x30
	bl CalculateHpBarPixelsLength
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x30
	bl CalculateHpBarColor
	cmp r0, #4
	bhi _021E5D90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5D7A: ; jump table
	.short _021E5D84 - _021E5D7A - 2 ; case 0
	.short _021E5D8C - _021E5D7A - 2 ; case 1
	.short _021E5D88 - _021E5D7A - 2 ; case 2
	.short _021E5D84 - _021E5D7A - 2 ; case 3
	.short _021E5D84 - _021E5D7A - 2 ; case 4
_021E5D84:
	mov r6, #1
	b _021E5D94
_021E5D88:
	mov r6, #0xa
	b _021E5D94
_021E5D8C:
	mov r6, #0x13
	b _021E5D94
_021E5D90:
	bl GF_AssertFail
_021E5D94:
	add r0, r6, #0
	add r0, #8
	lsl r0, r0, #0x10
	mov r5, #0
	lsr r7, r0, #0x10
_021E5D9E:
	cmp r4, #8
	blo _021E5DA6
	add r2, r7, #0
	b _021E5DAC
_021E5DA6:
	add r0, r6, r4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_021E5DAC:
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	add r3, r3, r5
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	cmp r4, #8
	bhs _021E5DD2
	mov r4, #0
	b _021E5DD8
_021E5DD2:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_021E5DD8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021E5D9E
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov111_021E5D2C

