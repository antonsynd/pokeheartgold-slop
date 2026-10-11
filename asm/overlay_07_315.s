	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02223038
	.extern ov07_02236520

	.text

	.text
	thumb_func_start ov07_02223038
ov07_02223038: ; 0x02223038
	cmp r0, #0x54
	blo _02223040
	mov r0, #0
	bx lr
_02223040:
	lsl r1, r0, #2
	ldr r0, _02223048 ; =ov07_02236520
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_02223048: .word ov07_02236520
	thumb_func_end ov07_02223038

