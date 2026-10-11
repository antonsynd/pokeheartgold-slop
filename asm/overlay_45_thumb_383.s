#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E9BC
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222E9BC
ov45_0222E9BC: ; 0x0222E9BC
	push {r3, lr}
	ldr r0, _0222E9D8 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E9CA
	bl GF_AssertFail
_0222E9CA:
	ldr r0, _0222E9D8 ; =_022577C0
	ldr r1, _0222E9DC ; =0x00000131
	ldr r3, [r0]
	mov r2, #0
	ldrb r0, [r3, r1]
	strb r2, [r3, r1]
	pop {r3, pc}
	.balign 4, 0
_0222E9D8: .word _022577C0
_0222E9DC: .word 0x00000131
	thumb_func_end ov45_0222E9BC

