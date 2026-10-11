#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_022300DC
	.extern _022577C0
	.extern ov45_0223048C

	.text

	.text
	thumb_func_start ov45_022300DC
ov45_022300DC: ; 0x022300DC
	push {r3, lr}
	cmp r0, #0
	bne _022300F0
	ldr r0, _022300FC ; =_022577C0
	ldr r2, [r0]
	ldr r0, _02230100 ; =0x000006A8
	add r0, r2, r0
	bl ov45_0223048C
	pop {r3, pc}
_022300F0:
	ldr r0, _022300FC ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _02230104 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, pc}
	.balign 4, 0
_022300FC: .word _022577C0
_02230100: .word 0x000006A8
_02230104: .word 0x00000132
	thumb_func_end ov45_022300DC

