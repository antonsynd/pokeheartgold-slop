#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F3E8
	.extern _022577C0
	.extern ov45_0223021C

	.text

	.text
	thumb_func_start ov45_0222F3E8
ov45_0222F3E8: ; 0x0222F3E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F424 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F3F8
	bl GF_AssertFail
_0222F3F8:
	cmp r4, #3
	blt _0222F400
	bl GF_AssertFail
_0222F400:
	ldr r0, _0222F424 ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	bl ov45_0223021C
	cmp r0, #0
	bne _0222F412
	ldr r0, _0222F428 ; =0x00000708
	pop {r4, pc}
_0222F412:
	ldr r0, _0222F424 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x4c
	mul r0, r4
	add r1, r1, r0
	ldr r0, _0222F42C ; =0x000005FE
	ldrh r0, [r1, r0]
	pop {r4, pc}
	nop
_0222F424: .word _022577C0
_0222F428: .word 0x00000708
_0222F42C: .word 0x000005FE
	thumb_func_end ov45_0222F3E8

