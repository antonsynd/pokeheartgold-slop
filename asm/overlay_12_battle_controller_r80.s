	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_02264334

	.text

	.text
	thumb_func_start ov12_02264334
ov12_02264334: ; 0x02264334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #1
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r2, [r5]
	ldrb r1, [r5, #2]
	lsl r3, r3, #8
	add r4, r0, #0
	orr r1, r3
	ldrb r6, [r5, #1]
	cmp r2, #0
	bne _0226436E
	mov r2, #0
	cmp r1, #0
	ble _022643C2
	mov r7, #0x23
	lsl r3, r6, #8
	lsl r7, r7, #8
_0226435A:
	add r0, r5, r2
	ldr r6, [r4, #0x30]
	ldrb r0, [r0, #4]
	add r6, r3, r6
	add r6, r2, r6
	add r2, r2, #1
	strb r0, [r6, r7]
	cmp r2, r1
	blt _0226435A
	b _022643C2
_0226436E:
	cmp r2, #1
	bne _022643A6
	lsl r0, r6, #2
	add r0, r4, r0
	mov r3, #0x6a
	ldr r4, [r0, #0x34]
	lsl r3, r3, #2
	ldrb r2, [r4, r3]
	cmp r2, #0
	bne _022643A0
	ldr r2, [sp]
	strb r2, [r4, r3]
	mov r2, #0
	cmp r1, #0
	ble _022643C2
_0226438C:
	add r3, r5, r2
	ldrb r4, [r3, #4]
	ldr r3, [r0, #0x34]
	add r3, r3, r2
	add r3, #0x94
	add r2, r2, #1
	strb r4, [r3]
	cmp r2, r1
	blt _0226438C
	b _022643C2
_022643A0:
	mov r0, #0
	str r0, [sp]
	b _022643C2
_022643A6:
	cmp r2, #2
	bne _022643C2
	ldrb r7, [r5, #4]
	ldrb r5, [r5, #5]
	bl ov12_0223B688
	cmp r0, #0
	beq _022643C2
	ldr r0, [r4, #0x30]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov12_0224ED00
_022643C2:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_02264334

