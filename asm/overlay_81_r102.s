	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242D94

	.text

	.text
	thumb_func_start ov81_02242D94
ov81_02242D94: ; 0x02242D94
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {pc}
	thumb_func_end ov81_02242D94

