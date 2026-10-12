	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02248A08
	.extern ov71_022472C4
	.extern ov71_02247320
	.extern ov71_02247340

	.text

	.text
	thumb_func_start ov71_02248A08
ov71_02248A08: ; 0x02248A08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r7, r0, #0
	add r0, #0xc
	mov r1, #0x59
	mov r2, #0xb
	mov r3, #0xc
	bl ov71_022472C4
	add r0, sp, #0x60
	bl NNS_G2dInitImagePaletteProxy
	add r0, sp, #0x3c
	bl NNS_G2dInitImageProxy
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x59
	mov r1, #0xd
	bl GfGfxLoader_LoadImageMapping
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x59
	mov r1, #0xd
	mov r2, #1
	bl GfGfxLoader_LoadImageMapping
	mov r0, #0x39
	str r0, [sp]
	add r0, sp, #0x60
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #0xe
	mov r2, #1
	mov r3, #0
	bl GfGfxLoader_PartiallyLoadPalette
	mov r0, #0x39
	str r0, [sp]
	add r0, sp, #0x60
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #0xe
	mov r2, #2
	mov r3, #0
	bl GfGfxLoader_PartiallyLoadPalette
	mov r0, #1
	add r1, r7, #0
	str r0, [sp]
	add r0, sp, #0x18
	add r1, #0xc
	add r2, sp, #0x3c
	add r3, sp, #0x60
	bl ov71_02247320
	ldr r0, _02248B20 ; =0x035947D1
	bl SetMTRNGSeed
	mov r0, #0
	str r0, [sp, #0x14]
	add r4, r7, #0
_02248AA2:
	bl MTRandom
	mov r1, #0xe8
	bl _u32_div_f
	add r6, r1, #0
	add r6, #0xc
	bl MTRandom
	mov r1, #0x71
	lsl r1, r1, #2
	bl _u32_div_f
	add r5, r1, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	sub r5, #0x1c
	str r0, [sp, #4]
	ldr r0, [r7]
	add r1, sp, #0x18
	add r2, r6, #0
	add r3, r5, #0
	bl ov71_02247340
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r5, #0x38
	ldr r0, [r7]
	add r1, sp, #0x18
	add r2, r6, #0
	add r3, r5, #0
	bl ov71_02247340
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [sp, #0x14]
	add r4, #8
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x14
	blt _02248AA2
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_02248B20: .word 0x035947D1
	thumb_func_end ov71_02248A08

