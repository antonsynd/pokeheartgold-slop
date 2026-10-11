	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02260AD8
	.extern ov93_0225FEAC
	.extern ov93_02260B70

	.text

	.text
	thumb_func_start ov93_02260AD8
ov93_02260AD8: ; 0x02260AD8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #6]
	add r5, r0, #0
	cmp r1, #0
	bne _02260B66
	ldrb r1, [r4, #5]
	cmp r1, #1
	beq _02260B44
	cmp r1, #3
	bne _02260B66
	ldr r0, [r4]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _02260B66
	mov r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #5
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	bl ov93_02260B70
	strb r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	bl ManagedSprite_SetAnim
	mov r1, #7
	mov r3, #0x16
	ldr r0, [r4]
	mvn r1, r1
	mov r2, #0x20
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, _02260B68 ; =0x0000380C
	mov r2, #0
	add r3, r5, r0
	mov r1, #4
_02260B2C:
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _02260B36
	strb r1, [r3, #6]
	b _02260B3A
_02260B36:
	sub r0, r0, #1
	strb r0, [r3, #6]
_02260B3A:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #5
	blt _02260B2C
	pop {r3, r4, r5, pc}
_02260B44:
	bl ov93_0225FEAC
	ldrb r1, [r4, #5]
	cmp r1, #1
	bne _02260B66
	cmp r0, #0x4b
	ble _02260B66
	mov r0, #2
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	add r1, r1, #3
	bl ManagedSprite_SetAnim
	ldr r0, _02260B6C ; =0x00000596
	bl PlaySE
_02260B66:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02260B68: .word 0x0000380C
_02260B6C: .word 0x00000596
	thumb_func_end ov93_02260AD8

