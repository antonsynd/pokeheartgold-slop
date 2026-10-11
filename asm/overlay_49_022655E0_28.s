	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265C98
	.extern ov49_02267C20

    .text

	.text
	thumb_func_start ov49_02265C98
ov49_02265C98: ; 0x02265C98
	ldr r3, _02265CA0 ; =ov49_02267C20
	mov r2, #2
	bx r3
	nop
_02265CA0: .word ov49_02267C20
	thumb_func_end ov49_02265C98

