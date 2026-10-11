	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_022610B0
	.extern ov93_02262CB4
	.extern ov93_02262E68

	.text

	.text
	thumb_func_start ov93_022610B0
ov93_022610B0: ; 0x022610B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _02261144 ; =ov93_02262E68
	add r7, r0, #0
	str r1, [sp]
	add r3, sp, #4
	mov r2, #6
_022610BE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022610BE
	ldr r0, [r4]
	ldr r4, [sp]
	ldr r5, _02261148 ; =ov93_02262CB4
	str r0, [r3]
	mov r6, #0
_022610D0:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #4
	bl SpriteSystem_NewSprite
	mov r3, #0x16
	str r0, [r4]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	lsr r1, r6, #0x1f
	add r1, r6, r1
	asr r1, r1, #1
	ldr r0, [r4]
	add r1, #0x1f
	bl ManagedSprite_SetAnim
	ldr r0, [r4]
	ldr r0, [r0]
	bl Sprite_TickFrame
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _022610D0
	ldr r0, [r7]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _0226111E
	cmp r0, #3
	beq _02261136
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_0226111E:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl ManagedSprite_SetDrawFlag
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_02261136:
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #4]
	bl ManagedSprite_SetDrawFlag
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02261144: .word ov93_02262E68
_02261148: .word ov93_02262CB4
	thumb_func_end ov93_022610B0

