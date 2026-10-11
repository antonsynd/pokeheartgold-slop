#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F294
	.extern _022577C0
	.extern ov45_0222F274

	.text

	.text
	thumb_func_start ov45_0222F294
ov45_0222F294: ; 0x0222F294
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F2CC ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F2A4
	bl GF_AssertFail
_0222F2A4:
	add r0, r4, #0
	bl ov45_0222F274
	cmp r0, #0
	bne _0222F2B2
	mov r0, #0
	pop {r4, pc}
_0222F2B2:
	ldr r0, _0222F2CC ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x4c
	mul r0, r4
	add r1, r1, r0
	ldr r0, _0222F2D0 ; =0x000005C4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222F2C8
	mov r0, #1
	pop {r4, pc}
_0222F2C8:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0222F2CC: .word _022577C0
_0222F2D0: .word 0x000005C4
	thumb_func_end ov45_0222F294

