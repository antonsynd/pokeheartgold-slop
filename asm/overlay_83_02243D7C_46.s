	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02245CE8

    .text

	thumb_func_start ov83_02245CE8
ov83_02245CE8: ; 0x02245CE8
	push {r3, r4, r5, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r4, r2, #0
	bl ov80_02237D8C
	cmp r0, #1
	bne _02245CFC
	mov r0, #0x40
	b _02245CFE
_02245CFC:
	mov r0, #0x60
_02245CFE:
	str r0, [r5]
	mov r0, #0x3c
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02245CE8

