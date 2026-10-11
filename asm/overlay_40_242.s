	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0224141C
	.public ov40_022428D4

	.text

	thumb_func_start ov40_0224141C
ov40_0224141C: ; 0x0224141C
	push {r4, lr}
	add r4, r0, #0
	bl ov40_022428D4
	cmp r0, #0
	beq _02241430
	add r0, r4, #0
	mov r1, #8
	bl ov40_0222BF80
_02241430:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_0224141C

