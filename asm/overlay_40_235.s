	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_02240B58
	.public ov40_0224222C

	.text

	thumb_func_start ov40_02240B58
ov40_02240B58: ; 0x02240B58
	push {r4, lr}
	add r4, r0, #0
	bl ov40_0224222C
	cmp r0, #0
	beq _02240B6C
	add r0, r4, #0
	mov r1, #8
	bl ov40_0222BF80
_02240B6C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_02240B58

