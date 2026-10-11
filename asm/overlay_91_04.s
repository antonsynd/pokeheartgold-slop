	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CABC
	.public ov91_0225D368

	.text

	thumb_func_start ov91_0225CABC
ov91_0225CABC: ; 0x0225CABC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	bl ov91_0225D368
	mov r0, #1
	str r0, [r5, #0x40]
	mov r1, #0
_0225CACE:
	ldr r0, [r4]
	add r1, r1, #1
	str r0, [r5, #0x18]
	add r4, r4, #4
	add r5, r5, #4
	cmp r1, #4
	blt _0225CACE
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov91_0225CABC

