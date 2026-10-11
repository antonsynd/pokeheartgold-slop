	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8FD0
	.public ov102_021E94A4
	.public ov102_021E9A8C
	.public ov102_021EB624
	.public ov102_021EB654
	.public ov102_021EB98C
	.public ov102_021EB9C0
	.public ov102_021EBBD0
	.public ov102_021EBBF4
	.public ov102_021EBC28

	.text

	thumb_func_start ov102_021E9A8C
ov102_021E9A8C: ; 0x021E9A8C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bhi _021E9B2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9AA4: ; jump table
	.short _021E9AAC - _021E9AA4 - 2 ; case 0
	.short _021E9ABE - _021E9AA4 - 2 ; case 1
	.short _021E9ADC - _021E9AA4 - 2 ; case 2
	.short _021E9AFC - _021E9AA4 - 2 ; case 3
_021E9AAC:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB624
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9ABE:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EB98C
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBF4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9ADC:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBC28
	cmp r0, #0
	beq _021E9B2E
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBD0
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9AFC:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB654
	cmp r0, #0
	beq _021E9B2E
	ldr r0, [r4, #0x18]
	bl ov102_021E8FD0
	add r1, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB9C0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EB98C
	add r0, r5, #0
	bl ov102_021E94A4
_021E9B2E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E9A8C

