	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E94A4
	.public ov102_021E9D44
	.public ov102_021EA71C
	.public ov102_021EA754
	.public ov102_021EAA3C
	.public ov102_021EADF8
	.public ov102_021EAE40
	.public ov102_021EAF50
	.public ov102_021EAF5C
	.public ov102_021EAFAC
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

	thumb_func_start ov102_021E9D44
ov102_021E9D44: ; 0x021E9D44
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bls _021E9D52
	b _021E9E5E
_021E9D52:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9D5E: ; jump table
	.short _021E9D66 - _021E9D5E - 2 ; case 0
	.short _021E9DBE - _021E9D5E - 2 ; case 1
	.short _021E9DF8 - _021E9D5E - 2 ; case 2
	.short _021E9E18 - _021E9D5E - 2 ; case 3
_021E9D66:
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
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EADF8
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EAE40
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EA71C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_021E9DBE:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBEC8
	add r6, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EA754
	cmp r6, #0
	beq _021E9E5E
	cmp r0, #0
	beq _021E9E5E
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
	pop {r4, r5, r6, pc}
_021E9DF8:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBC4
	cmp r0, #0
	beq _021E9E5E
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBB2C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_021E9E18:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBB44
	cmp r0, #0
	beq _021E9E5E
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAA3C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EAF5C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAFAC
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAF50
	mov r0, #0x7d
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r0, r5, #0
	bl ov102_021E94A4
_021E9E5E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov102_021E9D44

