	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02261BBC
	.extern ov93_02262E9C
	.extern ov93_02262ED0

	.text

	.text
	thumb_func_start ov93_02261BBC
ov93_02261BBC: ; 0x02261BBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _02261C34 ; =ov93_02262E9C
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #6
_02261BCA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02261BCA
	ldr r0, [r6]
	mov r7, #0x16
	str r0, [r3]
	mov r6, #0
	lsl r7, r7, #0x10
_02261BDC:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl SpriteSystem_NewSprite
	mov r1, #0
	str r0, [r4]
	add r2, r1, #0
	add r3, r7, #0
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _02261C38 ; =ov93_02262ED0
	bl SpriteSystem_NewSprite
	mov r1, #0
	str r0, [r4, #4]
	add r2, r1, #0
	add r3, r7, #0
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldr r0, [r4, #4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #3
	blt _02261BDC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02261C34: .word ov93_02262E9C
_02261C38: .word ov93_02262ED0
	thumb_func_end ov93_02261BBC

