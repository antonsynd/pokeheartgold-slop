	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265948

    .text

	.text
	thumb_func_start ov49_02265948
ov49_02265948: ; 0x02265948
	ldr r3, _02265954 ; =memset
	mov r2, #0xd1
	add r0, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	bx r3
	.balign 4, 0
_02265954: .word memset
	thumb_func_end ov49_02265948

