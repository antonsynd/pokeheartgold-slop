	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241340
	.public ov81_02242CBC

	.text

	thumb_func_start ov81_02241340
ov81_02241340: ; 0x02241340
	push {lr}
	sub sp, #0xc
	add r2, r1, #0
	mov r1, #0xa
	str r1, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	mov r1, #0x7c
	str r1, [sp, #8]
	mov r1, #0x71
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #1
	mov r3, #2
	bl ov81_02242CBC
	add sp, #0xc
	pop {pc}
	thumb_func_end ov81_02241340

