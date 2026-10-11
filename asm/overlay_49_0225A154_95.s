	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B408
	.public ov49_0225B418
	.public ov49_0225C480

    .text

	thumb_func_start ov49_0225C480
ov49_0225C480: ; 0x0225C480
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov45_0222AA84
	add r4, r0, #0
	add r0, r6, #0
	bl ov45_0222AAA8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_0225B408
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov49_0225B418
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C480

