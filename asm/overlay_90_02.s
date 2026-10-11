	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258920
	.public ov90_02259588

	.text

	thumb_func_start ov90_02258920
ov90_02258920: ; 0x02258920
	ldr r3, _02258928 ; =ov90_02259588
	add r2, r1, #0
	mov r1, #1
	bx r3
	.balign 4, 0
_02258928: .word ov90_02259588
	thumb_func_end ov90_02258920

