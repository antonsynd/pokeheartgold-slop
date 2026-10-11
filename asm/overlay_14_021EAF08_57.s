#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EDE88

    .text

	thumb_func_start ov14_021EDE88
ov14_021EDE88: ; 0x021EDE88
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021EDF00 ; =0x000005EA
	bl PlaySE
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	bl ov14_021E637C
	add r0, r4, #0
	bl ov14_021F08F0
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7F4C
	ldr r1, _021EDF04 ; =ov14_021E9518
	add r0, r4, #0
	mov r2, #0x56
	bl ov14_021F0234
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021EDF00: .word 0x000005EA
_021EDF04: .word ov14_021E9518
	thumb_func_end ov14_021EDE88

