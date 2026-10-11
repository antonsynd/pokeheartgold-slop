	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222BE24
	.public ov80_0222BE9C

	.text

	thumb_func_start ov80_0222BE9C
ov80_0222BE9C: ; 0x0222BE9C
	push {r4, lr}
	add r4, r1, #0
	bl ov80_0222BE24
	cmp r0, #0
	beq _0222BEAA
	ldrh r4, [r0]
_0222BEAA:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov80_0222BE9C

