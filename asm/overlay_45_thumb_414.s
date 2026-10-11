#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F2D4
	.public ov45_0222F314
	.extern _022577C0
	.extern ov45_0223021C
	.extern ov45_022302B0

	.text

	.text
	thumb_func_start ov45_0222F2D4
ov45_0222F2D4: ; 0x0222F2D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F310 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F2E4
	bl GF_AssertFail
_0222F2E4:
	cmp r4, #3
	blt _0222F2EC
	bl GF_AssertFail
_0222F2EC:
	ldr r0, _0222F310 ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	bl ov45_0223021C
	cmp r0, #0
	bne _0222F2FE
	mov r0, #0
	pop {r4, pc}
_0222F2FE:
	ldr r0, _0222F310 ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	bl ov45_022302B0
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	pop {r4, pc}
	.balign 4, 0
_0222F310: .word _022577C0
	thumb_func_end ov45_0222F2D4

	thumb_func_start ov45_0222F314
ov45_0222F314: ; 0x0222F314
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F34C ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F324
	bl GF_AssertFail
_0222F324:
	cmp r4, #3
	blt _0222F32C
	bl GF_AssertFail
_0222F32C:
	ldr r0, _0222F34C ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	bl ov45_0223021C
	cmp r0, #0
	bne _0222F33E
	mov r0, #0
	pop {r4, pc}
_0222F33E:
	ldr r0, _0222F34C ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	bl ov45_022302B0
	ldr r0, [r0, #8]
	pop {r4, pc}
	.balign 4, 0
_0222F34C: .word _022577C0
	thumb_func_end ov45_0222F314

