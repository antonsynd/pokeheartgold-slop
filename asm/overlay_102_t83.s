	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9B30
	.extern ov102_021E94A4
	.extern ov102_021EA71C
	.extern ov102_021EA754
	.extern ov102_021EADF8
	.extern ov102_021EAE40
	.extern ov102_021EAF50
	.extern ov102_021EAFAC
	.extern ov102_021EB67C
	.extern ov102_021EB98C
	.extern ov102_021EBAAC
	.extern ov102_021EBAD0

	.text

	.text
	thumb_func_start ov102_021E9B30
ov102_021E9B30: ; 0x021E9B30
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021E9B42
	cmp r0, #1
	beq _021E9B8E
	pop {r4, r5, r6, pc}
_021E9B42:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB67C
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EB98C
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBAAC
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
_021E9B8E:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBAD0
	add r6, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EA754
	cmp r6, #0
	beq _021E9BCE
	cmp r0, #0
	beq _021E9BCE
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
_021E9BCE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov102_021E9B30

