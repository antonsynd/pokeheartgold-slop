#include "msgdata/msg/msg_0252.h"
	.include "macros.inc"
	.include "overlay_trainer_card_signature.inc"
	.include "global.inc"
	.public TrainerCardSignature_Main
	.extern ov52_021E921C
	.extern ov52_021E96C0

	.text

	.text
	thumb_func_start TrainerCardSignature_Main
TrainerCardSignature_Main: ; 0x021E8248
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021E8262
	cmp r1, #1
	beq _021E8270
	cmp r1, #2
	beq _021E828E
	b _021E829A
_021E8262:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E829A
	mov r0, #1
	str r0, [r5]
	b _021E829A
_021E8270:
	mov r2, #0xc3
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r3, r2, #2
	ldr r2, _021E82A4 ; =ov52_021E96C0
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _021E8284
	blx r2
	str r0, [r5]
_021E8284:
	ldr r0, _021E82A8 ; =0x00004318
	add r0, r4, r0
	bl ov52_021E921C
	b _021E829A
_021E828E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E829A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E829A:
	ldr r0, [r4, #0x3c]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E82A4: .word ov52_021E96C0
_021E82A8: .word 0x00004318
	thumb_func_end TrainerCardSignature_Main

