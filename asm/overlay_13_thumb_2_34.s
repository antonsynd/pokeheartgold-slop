	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222BF4
	.extern ov13_0224DDA0

	.text

	.text
	thumb_func_start ov13_02222BF4
ov13_02222BF4: ; 0x02222BF4
	ldr r3, _02222C00 ; =OS_SendMessage
	add r1, r0, #0
	ldr r0, _02222C04 ; =ov13_0224DDA0
	mov r2, #0
	bx r3
	nop
_02222C00: .word OS_SendMessage
_02222C04: .word ov13_0224DDA0
	thumb_func_end ov13_02222BF4

