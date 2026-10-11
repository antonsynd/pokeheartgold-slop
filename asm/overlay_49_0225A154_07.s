	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A204
	.public ov49_0225B0E0

    .text

	thumb_func_start ov49_0225A204
ov49_0225A204: ; 0x0225A204
	push {r4, r5, lr}
	sub sp, #0xc
	str r2, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r4, r1, #0
	mov r2, #0x77
	str r0, [sp, #8]
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r5, r0
	add r5, #0x3c
	add r1, r5, #0
	add r3, r4, #0
	bl ov49_0225B0E0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov49_0225A204

