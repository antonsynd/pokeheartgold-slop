	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A24C
	.public ov49_0225B178

    .text

	thumb_func_start ov49_0225A24C
ov49_0225A24C: ; 0x0225A24C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov49_0225B178
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov49_0225A24C

