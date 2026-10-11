	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBB1C

	.text

	.text
	thumb_func_start ov102_021EBB1C
ov102_021EBB1C: ; 0x021EBB1C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #3
	mov r3, #0x10
	bl BgSetPosTextAndCommit
	pop {r3, pc}
	thumb_func_end ov102_021EBB1C

