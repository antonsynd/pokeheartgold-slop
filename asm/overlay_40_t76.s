	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222E510

	.text

	.text
	thumb_func_start ov40_0222E510
ov40_0222E510: ; 0x0222E510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r0, r1, #0
	ldr r6, [r1, #0x18]
	ldr r4, [r0, #0x1c]
	ldr r7, [r0, #0x28]
	str r1, [sp, #0x18]
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
	ldr r0, _0222E614 ; =0x000186A0
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl SpriteSystem_LoadPaletteBuffer
	str r0, [sp, #0x1c]
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222E614 ; =0x000186A0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222E614 ; =0x000186A0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	ldr r0, [r5]
	bl sub_020315E0
	add r7, r0, #0
	ldr r0, [r5]
	bl sub_020315F0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	bl sub_02031610
	str r0, [sp, #0x24]
	cmp r7, #0
	beq _0222E610
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r7, #0
	bl GetMonIconNaixEx
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0222E614 ; =0x000186A0
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x14
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
	mov r1, #0x4c
	add r0, sp, #0x28
	strh r1, [r0]
	mov r1, #0x3c
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _0222E614 ; =0x000186A0
	mov r1, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	sub r0, r1, #2
	str r1, [sp, #0x38]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0x28
	bl SpriteSystem_NewSprite
	str r0, [r5, #4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	bl GetMonIconPaletteEx
	add r2, r0, #0
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, #4]
	add r1, r1, r2
	bl ManagedSprite_SetPaletteOverrideOffset
	ldr r0, [r5, #4]
	mov r1, #1
	bl ManagedSprite_SetAnim
_0222E610:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E614: .word 0x000186A0
	thumb_func_end ov40_0222E510

