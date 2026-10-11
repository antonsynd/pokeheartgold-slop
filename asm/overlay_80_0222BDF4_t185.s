	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222F33C

	.text

	.text
	thumb_func_start ov80_0222F33C
ov80_0222F33C: ; 0x0222F33C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x15
	mov r1, #0x65
	bl NARC_New
	add r4, r0, #0
	bl sub_0207CAA0
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0222F3C4 ; =0x000007D1
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x34]
	ldr r3, [r5, #0x38]
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	bl sub_0207CAA4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222F3C4 ; =0x000007D1
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	bl sub_0207CAA8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222F3C4 ; =0x000007D1
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	bl sub_0207CA9C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0222F3C8 ; =0x000007D9
	mov r2, #0x15
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222F3C4: .word 0x000007D1
_0222F3C8: .word 0x000007D9
	thumb_func_end ov80_0222F33C

