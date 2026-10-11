#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EE50
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222EE50
ov45_0222EE50: ; 0x0222EE50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222EE7C ; =_022577C0
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	cmp r0, #0
	bne _0222EE64
	bl GF_AssertFail
_0222EE64:
	ldr r2, _0222EE7C ; =_022577C0
	mov r1, #0x19
	ldr r0, [r2]
	lsl r1, r1, #4
	str r5, [r0, r1]
	ldr r3, [r2]
	add r0, r1, #4
	str r4, [r3, r0]
	ldr r0, [r2]
	add r1, #8
	str r6, [r0, r1]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222EE7C: .word _022577C0
	thumb_func_end ov45_0222EE50

