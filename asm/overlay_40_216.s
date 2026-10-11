	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0223F848
	.public ov40_0224222C

	.text

	thumb_func_start ov40_0223F848
ov40_0223F848: ; 0x0223F848
	push {r4, lr}
	add r4, r0, #0
	bl ov40_0224222C
	cmp r0, #0
	beq _0223F85C
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
_0223F85C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_0223F848

