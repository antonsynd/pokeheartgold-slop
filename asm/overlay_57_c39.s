	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238A00
	.extern ov57_0223BDD4

	.text

	.text
	thumb_func_start ov57_02238A00
ov57_02238A00: ; 0x02238A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe0
	ldr r7, [r0]
	add r0, sp, #4
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r4, [r0, #0x26]
	mov r0, #0x3c
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x34]
	mov r0, #1
	str r0, [sp, #0x50]
	sub r0, r0, #2
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	ldr r0, _02238AA8 ; =0x00006597
	str r4, [sp, #0x54]
	str r0, [sp, #0x3c]
	ldr r0, _02238AAC ; =0x0000699D
	str r4, [sp, #0x30]
	str r0, [sp, #0x40]
	ldr r0, _02238AB0 ; =0x00006D83
	str r0, [sp, #0x44]
	ldr r0, _02238AB4 ; =0x00000414
	add r6, r5, r0
_02238A44:
	ldr r0, _02238AB8 ; =0x000061A8
	add r1, r7, #0
	add r0, r4, r0
	str r0, [sp, #0x38]
	ldr r0, [sp]
	add r2, sp, #0x24
	bl SpriteSystem_NewSprite
	add r4, r4, #1
	stmia r6!, {r0}
	cmp r4, #8
	blt _02238A44
	ldr r3, _02238ABC ; =ov57_0223BDD4
	add r2, sp, #4
	mov r1, #0x10
_02238A62:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02238A62
	ldr r7, _02238AB4 ; =0x00000414
	mov r6, #0
	add r4, sp, #4
_02238A74:
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, _02238AB4 ; =0x00000414
	mov r1, #0
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, _02238AB4 ; =0x00000414
	ldr r0, [r5, r0]
	bl ManagedSprite_TickFrame
	ldr r0, [r5, r7]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #8
	blt _02238A74
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238AA8: .word 0x00006597
_02238AAC: .word 0x0000699D
_02238AB0: .word 0x00006D83
_02238AB4: .word 0x00000414
_02238AB8: .word 0x000061A8
_02238ABC: .word ov57_0223BDD4
	thumb_func_end ov57_02238A00

