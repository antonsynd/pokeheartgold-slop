#include "config.h"
	.include "macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E762C
	.extern ov73_021E77A4

	.text

	.text
	thumb_func_start ov73_021E762C
ov73_021E762C: ; 0x021E762C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0xbd
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	mov r0, #0xc1
	lsl r0, r0, #2
	mov r4, #0
	add r0, r5, r0
	str r4, [sp, #8]
	add r6, r5, #0
	mov r7, #0x1c
	str r0, [sp, #0x18]
_021E764E:
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #3
	bhi _021E771A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7664: ; jump table
	.short _021E771A - _021E7664 - 2 ; case 0
	.short _021E766C - _021E7664 - 2 ; case 1
	.short _021E771A - _021E7664 - 2 ; case 2
	.short _021E76E2 - _021E7664 - 2 ; case 3
_021E766C:
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021E767A
	bl GF_AssertFail
_021E767A:
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl PlayerProfile_GetTrainerGender
	str r0, [sp, #0xc]
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl PlayerProfile_GetAvatar
	str r0, [sp, #0x10]
	bl sub_0203769C
	cmp r4, r0
	bne _021E76AC
	mov r0, #0x8b
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	b _021E76C8
_021E76AC:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	bl ov73_021E77A4
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	bl Sprite_SetAnimCtrlSeq
_021E76C8:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x36
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #8]
	b _021E771A
_021E76E2:
	bl sub_0203769C
	cmp r4, r0
	bne _021E7706
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	b _021E7712
_021E7706:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Sprite_SetAnimCtrlSeq
_021E7712:
	mov r0, #0x36
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021E771A:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #2
	add r5, r5, #4
	add r6, #8
	add r7, r7, #2
	str r0, [sp, #4]
	cmp r4, #5
	blt _021E764E
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021E7738
	ldr r0, _021E773C ; =0x0000064E
	bl PlaySE
_021E7738:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E773C: .word 0x0000064E
	thumb_func_end ov73_021E762C

