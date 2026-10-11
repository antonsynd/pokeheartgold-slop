	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_022608B8
	.extern ov92_02260798
	.extern ov92_022607F8
	.extern ov92_02263E70
	.extern ov92_02263E88

	.text

	.text
	thumb_func_start ov92_022608B8
ov92_022608B8: ; 0x022608B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r3, _02260A28 ; =ov92_02263E70
	add r6, r0, #0
	mov r0, #1
	str r1, [sp, #4]
	str r0, [sp, #0x18]
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02260A2C ; =ov92_02263E88
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _022608FA
	ldr r0, [sp, #4]
	add r0, #0xa4
	ldr r0, [r0]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _0226091C
_022608FA:
	ldr r5, [sp, #4]
	mov r4, #0
_022608FE:
	ldr r0, [r5, #8]
	bl Sprite_DeleteAndFreeResources
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _022608FE
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0]
	add r0, r6, #0
	bl SysTask_Destroy
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
_0226091C:
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0226092A
	cmp r0, #1
	beq _02260994
	b _02260A06
_0226092A:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, sp, #0x3c
	add r6, r0, #0
	add r5, r0, #0
	str r0, [sp, #0x10]
	add r6, #0x14
	add r4, sp, #0x24
	add r5, #0x2c
_0226093E:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x20
	ldr r0, [r0, #8]
	add r2, sp, #0x1c
	bl ManagedSprite_GetSpritePositionFxXY
	ldr r1, [sp, #0x20]
	mov r0, #8
	str r0, [sp]
	ldr r2, [r7]
	ldr r3, _02260A30 ; =0x000004CD
	add r0, r6, #0
	add r2, r1, r2
	bl ov92_02260798
	ldr r1, [sp, #0x1c]
	mov r0, #8
	str r0, [sp]
	ldr r2, [r4]
	ldr r3, _02260A34 ; =0x00000333
	add r0, r5, #0
	add r2, r1, r2
	bl ov92_02260798
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r6, #0x30
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x30
	str r0, [sp, #8]
	cmp r0, #3
	blt _0226093E
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x74
	str r1, [r0, #4]
	pop {r4, r5, r6, r7, pc}
_02260994:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r7, [sp, #4]
	ldr r6, [sp, #4]
	str r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	add r4, sp, #0x54
	add r7, #0x2c
	add r5, r6, #0
_022609AA:
	ldr r0, [sp, #0x14]
	bl ov92_022607F8
	str r0, [r4]
	add r0, r7, #0
	bl ov92_022607F8
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x2c]
	bl ManagedSprite_SetPositonFxXY
	ldr r0, [r4]
	cmp r0, #0
	beq _022609D0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022609D4
_022609D0:
	mov r0, #0
	str r0, [sp, #0x18]
_022609D4:
	ldr r0, [r5, #8]
	bl ManagedSprite_TickFrame
	ldr r0, [sp, #0x14]
	add r4, #8
	add r0, #0x30
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r7, #0x30
	add r0, r0, #1
	add r6, #0x30
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _022609AA
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02260A24
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x74
	str r1, [r0, #4]
	pop {r4, r5, r6, r7, pc}
_02260A06:
	ldr r4, [sp, #4]
	mov r5, #0
_02260A0A:
	ldr r0, [r4, #8]
	bl Sprite_DeleteAndFreeResources
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02260A0A
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0]
	add r0, r6, #0
	bl SysTask_Destroy
_02260A24:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02260A28: .word ov92_02263E70
_02260A2C: .word ov92_02263E88
_02260A30: .word 0x000004CD
_02260A34: .word 0x00000333
	thumb_func_end ov92_022608B8

