	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222304C
	.extern ov07_0223649C

	.text

	.text
	thumb_func_start ov07_0222304C
ov07_0222304C: ; 0x0222304C
	cmp r0, #0x21
	blo _02223054
	mov r0, #0
	bx lr
_02223054:
	lsl r1, r0, #2
	ldr r0, _0222305C ; =ov07_0223649C
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_0222305C: .word ov07_0223649C
	thumb_func_end ov07_0222304C

