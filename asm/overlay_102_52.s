	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8FC0
	.public ov102_021E8FC8
	.public ov102_021E94A4
	.public ov102_021E9F38
	.public ov102_021EAF5C
	.public ov102_021EAFF0
	.public ov102_021EB524
	.public ov102_021EB530

	.text

	thumb_func_start ov102_021E9F38
ov102_021E9F38: ; 0x021E9F38
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r4, [r6]
	ldr r0, [r4, #0x18]
	bl ov102_021E8FC8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	bne _021E9F7A
	mov r0, #0x7d
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl ov102_021EB524
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EAF5C
	ldr r0, [r4, #0x18]
	bl ov102_021E8FC0
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAFF0
	b _021E9FA4
_021E9F7A:
	mov r0, #0x7d
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r4, r0]
	sub r0, #0x14
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EAF5C
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EB524
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ov102_021EB530
_021E9FA4:
	add r0, r6, #0
	bl ov102_021E94A4
	pop {r4, r5, r6, pc}
	thumb_func_end ov102_021E9F38

