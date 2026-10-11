	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A174
	.public ov49_0225AF30

    .text

	thumb_func_start ov49_0225A174
ov49_0225A174: ; 0x0225A174
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x77
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0xce
	lsl r0, r0, #2
	add r4, r2, #0
	add r0, r5, r0
	add r5, #0x3c
	add r2, r5, #0
	add r3, r4, #0
	bl ov49_0225AF30
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A174

