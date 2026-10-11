	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E69CC
	.extern ov113_021E6CF8

	.text

	.text
	thumb_func_start ov113_021E69CC
ov113_021E69CC: ; 0x021E69CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r6, _021E6AAC ; =ov113_021E6CF8
	mov r7, #0
	add r4, r5, #0
_021E69D8:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xac
	add r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, r6, #0
	bl SpriteSystem_CreateSpriteFromResourceHeader
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #2
	bl Sprite_SetPriority
	add r7, r7, #1
	add r6, #0x28
	add r4, r4, #4
	cmp r7, #3
	blt _021E69D8
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x34
	bl MI_CpuFill8
	mov r0, #1
	mov r1, #0
	str r0, [sp, #0x30]
	mov r0, #0xc9
	add r2, r1, #0
	bl GetMonIconPaletteEx
	mov r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0x34]
	mov r1, #0x28
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	sub r0, r0, #2
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r7, #0x1d
	str r4, [sp]
	add r6, r5, #0
_021E6A56:
	cmp r4, #7
	add r0, sp, #4
	bge _021E6A64
	strh r7, [r0, #2]
	mov r0, #2
	str r0, [sp, #0x14]
	b _021E6A6E
_021E6A64:
	ldr r1, [sp]
	sub r1, #0x9b
	strh r1, [r0, #2]
	mov r0, #1
	str r0, [sp, #0x14]
_021E6A6E:
	add r0, r4, #1
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xac
	add r1, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #4
	bl SpriteSystem_NewSprite
	add r1, r6, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #0x18
	add r7, #0x18
	add r6, r6, #4
	str r0, [sp]
	cmp r4, #0xe
	blt _021E6A56
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6AAC: .word ov113_021E6CF8
	thumb_func_end ov113_021E69CC

