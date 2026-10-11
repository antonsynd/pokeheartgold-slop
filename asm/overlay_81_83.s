	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243228

	.text

	thumb_func_start ov81_02243228
ov81_02243228: ; 0x02243228
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl GridInputHandler_GetDpadBox
	ldrb r1, [r0]
	str r1, [r5]
	ldrb r0, [r0, #1]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov81_02243228

