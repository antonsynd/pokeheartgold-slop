	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225C8DC
	.extern ov89_0225D64C

	.text

	.text
	thumb_func_start ov89_0225C8DC
ov89_0225C8DC: ; 0x0225C8DC
	ldr r3, _0225C8E8 ; =ov45_0222EE50
	add r2, r0, #0
	ldr r0, _0225C8EC ; =ov89_0225D64C
	mov r1, #3
	bx r3
	nop
_0225C8E8: .word ov45_0222EE50
_0225C8EC: .word ov89_0225D64C
	thumb_func_end ov89_0225C8DC

