	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265C68
	.extern ov49_02267A84

    .text

	.text
	thumb_func_start ov49_02265C68
ov49_02265C68: ; 0x02265C68
	ldr r3, _02265C70 ; =ov49_02267A84
	mov r2, #1
	bx r3
	nop
_02265C70: .word ov49_02267A84
	thumb_func_end ov49_02265C68

