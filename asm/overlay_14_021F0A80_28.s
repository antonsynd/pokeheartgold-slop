#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"
	.public ov14_021F1448

    .text

	.text
	thumb_func_start ov14_021F1448
ov14_021F1448: ; 0x021F1448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r4, r1, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r0, r5, #0
	add r1, r4, r1
	add r0, #0x25
	strb r1, [r0]
	bl System_GetTouchNew
	cmp r0, #0
	bne _021F148C
	ldr r0, [r5, #4]
	add r5, #0x25
	ldrb r1, [r5]
	bl PCStorage_CountMonsAndEggsInBox
	cmp r0, #0x1e
	bne _021F1482
	ldr r0, _021F14F8 ; =0x000005F3
	bl PlaySE
	b _021F1488
_021F1482:
	ldr r0, _021F14FC ; =0x000005DD
	bl PlaySE
_021F1488:
	mov r0, #0x66
	pop {r3, r4, r5, pc}
_021F148C:
	ldr r0, _021F14FC ; =0x000005DD
	bl PlaySE
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r1, [r5, #0x34]
	ldr r0, _021F1500 ; =0x0000043C
	add r3, r2, #0
	str r2, [r1, r0]
	ldr r0, [r5, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextLastUnk0FInputs
	ldr r0, [r5, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #0x61
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F14F8: .word 0x000005F3
_021F14FC: .word 0x000005DD
_021F1500: .word 0x0000043C
	thumb_func_end ov14_021F1448

