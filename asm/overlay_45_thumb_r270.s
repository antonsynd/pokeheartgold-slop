#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D250
	.extern ov45_0222CDC4
	.extern ov45_0222CEB0
	.extern ov45_02254BA4

	.text

	.text
	thumb_func_start ov45_0222D250
ov45_0222D250: ; 0x0222D250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0222D274 ; =FS_OVERLAY_ID(OVY_90)
	mov r1, #2
	bl HandleLoadOverlay
	ldrh r2, [r5, #0x3a]
	ldr r0, [r4]
	ldr r1, [r5, #0x3c]
	bl ov45_0222CEB0
	ldr r2, _0222D278 ; =ov45_02254BA4
	add r0, r5, #0
	add r1, r4, #0
	bl ov45_0222CDC4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222D274: .word FS_OVERLAY_ID(OVY_90)
_0222D278: .word ov45_02254BA4
	thumb_func_end ov45_0222D250

