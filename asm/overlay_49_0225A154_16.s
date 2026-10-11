	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A31C
	.public ov49_0225B3A8

    .text

	thumb_func_start ov49_0225A31C
ov49_0225A31C: ; 0x0225A31C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0xb7
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov49_0225B3A8
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A31C

