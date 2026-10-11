	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E94A4
	.public ov102_021E9E60
	.public ov102_021EAA3C
	.public ov102_021EAF5C
	.public ov102_021EB524
	.public ov102_021EB67C
	.public ov102_021EBB1C
	.public ov102_021EBB2C
	.public ov102_021EBB44
	.public ov102_021EBB88
	.public ov102_021EBBC4
	.public ov102_021EBEA4
	.public ov102_021EBEC8
	.public ov102_021EBEF4
	.public ov102_021EC290

	.text

	thumb_func_start ov102_021E9E60
ov102_021E9E60: ; 0x021E9E60
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bhi _021E9F34
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9E78: ; jump table
	.short _021E9E80 - _021E9E78 - 2 ; case 0
	.short _021E9EB4 - _021E9E78 - 2 ; case 1
	.short _021E9EDE - _021E9E78 - 2 ; case 2
	.short _021E9EFE - _021E9E78 - 2 ; case 3
_021E9E80:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB67C
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EBEF4
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EC290
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBEA4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9EB4:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBEC8
	cmp r0, #0
	beq _021E9F34
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBB1C
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBB88
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9EDE:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBC4
	cmp r0, #0
	beq _021E9F34
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBB2C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9EFE:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBB44
	cmp r0, #0
	beq _021E9F34
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAA3C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EAF5C
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EB524
	add r0, r5, #0
	bl ov102_021E94A4
_021E9F34:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021E9E60

