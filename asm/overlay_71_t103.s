	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022498F0
	.extern ov71_022472C4
	.extern ov71_02247320
	.extern ov71_02247340

	.text

	.text
	thumb_func_start ov71_022498F0
ov71_022498F0: ; 0x022498F0
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0x59
	mov r2, #7
	mov r3, #8
	bl ov71_022472C4
	add r0, sp, #0x5c
	bl NNS_G2dInitImagePaletteProxy
	add r0, sp, #0x38
	bl NNS_G2dInitImageProxy
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, #0x59
	mov r1, #9
	bl GfGfxLoader_LoadImageMapping
	mov r0, #0x39
	str r0, [sp]
	add r0, sp, #0x5c
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl GfGfxLoader_PartiallyLoadPalette
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x10
	add r2, sp, #0x38
	add r3, sp, #0x5c
	bl ov71_02247320
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x60
	bl ov71_02247340
	mov r1, #0
	str r0, [r4, #0x20]
	bl Sprite_SetDrawFlag
	add sp, #0x70
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov71_022498F0

