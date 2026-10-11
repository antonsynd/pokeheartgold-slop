	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258914
	.public ov90_02259588

	.text

	thumb_func_start ov90_02258914
ov90_02258914: ; 0x02258914
	ldr r3, _0225891C ; =ov90_02259588
	add r2, r1, #0
	mov r1, #0
	bx r3
	.balign 4, 0
_0225891C: .word ov90_02259588
	thumb_func_end ov90_02258914

