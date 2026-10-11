	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265C8C
	.extern ov49_02267C20

    .text

	.text
	thumb_func_start ov49_02265C8C
ov49_02265C8C: ; 0x02265C8C
	ldr r3, _02265C94 ; =ov49_02267C20
	mov r2, #1
	bx r3
	nop
_02265C94: .word ov49_02267C20
	thumb_func_end ov49_02265C8C

