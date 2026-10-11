	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A264
	.public ov49_0225AF30

    .text

	thumb_func_start ov49_0225A264
ov49_0225A264: ; 0x0225A264
	push {lr}
	sub sp, #0x14
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0x77
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0xd
	mov r1, #0xce
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r2, r1
	add r1, #0x6c
	add r1, r2, r1
	add r2, #0x3c
	bl ov49_0225AF30
	add sp, #0x14
	pop {pc}
	.balign 4, 0
	thumb_func_end ov49_0225A264

