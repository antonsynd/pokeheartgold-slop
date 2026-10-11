#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ED530
	.extern ov112_021F328C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ED530
ov112_021ED530: ; 0x021ED530
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	bl Save_LocalFieldData_Get
	bl LocalFieldData_GetCurrentPosition
	ldr r1, [r0]
	ldr r0, _021ED57C ; =0x000001F3
	cmp r1, r0
	beq _021ED57A
	ldr r0, _021ED580 ; =0x00001344
	mov r4, #9
	add r5, r6, r0
	ldr r0, _021ED584 ; =0x0000B1B4
	add r7, r6, r0
_021ED550:
	ldr r0, _021ED588 ; =0x0000B3AC
	ldrh r1, [r5, r0]
	ldr r0, _021ED58C ; =0x0000FFF9
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021ED570
	mov r1, #0x89
	add r2, r4, #1
	lsl r1, r1, #2
	mul r1, r2
	ldr r0, [r6, #0x20]
	add r1, r7, r1
	bl ov112_021F328C
_021ED570:
	mov r0, #0x89
	lsl r0, r0, #2
	sub r5, r5, r0
	sub r4, r4, #1
	bpl _021ED550
_021ED57A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED57C: .word 0x000001F3
_021ED580: .word 0x00001344
_021ED584: .word 0x0000B1B4
_021ED588: .word 0x0000B3AC
_021ED58C: .word 0x0000FFF9
	thumb_func_end ov112_021ED530

