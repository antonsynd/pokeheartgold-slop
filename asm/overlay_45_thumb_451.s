#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230130
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_02230130
ov45_02230130: ; 0x02230130
	ldr r0, _0223013C ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _02230140 ; =0x00000131
	strb r2, [r1, r0]
	bx lr
	.balign 4, 0
_0223013C: .word _022577C0
_02230140: .word 0x00000131
	thumb_func_end ov45_02230130

