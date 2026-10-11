#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E670C
	.public ov73_021E6C50
	.public ov73_021E756C

	.text

	thumb_func_start ov73_021E6C50
ov73_021E6C50: ; 0x021E6C50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203769C
	cmp r0, #0
	bne _021E6C62
	bl sub_02037454
_021E6C62:
	ldr r0, [r5, #8]
	mov r2, #0xdd
	lsl r2, r2, #2
	ldr r0, [r0]
	mov r1, #2
	add r2, r5, r2
	bl sub_02039EB4
	cmp r0, #0
	beq _021E6CAE
	ldr r0, _021E6CB4 ; =0x00000657
	mov r1, #8
	bl StopSE
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ov73_021E756C
	add r0, r5, #0
	mov r1, #0x1d
	bl ov73_021E670C
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	mov r1, #0
	mov r0, #0xc9
	str r1, [r5, #0xc]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _021E6CB8 ; =gSystem + 0x60
	strb r1, [r0, #0xc]
	ldr r0, _021E6CBC ; =0x00004A14
	strb r1, [r5, r0]
_021E6CAE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6CB4: .word 0x00000657
_021E6CB8: .word gSystem + 0x60
_021E6CBC: .word 0x00004A14
	thumb_func_end ov73_021E6C50

