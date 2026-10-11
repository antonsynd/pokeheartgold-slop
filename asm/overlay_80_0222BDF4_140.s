	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222F210

	.text

	thumb_func_start ov80_0222F210
ov80_0222F210: ; 0x0222F210
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	bl sub_02074490
	mov r1, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	mov r1, #2
	bl SpriteSystem_LoadPaletteBuffer
	bl sub_02074498
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov80_0222F210

