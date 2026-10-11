#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CE2C
	.public ov45_0222CE54
	.extern ov45_02254E54
	.extern ov45_02254EBC

	.text

	.text
	thumb_func_start ov45_0222CE2C
ov45_0222CE2C: ; 0x0222CE2C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xd
	blo _0222CE3A
	bl GF_AssertFail
_0222CE3A:
	ldr r2, _0222CE50 ; =ov45_02254E54
	lsl r3, r4, #2
	add r1, r5, #4
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r1, r3
	blx r2
	add r5, #0x38
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	nop
_0222CE50: .word ov45_02254E54
	thumb_func_end ov45_0222CE2C

	thumb_func_start ov45_0222CE54
ov45_0222CE54: ; 0x0222CE54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xd
	blo _0222CE62
	bl GF_AssertFail
_0222CE62:
	ldr r2, _0222CE74 ; =ov45_02254EBC
	lsl r3, r5, #2
	add r1, r4, #4
	ldr r2, [r2, r3]
	add r0, r4, #0
	add r1, r1, r3
	blx r2
	pop {r3, r4, r5, pc}
	nop
_0222CE74: .word ov45_02254EBC
	thumb_func_end ov45_0222CE54

