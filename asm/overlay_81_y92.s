	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022425C4
	.public ov81_022425D8
	.extern ov81_0224258C

	.text

	.text
	thumb_func_start ov81_022425C4
ov81_022425C4: ; 0x022425C4
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	str r3, [sp, #4]
	mov r3, #0xc
	bl ov81_0224258C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov81_022425C4

	thumb_func_start ov81_022425D8
ov81_022425D8: ; 0x022425D8
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	str r3, [sp, #4]
	mov r3, #7
	bl ov81_0224258C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov81_022425D8

