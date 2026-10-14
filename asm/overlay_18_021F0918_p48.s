	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F1D98
	.extern ov18_021FA450

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F1D98
ov18_021F1D98: ; 0x021F1D98
	push {r4, r5, r6, lr}
	mov r2, #0x67
	lsl r2, r2, #4
	add r6, r0, #0
	add r0, r2, #0
	lsl r4, r1, #2
	sub r0, #8
	sub r1, r2, #4
	add r5, r6, r2
	mov r3, #2
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	ldr r2, _021F1DD8 ; =ov18_021FA450
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	str r0, [r5, r4]
	ldr r0, _021F1DDC ; =0x0000066C
	ldr r1, _021F1DE0 ; =0x0000C55B
	ldr r0, [r6, r0]
	mov r2, #2
	bl SpriteManager_FindPlttResourceOffset
	add r1, r0, #0
	ldr r0, [r5, r4]
	bl ManagedSprite_SetPaletteOverride
	ldr r0, [r5, r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F1DD8: .word ov18_021FA450
_021F1DDC: .word 0x0000066C
_021F1DE0: .word 0x0000C55B
	thumb_func_end ov18_021F1D98

