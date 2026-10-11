#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D7CC

	.text

	.text
	thumb_func_start ov45_0222D7CC
ov45_0222D7CC: ; 0x0222D7CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov00_021E6A70
	cmp r0, #0xb
	beq _0222D7DE
	cmp r5, #0x19
	bne _0222D7EA
_0222D7DE:
	cmp r4, #2
	beq _0222D7E6
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_0222D7E6:
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0222D7EA:
	cmp r5, #0x1a
	bne _0222D7F2
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0222D7F2:
	cmp r0, #0
	bge _0222D7F8
	mov r0, #0xb
_0222D7F8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov45_0222D7CC

