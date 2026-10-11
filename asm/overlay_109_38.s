	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E6EE4
	.extern ov109_021E7A58

	.text

	.text
	thumb_func_start ov109_021E6EE4
ov109_021E6EE4: ; 0x021E6EE4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, _021E6F5C ; =ov109_021E7A58
	mov r7, #0
	add r5, r6, #0
_021E6EEE:
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, r4, #0
	bl SpriteSystem_CreateSpriteFromResourceHeader
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r0, r5, #0
	add r0, #0x98
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl Sprite_SetAnimSpeed
	add r7, r7, #1
	add r4, #0x28
	add r5, r5, #4
	cmp r7, #5
	blt _021E6EEE
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #2
	bl Sprite_SetPriority
	add r6, #0xa8
	ldr r0, [r6]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6F5C: .word ov109_021E7A58
	thumb_func_end ov109_021E6EE4

