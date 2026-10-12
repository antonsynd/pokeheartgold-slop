	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02228E70
	.extern ov07_0221C448
	.extern ov07_022223F0
	.extern ov07_02222440
	.extern ov07_0223674C
	.extern ov07_02236750

	.text

	.text
	thumb_func_start ov07_02228E70
ov07_02228E70: ; 0x02228E70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02228E82
	cmp r0, #1
	beq _02228EC2
	b _02228EF2
_02228E82:
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldrb r0, [r4, #2]
	bne _02228E94
	lsl r3, r0, #3
	ldr r0, _02228F0C ; =ov07_0223674C
	ldr r2, [r0, r3]
	neg r1, r2
	b _02228E9C
_02228E94:
	lsl r3, r0, #3
	ldr r0, _02228F0C ; =ov07_0223674C
	ldr r1, [r0, r3]
	neg r2, r1
_02228E9C:
	ldr r5, _02228F10 ; =ov07_02236750
	add r0, r4, #0
	ldr r3, [r5, r3]
	add r0, #0x5c
	bl ov07_022223F0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _02228EB4
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
_02228EB4:
	ldrb r1, [r4, #1]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02228EC2:
	add r0, r4, #0
	add r0, #0x5c
	bl ov07_02222440
	cmp r0, #1
	bne _02228EDE
	ldr r2, [r4, #0x5c]
	ldr r0, [r4, #0x28]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl Pokepic_SetAttr
	pop {r3, r4, r5, pc}
_02228EDE:
	ldrb r0, [r4, #2]
	cmp r0, #5
	ldrb r0, [r4]
	blo _02228EEC
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02228EEC:
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02228EF2:
	ldr r0, [r4, #0x28]
	mov r1, #9
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02228F0C: .word ov07_0223674C
_02228F10: .word ov07_02236750
	thumb_func_end ov07_02228E70

