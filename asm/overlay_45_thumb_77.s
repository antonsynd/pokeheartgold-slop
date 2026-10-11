#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222AB48
	.extern ov45_0222C9D0

	.text

	.text
	thumb_func_start ov45_0222AB48
ov45_0222AB48: ; 0x0222AB48
	mov r2, #0xf9
	lsl r2, r2, #2
	ldr r3, _0222AB54 ; =ov45_0222C9D0
	add r0, r0, r2
	bx r3
	nop
_0222AB54: .word ov45_0222C9D0
	thumb_func_end ov45_0222AB48

