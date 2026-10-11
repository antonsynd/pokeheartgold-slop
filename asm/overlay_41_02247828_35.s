	.include "asm/macros.inc"
	.include "overlay_41_02247828.inc"
	.include "global.inc"
	.public ov41_0224825C

    .text

	.text
	thumb_func_start ov41_0224825C
ov41_0224825C: ; 0x0224825C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x1a
	lsl r1, r4, #2
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x86
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0x87
	str r0, [sp, #0xc]
	mov r0, #0x88
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xd
	str r0, [sp, #0x24]
	mov r0, #0
	add r1, #0x88
	str r0, [sp, #0x28]
	add r0, r5, #0
	str r1, [sp, #0x10]
	add r0, #0x48
	add r1, sp, #0
	str r2, [sp, #0x2c]
	bl ov41_02249C7C
	str r4, [r5, #0x74]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224825C

