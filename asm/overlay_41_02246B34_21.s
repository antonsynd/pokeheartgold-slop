	.include "asm/macros.inc"
	.include "overlay_41_02246B34.inc"
	.include "global.inc"
	.public ov41_02247480

    .text

	.text
	thumb_func_start ov41_02247480
ov41_02247480: ; 0x02247480
	push {r3, lr}
	sub sp, #0x30
	ldr r2, [r0, #0x40]
	str r2, [sp]
	mov r2, #0x1a
	str r2, [sp, #4]
	lsl r2, r1, #1
	add r1, r2, #0
	add r1, #0x79
	str r1, [sp, #8]
	mov r1, #0x85
	str r1, [sp, #0xc]
	mov r1, #1
	add r2, #0x7a
	str r2, [sp, #0x10]
	mov r2, #0
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #2
	str r1, [sp, #0x24]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	ldr r1, _022474C0 ; =0x000004B4
	str r2, [sp, #0x14]
	add r0, r0, r1
	add r1, sp, #0
	str r2, [sp, #0x18]
	str r2, [sp, #0x28]
	bl ov41_02249C7C
	add sp, #0x30
	pop {r3, pc}
	.balign 4, 0
_022474C0: .word 0x000004B4
	thumb_func_end ov41_02247480

