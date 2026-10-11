	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9978
	.public ov102_021E9A24
	.extern ov102_021E8FD0
	.extern ov102_021E94A4
	.extern ov102_021EA71C
	.extern ov102_021EA754
	.extern ov102_021EADF8
	.extern ov102_021EAE40
	.extern ov102_021EAF44
	.extern ov102_021EAF7C
	.extern ov102_021EB624
	.extern ov102_021EB654
	.extern ov102_021EB664
	.extern ov102_021EB98C
	.extern ov102_021EB9C0
	.extern ov102_021EBA44
	.extern ov102_021EBA5C
	.extern ov102_021EBBD0
	.extern ov102_021EBBF4
	.extern ov102_021EBC28

	.text

	.text
	thumb_func_start ov102_021E9978
ov102_021E9978: ; 0x021E9978
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021E998A
	cmp r0, #1
	beq _021E99DE
	pop {r4, r5, r6, pc}
_021E998A:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAF44
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAF7C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EADF8
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EAE40
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB664
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBA44
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EA71C
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_021E99DE:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBA5C
	add r6, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EA754
	cmp r6, #0
	beq _021E9A20
	cmp r0, #0
	beq _021E9A20
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
_021E9A20:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov102_021E9978

	thumb_func_start ov102_021E9A24
ov102_021E9A24: ; 0x021E9A24
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021E9A3A
	cmp r0, #1
	beq _021E9A4C
	cmp r0, #2
	beq _021E9A5E
	pop {r3, r4, r5, pc}
_021E9A3A:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB624
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9A4C:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBF4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021E9A5E:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBC28
	cmp r0, #0
	beq _021E9A8A
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB654
	cmp r0, #0
	beq _021E9A8A
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EBBD0
	add r0, r5, #0
	bl ov102_021E94A4
_021E9A8A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E9A24

