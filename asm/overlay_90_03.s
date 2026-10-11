	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225892C
	.public ov90_02259588

	.text

	thumb_func_start ov90_0225892C
ov90_0225892C: ; 0x0225892C
	ldr r3, _02258934 ; =ov90_02259588
	add r2, r1, #0
	mov r1, #2
	bx r3
	.balign 4, 0
_02258934: .word ov90_02259588
	thumb_func_end ov90_0225892C

