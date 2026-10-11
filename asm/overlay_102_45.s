	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8FC8
	.public ov102_021E94A4
	.public ov102_021E98FC
	.public ov102_021EAF5C
	.public ov102_021EAF7C
	.public ov102_021EB524
	.public ov102_021EB530

	.text

	thumb_func_start ov102_021E98FC
ov102_021E98FC: ; 0x021E98FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x7d
	ldr r4, [r5]
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r4, r0]
	sub r0, #0x14
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EAF5C
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAF7C
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov102_021EB524
	ldr r0, [r4, #0x18]
	bl ov102_021E8FC8
	add r1, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB530
	add r0, r5, #0
	bl ov102_021E94A4
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E98FC

