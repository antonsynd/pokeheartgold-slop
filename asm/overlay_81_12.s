	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223FC60
	.public ov81_02240F38
	.public ov81_02241A38

	.text

	thumb_func_start ov81_0223FC60
ov81_0223FC60: ; 0x0223FC60
	push {r4, lr}
	add r4, r0, #0
	bl ov81_02241A38
	add r0, r4, #0
	mov r1, #1
	bl ov81_02240F38
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov81_0223FC60

