	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A478
	.public ov49_0225B8A8

    .text

	thumb_func_start ov49_0225A478
ov49_0225A478: ; 0x0225A478
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r3, r0
	add r3, #0x3c
	add r2, r1, #0
	add r1, r3, #0
	mov r3, #0x77
	bl ov49_0225B8A8
	pop {r3, pc}
	thumb_func_end ov49_0225A478

