#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222DDE4
	.extern ov45_0222DD44
	.extern ov45_02254BE8

	.text

	.text
	thumb_func_start ov45_0222DDE4
ov45_0222DDE4: ; 0x0222DDE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov45_0222DD44
	cmp r0, #0
	bne _0222DDF6
	bl GF_AssertFail
_0222DDF6:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r2, [r0]
	cmp r2, #9
	bhs _0222DE0E
	lsl r3, r2, #2
	ldr r2, _0222DE18 ; =ov45_02254BE8
	add r1, r4, #0
	ldr r2, [r2, r3]
	blx r2
	pop {r3, r4, r5, pc}
_0222DE0E:
	bl GF_AssertFail
	mov r0, #0x14
	pop {r3, r4, r5, pc}
	nop
_0222DE18: .word ov45_02254BE8
	thumb_func_end ov45_0222DDE4

