#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EBC4
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222EBC4
ov45_0222EBC4: ; 0x0222EBC4
	push {r3, lr}
	ldr r0, _0222EBE8 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EBD2
	bl GF_AssertFail
_0222EBD2:
	ldr r0, _0222EBE8 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222EBEC ; =0x0000012E
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0222EBE2
	mov r0, #1
	pop {r3, pc}
_0222EBE2:
	mov r0, #0
	pop {r3, pc}
	nop
_0222EBE8: .word _022577C0
_0222EBEC: .word 0x0000012E
	thumb_func_end ov45_0222EBC4

