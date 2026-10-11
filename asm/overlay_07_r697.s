	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02233D24
	.public ov07_02233D60
	.extern ov07_022371A0

	.text

	.text
	thumb_func_start ov07_02233D24
ov07_02233D24: ; 0x02233D24
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0xff
	bne _02233D36
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02233D36:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02233D5A
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	mov r0, #2
	ldrsh r2, [r1, r0]
	add r0, r4, #0
	add r0, #0xb8
	strh r2, [r0]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r4, #0xba
	strh r0, [r4]
_02233D5A:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02233D24

	thumb_func_start ov07_02233D60
ov07_02233D60: ; 0x02233D60
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02233DB2
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	ble _02233D8A
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xdc
	str r1, [r0]
	ldr r0, [r4, #0x2c]
	bl SpriteSystem_DrawSprites
	pop {r4, pc}
_02233D8A:
	add r1, #0x98
	ldr r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02233DB4 ; =ov07_022371A0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _02233DA0
	mov r0, #0
	str r0, [r4, #0x1c]
_02233DA0:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _02233DAC
	ldr r0, [r4, #0x30]
	bl ManagedSprite_TickFrame
_02233DAC:
	ldr r0, [r4, #0x2c]
	bl SpriteSystem_DrawSprites
_02233DB2:
	pop {r4, pc}
	.balign 4, 0
_02233DB4: .word ov07_022371A0
	thumb_func_end ov07_02233D60

