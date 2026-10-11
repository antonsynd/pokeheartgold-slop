#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_022300B0
	.extern _022577C0
	.extern ov45_0223040C

	.text

	.text
	thumb_func_start ov45_022300B0
ov45_022300B0: ; 0x022300B0
	push {r3, lr}
	cmp r0, #0
	bne _022300C6
	ldr r0, _022300D4 ; =_022577C0
	ldr r3, [r0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r3, r0
	bl ov45_0223040C
	pop {r3, pc}
_022300C6:
	ldr r0, _022300D4 ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _022300D8 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, pc}
	nop
_022300D4: .word _022577C0
_022300D8: .word 0x00000132
	thumb_func_end ov45_022300B0

