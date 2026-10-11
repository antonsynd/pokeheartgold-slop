	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9C70
	.extern ov102_021E8FD0
	.extern ov102_021E94A4
	.extern ov102_021EB624
	.extern ov102_021EB654
	.extern ov102_021EB98C
	.extern ov102_021EB9C0
	.extern ov102_021EBB88
	.extern ov102_021EBBC4
	.extern ov102_021EBBD0
	.extern ov102_021EBEA4
	.extern ov102_021EBEC8
	.extern ov102_021EBEF4
	.extern ov102_021EC290

	.text

	.text
	thumb_func_start ov102_021E9C70
ov102_021E9C70: ; 0x021E9C70
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #4
	bhi _021E9D40
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9C88: ; jump table
	.short _021E9C92 - _021E9C88 - 2 ; case 0
	.short _021E9CA4 - _021E9C88 - 2 ; case 1
	.short _021E9CCE - _021E9C88 - 2 ; case 2
	.short _021E9CEE - _021E9C88 - 2 ; case 3
	.short _021E9D00 - _021E9C88 - 2 ; case 4
_021E9C92:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB624
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9CA4:
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
_021E9CCE:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBEC8
	cmp r0, #0
	beq _021E9D40
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBD0
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9CEE:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBB88
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9D00:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBC4
	cmp r0, #0
	beq _021E9D40
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB654
	cmp r0, #0
	beq _021E9D40
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
_021E9D40:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021E9C70

