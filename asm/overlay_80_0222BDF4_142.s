	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222F29C
	.public ov80_0223BD80

	.text

	thumb_func_start ov80_0222F29C
ov80_0222F29C: ; 0x0222F29C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	str r3, [sp, #0xc]
	cmp r4, #8
	blt _0222F2B0
	bl GF_AssertFail
_0222F2B0:
	add r0, r7, #0
	bl Pokemon_GetIconNaix
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	mov r2, #0x14
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
	ldr r6, _0222F320 ; =ov80_0223BD80
	add r3, sp, #0x10
	mov r2, #6
_0222F2D8:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222F2D8
	ldr r0, [r6]
	add r1, sp, #0x10
	str r0, [r3]
	ldr r0, [sp, #0x24]
	add r2, sp, #0x10
	add r0, r0, r4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	strh r0, [r1]
	ldr r0, [sp, #0x58]
	strh r0, [r1, #2]
	mov r0, #0xc8
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl SpriteSystem_NewSprite
	add r4, r0, #0
	add r0, r7, #0
	bl Pokemon_GetIconPalette
	add r1, r0, #0
	ldr r0, [r4]
	bl Sprite_SetPalOffsetRespectVramOffset
	add r0, r4, #0
	bl ManagedSprite_TickFrame
	add r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0222F320: .word ov80_0223BD80
	thumb_func_end ov80_0222F29C

