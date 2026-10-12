	.include "asm/macros.inc"
	.include "overlay_41_0224A5A4.inc"
	.include "global.inc"
	.public ov41_0224ACA4

    .text

	.text
	thumb_func_start ov41_0224ACA4
ov41_0224ACA4: ; 0x0224ACA4
	push {r3, lr}
	sub sp, #0x30
	str r1, [sp]
	mov r1, #0x1a
	str r1, [sp, #4]
	mov r1, #0xe0
	str r1, [sp, #8]
	mov r1, #0xe1
	str r1, [sp, #0xc]
	mov r2, #0
	mov r1, #0xe2
	str r1, [sp, #0x10]
	mov r1, #4
	str r1, [sp, #0x1c]
	mov r1, #1
	str r1, [sp, #0x20]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	add r1, sp, #0
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	bl ov41_02249C7C
	add sp, #0x30
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_0224ACA4

