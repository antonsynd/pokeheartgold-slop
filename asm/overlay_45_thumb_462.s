#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230394
	.extern _022577C0
	.extern ov45_0222F154

	.text

	.text
	thumb_func_start ov45_02230394
ov45_02230394: ; 0x02230394
	push {r3, lr}
	ldr r2, _022303B4 ; =0x0000069E
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _022303A4
	bl ov45_0222F154
	pop {r3, pc}
_022303A4:
	cmp r0, #0
	bne _022303B2
	ldr r0, _022303B8 ; =_022577C0
	mov r3, #1
	ldr r1, [r0]
	add r0, r2, #1
	strb r3, [r1, r0]
_022303B2:
	pop {r3, pc}
	.balign 4, 0
_022303B4: .word 0x0000069E
_022303B8: .word _022577C0
	thumb_func_end ov45_02230394

