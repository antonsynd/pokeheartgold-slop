	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224102C
	.public ov81_022410C8

	.text

	.text
	thumb_func_start ov81_0224102C
ov81_0224102C: ; 0x0224102C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0
	mov r0, #0x3e
	str r1, [sp]
	add r2, r5, #0
	add r4, r1, #0
	lsl r0, r0, #4
_0224103C:
	add r1, r1, #1
	strh r4, [r2, r0]
	add r2, r2, #2
	cmp r1, #0x3c
	blt _0224103C
	ldrb r1, [r5, #0x11]
	mov r0, #0x3e
	lsl r0, r0, #4
	strh r1, [r5, r0]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	ble _0224108C
	ldr r0, [sp]
	add r7, r5, #0
	lsl r0, r0, #1
	add r6, r5, r0
_02241062:
	mov r1, #0xf2
	mov r0, #0xf
	lsl r1, r1, #2
	lsl r0, r0, #6
	ldrh r1, [r7, r1]
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x3e
	lsl r1, r1, #4
	strh r0, [r6, r1]
	ldrb r0, [r5, #0x11]
	add r4, r4, #1
	add r7, r7, #2
	add r6, r6, #2
	cmp r4, r0
	blt _02241062
_0224108C:
	ldr r1, [sp]
	mov r7, #0
	add r1, r1, r0
	cmp r0, #0
	ble _022410C6
	lsl r0, r1, #1
	add r6, r5, #0
	add r4, r5, r0
_0224109C:
	mov r1, #0xf2
	mov r0, #0xf
	lsl r1, r1, #2
	lsl r0, r0, #6
	ldrh r1, [r6, r1]
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	mov r1, #0x3e
	lsl r1, r1, #4
	strh r0, [r4, r1]
	ldrb r0, [r5, #0x11]
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	cmp r7, r0
	blt _0224109C
_022410C6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov81_0224102C

	thumb_func_start ov81_022410C8
ov81_022410C8: ; 0x022410C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r6, r2, #0
	mov r4, #0
	bl ov80_02236DD4
	bl sub_0203769C
	cmp r7, r0
	beq _0224112C
	ldrh r0, [r6]
	add r4, r4, #1
	strb r0, [r5, #0x18]
	ldrb r3, [r5, #0x18]
	mov r0, #0
	cmp r3, #0
	ble _02241106
	lsl r1, r4, #1
	ldr r7, _02241130 ; =0x0000045A
	add r1, r6, r1
	add r2, r5, #0
_022410F6:
	ldrh r3, [r1]
	add r0, r0, #1
	add r1, r1, #2
	strh r3, [r2, r7]
	ldrb r3, [r5, #0x18]
	add r2, r2, #2
	cmp r0, r3
	blt _022410F6
_02241106:
	add r1, r4, r3
	mov r0, #0
	cmp r3, #0
	ble _02241126
	lsl r1, r1, #1
	add r3, r6, r1
	ldr r1, _02241134 ; =0x0000045E
	add r4, r5, #0
_02241116:
	ldrh r2, [r3]
	add r0, r0, #1
	add r3, r3, #2
	strh r2, [r4, r1]
	ldrb r2, [r5, #0x18]
	add r4, r4, #2
	cmp r0, r2
	blt _02241116
_02241126:
	ldr r0, _02241138 ; =0x00000463
	mov r1, #1
	strb r1, [r5, r0]
_0224112C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241130: .word 0x0000045A
_02241134: .word 0x0000045E
_02241138: .word 0x00000463
	thumb_func_end ov81_022410C8

