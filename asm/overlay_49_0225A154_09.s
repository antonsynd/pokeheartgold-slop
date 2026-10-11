	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A23C
	.public ov49_0225B148

    .text

	thumb_func_start ov49_0225A23C
ov49_0225A23C: ; 0x0225A23C
	push {r4, lr}
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov49_0225B148
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A23C

