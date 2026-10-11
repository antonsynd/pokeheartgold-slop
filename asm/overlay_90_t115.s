	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225C1C8
	.public ov90_0225C1D4
	.extern ov90_02258B44

	.text

	.text
	thumb_func_start ov90_0225C1C8
ov90_0225C1C8: ; 0x0225C1C8
	add r0, r3, #0
	ldr r3, _0225C1D0 ; =ov90_02258B44
	mov r1, #1
	bx r3
	.balign 4, 0
_0225C1D0: .word ov90_02258B44
	thumb_func_end ov90_0225C1C8

	thumb_func_start ov90_0225C1D4
ov90_0225C1D4: ; 0x0225C1D4
	add r0, r3, #0
	ldr r3, _0225C1DC ; =ov90_02258B44
	mov r1, #0
	bx r3
	.balign 4, 0
_0225C1DC: .word ov90_02258B44
	thumb_func_end ov90_0225C1D4

