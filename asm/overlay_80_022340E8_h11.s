	.include "asm/macros.inc"
	.include "overlay_80_022340E8.inc"
	.include "global.inc"
	.public ov80_02234774
	.extern ov80_022347A8

    .text

	.text
	thumb_func_start ov80_02234774
ov80_02234774: ; 0x02234774
	push {r4, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl ov80_022347A8
	lsl r1, r0, #0x18
	lsr r1, r1, #0x17
	add r1, r4, r1
	add r1, #0x78
	ldrh r1, [r1]
	add r0, sp, #0
	mov r2, #0xb
	mov r3, #0xcc
	bl ov80_02229F04
	bl Heap_Free
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov80_0222A30C
	add sp, #0x30
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov80_02234774

