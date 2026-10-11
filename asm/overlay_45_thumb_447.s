#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230090
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_02230090
ov45_02230090: ; 0x02230090
	cmp r0, #0
	bne _02230098
	mov r0, #1
	bx lr
_02230098:
	ldr r0, _022300A8 ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _022300AC ; =0x00000132
	strb r2, [r1, r0]
	mov r0, #0
	bx lr
	nop
_022300A8: .word _022577C0
_022300AC: .word 0x00000132
	thumb_func_end ov45_02230090

