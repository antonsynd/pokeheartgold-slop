	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02261808

	.text

	thumb_func_start ov91_02261808
ov91_02261808: ; 0x02261808
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	str r0, [sp]
	add r1, r2, #0
	mov r2, #2
	ldr r0, [r5, #0x5c]
	add r3, r2, #0
	bl String16_FormatInteger
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r4]
	add r1, #0x38
	mov r2, #3
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0226188C ; =0x000F0E00
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x5c]
	add r0, #0x38
	bl AddTextPrinterParameterizedWithColor
	add r3, r5, #0
	add r3, #0x9c
	add r2, r5, #0
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r3, [r3]
	add r2, #0x38
	bl TextOBJ_CopyFromBGWindow
	add r0, r5, #0
	add r0, #0x38
	bl RemoveWindow
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r0, r5, #0
	mov r1, #1
	add r0, #0x98
	strh r1, [r0]
	mov r0, #0
	add r5, #0x9a
	strh r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0226188C: .word 0x000F0E00
	thumb_func_end ov91_02261808

