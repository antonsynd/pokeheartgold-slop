	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EC11C

	.text

	.text
	thumb_func_start ov102_021EC11C
ov102_021EC11C: ; 0x021EC11C
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0x30
	add r1, #0x8c
	str r2, [r1]
	add r1, r0, #0
	mov r3, #0
	add r1, #0x90
	str r3, [r1]
	ldr r0, [r0, #0xc]
	mov r1, #2
	mov r2, #3
	bl BgSetPosTextAndCommit
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EC11C

