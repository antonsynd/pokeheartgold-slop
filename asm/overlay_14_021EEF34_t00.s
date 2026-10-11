#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EEF34.inc"
	.include "global.inc"
	.public ov14_021EEF34
	.public ov14_021EEF8C

    .text

	.text
	thumb_func_start ov14_021EEF34
ov14_021EEF34: ; 0x021EEF34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021EEF46
	sub r4, #0x1e
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_021EEF46:
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
	ldrh r1, [r5, #0x1c]
	add r0, r5, #0
	mov r2, #0x25
	bl ov14_021F6768
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021EEF34

	thumb_func_start ov14_021EEF8C
ov14_021EEF8C: ; 0x021EEF8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x34]
	add r0, #0x21
	ldr r4, [r2, #0xc]
	ldrb r0, [r0]
	ldrh r1, [r4]
	cmp r1, r0
	beq _021EEFA6
	ldr r0, _021EF01C ; =0x000088C8
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _021EEFE2
_021EEFA6:
	add r0, r5, #0
	bl ov14_021F1F38
	ldr r1, [r5, #0x34]
	ldr r0, _021EF01C ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021EEFCA
	ldr r0, _021EF020 ; =0x000005EA
	bl PlaySE
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
_021EEFCA:
	ldr r0, [r5, #0x34]
	mov r1, #0x24
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x75
	pop {r3, r4, r5, pc}
_021EEFE2:
	ldr r0, _021EF020 ; =0x000005EA
	bl PlaySE
	ldrh r1, [r4]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x7f
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF01C: .word 0x000088C8
_021EF020: .word 0x000005EA
	thumb_func_end ov14_021EEF8C

