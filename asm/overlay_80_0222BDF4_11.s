	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222BE24
	.public ov80_0222BF5C

	.text

	thumb_func_start ov80_0222BF5C
ov80_0222BF5C: ; 0x0222BF5C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	bl ov80_0222BE24
	ldrh r1, [r0]
	sub r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _0222BF78
	mov r0, #1
	pop {r3, pc}
_0222BF78:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov80_0222BF5C

