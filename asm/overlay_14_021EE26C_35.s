#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EE26C.inc"
	.include "global.inc"
	.public ov14_021EEED4

    .text

	.text
	thumb_func_start ov14_021EEED4
ov14_021EEED4: ; 0x021EEED4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021EEEE6
	sub r4, #0x1e
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_021EEEE6:
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	add r1, r4, #0
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
	ldr r0, _021EEF30 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x25
	bl ov14_021F68C0
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EEF30: .word 0x000005F3
	thumb_func_end ov14_021EEED4

