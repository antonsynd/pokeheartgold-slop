	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FE00

	.text

	thumb_func_start ov40_0222FE00
ov40_0222FE00: ; 0x0222FE00
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	ldr r6, [r0, #0x28]
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
	ldr r0, _0222FE64 ; =0x000186A0
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBuffer
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222FE64 ; =0x000186A0
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222FE64 ; =0x000186A0
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222FE64: .word 0x000186A0
	thumb_func_end ov40_0222FE00

