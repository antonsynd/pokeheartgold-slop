	.include "asm/macros.inc"
	.include "overlay_49_02268D94.inc"
	.include "global.inc"
	.public ov49_02268FAC
	.extern ov49_02269178
	.extern ov49_022695C4
	.extern ov49_0226A8C8

    .text

	.text
	thumb_func_start ov49_02268FAC
ov49_02268FAC: ; 0x02268FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0xc4
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc4
	bl memset
	str r5, [r4]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov49_02259FF8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov49_0225A000
	str r0, [r4, #0xc]
	bl ov49_022589A8
	add r1, r0, #6
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0]
	mov r0, #7
	mvn r0, r0
	sub r1, r0, r1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	ldr r6, _0226908C ; =ov49_0226A8C8
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r7, #0
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	add r5, r4, #0
_0226901E:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r6]
	add r2, sp, #4
	ldr r0, [r4, #0xc]
	add r2, #2
	add r3, sp, #4
	bl ov49_022589D8
	add r0, sp, #4
	ldrh r0, [r0, #2]
	add r7, r7, #1
	add r6, r6, #1
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xaa
	strh r1, [r0]
	add r0, sp, #4
	ldrh r0, [r0]
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xac
	add r5, r5, #4
	strh r1, [r0]
	cmp r7, #3
	blt _0226901E
	mov r5, #0
_02269054:
	add r2, r4, #0
	add r2, #0xbc
	ldr r0, [r4, #8]
	ldr r2, [r2]
	add r1, r5, #0
	bl ov49_0225E3B8
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov45_0222AD80
	cmp r0, #1
	bne _0226907E
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02269178
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_022695C4
_0226907E:
	add r5, r5, #1
	cmp r5, #9
	blt _02269054
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226908C: .word ov49_0226A8C8
	thumb_func_end ov49_02268FAC

