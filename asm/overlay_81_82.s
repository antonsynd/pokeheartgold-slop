	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243220

	.text

	thumb_func_start ov81_02243220
ov81_02243220: ; 0x02243220
	ldr r3, _02243224 ; =GridInputHandler_Free
	bx r3
	.balign 4, 0
_02243224: .word GridInputHandler_Free
	thumb_func_end ov81_02243220

