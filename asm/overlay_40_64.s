	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FEA0

	.text

	thumb_func_start ov40_0222FEA0
ov40_0222FEA0: ; 0x0222FEA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r2, #0
	str r1, [sp, #0xc]
	add r4, r3, #0
	ldr r7, [r0, #0x18]
	ldr r6, [r0, #0x1c]
	bne _0222FEB6
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0222FEB6:
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl GetMonIconNaixEx
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0222FF44 ; =0x000186A0
	ldr r2, [sp, #0xc]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarcWithHardwareMappingType
	mov r1, #0
	add r0, sp, #0x18
	add r2, r1, #0
	strh r1, [r0]
	sub r2, #0x30
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #1
	str r0, [sp, #0x28]
	sub r0, r0, #2
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	ldr r1, _0222FF44 ; =0x000186A0
	str r0, [sp, #0x3c]
	add r2, r5, r1
	str r2, [sp, #0x2c]
	str r0, [sp, #0x40]
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0x18
	bl SpriteSystem_NewSprite
	add r5, r0, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverrideOffset
	add r0, r5, #0
	mov r1, #1
	bl ManagedSprite_SetAnim
	add r0, r5, #0
	bl ManagedSprite_TickFrame
	add r0, r5, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222FF44: .word 0x000186A0
	thumb_func_end ov40_0222FEA0

