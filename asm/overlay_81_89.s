	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242710
	.public ov81_02243220
	.public ov81_022432AC
	.public ov81_022432DC
	.public ov81_02243370

	.text

	thumb_func_start ov81_02243370
ov81_02243370: ; 0x02243370
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov81_02243220
	add r0, r4, #0
	bl ov81_02242710
	cmp r0, #1
	bne _0224338E
	add r0, r4, #0
	mov r1, #0
	bl ov81_022432DC
	pop {r4, pc}
_0224338E:
	add r0, r4, #0
	mov r1, #0
	bl ov81_022432AC
	pop {r4, pc}
	thumb_func_end ov81_02243370

