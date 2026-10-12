	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F1D98
	.public ov18_021F1DE4
	.extern ov18_021F111C
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

	thumb_func_start ov18_021F1DE4
ov18_021F1DE4: ; 0x021F1DE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021F1E64 ; =0x0000185C
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r3, #0
	cmp r0, #2
	bne _021F1E1A
	cmp r4, #0
	beq _021F1E1A
	lsl r0, r2, #2
	add r2, r5, r0
	ldr r0, _021F1E68 ; =0x00001032
	ldrh r0, [r2, r0]
	cmp r0, #1
	beq _021F1E1A
	ldr r0, _021F1E6C ; =0x000001E7
	cmp r4, r0
	bne _021F1E2E
	ldr r0, [r5]
	mov r2, #0
	ldr r0, [r0]
	bl Pokedex_GetSeenFormByIdx
	cmp r0, #1
	bne _021F1E2E
_021F1E1A:
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021F1E2E:
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	mov r1, #0x25
	bl ov18_021F9694
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x80
	bl ov18_021F111C
	add r0, r4, #0
	bl Heap_Free
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F1E64: .word 0x0000185C
_021F1E68: .word 0x00001032
_021F1E6C: .word 0x000001E7
	thumb_func_end ov18_021F1DE4

