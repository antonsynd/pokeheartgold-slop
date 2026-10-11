#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"
	.public ov14_021F1228
	.public ov14_021F129C

    .text

	.text
	thumb_func_start ov14_021F1228
ov14_021F1228: ; 0x021F1228
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r2, _021F1298 ; =0x0000044D
	ldrb r3, [r0, r2]
	lsl r2, r1, #2
	add r3, r3, r2
	bpl _021F123C
	add r3, #0x18
	b _021F1242
_021F123C:
	cmp r3, #0x18
	blt _021F1242
	sub r3, #0x18
_021F1242:
	ldr r2, _021F1298 ; =0x0000044D
	cmp r1, #0
	strb r3, [r0, r2]
	ldr r0, [r4, #0x34]
	ble _021F1256
	mov r1, #5
	mov r2, #4
	bl ov14_021F29E4
	b _021F125E
_021F1256:
	mov r1, #4
	mov r2, #2
	bl ov14_021F29E4
_021F125E:
	add r0, r4, #0
	bl ov14_021F462C
	add r0, r4, #0
	bl ov14_021F4530
	add r0, r4, #0
	bl ov14_021F58B8
	ldr r2, [r4, #0x34]
	ldr r1, _021F1298 ; =0x0000044D
	ldr r0, [r2, #0x2c]
	ldrb r1, [r2, r1]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	pop {r4, pc}
	.balign 4, 0
_021F1298: .word 0x0000044D
	thumb_func_end ov14_021F1228

	thumb_func_start ov14_021F129C
ov14_021F129C: ; 0x021F129C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x34]
	ldr r3, _021F1314 ; =0x0000044D
	ldrb r5, [r2, r3]
	lsr r5, r5, #2
	lsl r5, r5, #2
	add r1, r1, r5
	strb r1, [r2, r3]
	bl ov14_021F459C
	add r0, r4, #0
	bl ov14_021F58B8
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	ldr r2, [r4, #0x34]
	ldr r1, _021F1318 ; =0x0000043C
	str r0, [r2, r1]
	ldr r0, [r4, #0x34]
	ldr r2, [r0, r1]
	ldr r0, [r0, #0x2c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r1, #6
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
	ldr r0, [r4, #0x34]
	mov r1, #6
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
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #1
	bl ov14_021F2A18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1314: .word 0x0000044D
_021F1318: .word 0x0000043C
	thumb_func_end ov14_021F129C

