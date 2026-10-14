	.include "macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022473E4
	.extern _0224C040

	.text

	.text
	thumb_func_start ov71_022473E4
ov71_022473E4: ; 0x022473E4
	ldr r0, _022473EC ; =_0224C040
	mov r1, #0
	str r1, [r0]
	bx lr
	.balign 4, 0
_022473EC: .word _0224C040
	thumb_func_end ov71_022473E4

