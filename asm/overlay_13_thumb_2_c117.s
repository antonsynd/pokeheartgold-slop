	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226CD8
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02226CD8
ov13_02226CD8: ; 0x02226CD8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mul r4, r1
	ldr r1, _02226CF8 ; =ov13_0224DF30
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r5, r0, #0
	beq _02226CF2
	mov r1, #0
	add r2, r4, #0
	bl memset
_02226CF2:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_02226CF8: .word ov13_0224DF30
	thumb_func_end ov13_02226CD8

