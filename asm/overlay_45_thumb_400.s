#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EDC4
	.public ov45_0222EDF0
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222EDC4
ov45_0222EDC4: ; 0x0222EDC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222EDEC ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EDD4
	bl GF_AssertFail
_0222EDD4:
	cmp r4, #0x14
	blo _0222EDDC
	bl GF_AssertFail
_0222EDDC:
	ldr r0, _0222EDEC ; =_022577C0
	ldr r1, [r0]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r4, pc}
	.balign 4, 0
_0222EDEC: .word _022577C0
	thumb_func_end ov45_0222EDC4

	thumb_func_start ov45_0222EDF0
ov45_0222EDF0: ; 0x0222EDF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222EE18 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EE00
	bl GF_AssertFail
_0222EE00:
	cmp r4, #0x14
	blo _0222EE08
	bl GF_AssertFail
_0222EE08:
	ldr r0, _0222EE18 ; =_022577C0
	ldr r1, [r0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _0222EE1C ; =0x00000136
	ldrb r0, [r1, r0]
	pop {r4, pc}
	nop
_0222EE18: .word _022577C0
_0222EE1C: .word 0x00000136
	thumb_func_end ov45_0222EDF0

