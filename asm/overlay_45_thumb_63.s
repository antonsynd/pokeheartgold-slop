#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222A9CC
	.extern ov45_0222CD04
	.extern ov45_02254A84

	.text

	.text
	thumb_func_start ov45_0222A9CC
ov45_0222A9CC: ; 0x0222A9CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	blo _0222AA00
	ldrh r0, [r5, #0x3a]
	bl ov45_0222CD04
	ldr r1, _0222AA08 ; =0x0000FFFF
	cmp r0, r1
	beq _0222A9FC
	ldrh r3, [r5, #0x3a]
	ldr r2, _0222AA0C ; =ov45_02254A84
	mov r1, #0
_0222A9EA:
	ldrh r0, [r2]
	cmp r3, r0
	bne _0222A9F2
	add r4, r0, #0
_0222A9F2:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blo _0222A9EA
	b _0222AA02
_0222A9FC:
	mov r4, #1
	b _0222AA02
_0222AA00:
	add r4, r0, #0
_0222AA02:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222AA08: .word 0x0000FFFF
_0222AA0C: .word ov45_02254A84
	thumb_func_end ov45_0222A9CC

