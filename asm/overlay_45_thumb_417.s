#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F430
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F430
ov45_0222F430: ; 0x0222F430
	push {r3, lr}
	ldr r0, _0222F45C ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F43E
	bl GF_AssertFail
_0222F43E:
	ldr r0, _0222F45C ; =_022577C0
	ldr r1, _0222F460 ; =0x0000069C
	ldr r3, [r0]
	ldrh r2, [r3, r1]
	cmp r2, #3
	bne _0222F450
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_0222F450:
	mov r0, #0x4c
	mul r0, r2
	add r0, r3, r0
	sub r1, #0x9c
	ldr r0, [r0, r1]
	pop {r3, pc}
	.balign 4, 0
_0222F45C: .word _022577C0
_0222F460: .word 0x0000069C
	thumb_func_end ov45_0222F430

