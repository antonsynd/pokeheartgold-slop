	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_02241404
	.public ov40_02242AEC

	.text

	thumb_func_start ov40_02241404
ov40_02241404: ; 0x02241404
	push {r4, lr}
	add r4, r0, #0
	bl ov40_02242AEC
	cmp r0, #0
	beq _02241418
	add r0, r4, #0
	mov r1, #8
	bl ov40_0222BF80
_02241418:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_02241404

