#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F154
	.extern _022577C0
	.extern ov45_0222F74C
	.extern ov45_022301E0

	.text

	.text
	thumb_func_start ov45_0222F154
ov45_0222F154: ; 0x0222F154
	push {r4, lr}
	ldr r0, _0222F1B0 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F162
	bl GF_AssertFail
_0222F162:
	ldr r0, _0222F1B0 ; =_022577C0
	ldr r2, [r0]
	ldr r0, _0222F1B4 ; =0x0000069C
	ldrh r1, [r2, r0]
	cmp r1, #3
	beq _0222F1AC
	add r0, r0, #2
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0222F1AC
	bl ov45_02232CA4
	bl ov45_0222F74C
	cmp r0, #0
	bne _0222F186
	bl GF_AssertFail
_0222F186:
	ldr r0, _0222F1B0 ; =_022577C0
	ldr r4, [r0]
	bl ov45_02232580
	ldr r1, _0222F1B4 ; =0x0000069C
	add r2, r0, #0
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov45_022301E0
	cmp r0, #0
	bne _0222F1A2
	bl GF_AssertFail
_0222F1A2:
	ldr r0, _0222F1B0 ; =_022577C0
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _0222F1B8 ; =0x0000069E
	strb r2, [r1, r0]
_0222F1AC:
	pop {r4, pc}
	nop
_0222F1B0: .word _022577C0
_0222F1B4: .word 0x0000069C
_0222F1B8: .word 0x0000069E
	thumb_func_end ov45_0222F154

