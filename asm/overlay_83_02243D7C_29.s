	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02245074
	.public ov83_02245094
	.public ov83_02245390

    .text

	thumb_func_start ov83_02245074
ov83_02245074: ; 0x02245074
	push {r4, lr}
	add r4, r0, #0
	bl ov83_02245390
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov83_0224755C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02245074

