	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223100
	.extern ov13_0224DD80

	.text

	.text
	thumb_func_start ov13_02223100
ov13_02223100: ; 0x02223100
	push {r3, lr}
	ldr r1, _02223110 ; =ov13_0224DD80
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0222310C
	blx r1
_0222310C:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_02223110: .word ov13_0224DD80
	thumb_func_end ov13_02223100

