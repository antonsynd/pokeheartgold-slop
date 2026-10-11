#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EE26C.inc"
	.include "global.inc"
	.public ov14_021EEC9C
	.public ov14_021EED28
	.public ov14_021EEDB8

    .text

	.text
	thumb_func_start ov14_021EEC9C
ov14_021EEC9C: ; 0x021EEC9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021EED0C
	ldr r1, [r5, #0x34]
	ldr r0, _021EED20 ; =0x000088C8
	ldrh r0, [r1, r0]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EED0C
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
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
	ldr r0, _021EED24 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #4
	mov r2, #0x25
	bl ov14_021F68C0
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EED0C:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x25
	bl ov14_021F68C0
	add r0, r5, #0
	mov r1, #2
	bl ov14_021F0254
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EED20: .word 0x000088C8
_021EED24: .word 0x000005F3
	thumb_func_end ov14_021EEC9C

	thumb_func_start ov14_021EED28
ov14_021EED28: ; 0x021EED28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EEDAE
	add r0, r5, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021EED48
	sub r4, #0x1e
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_021EED48:
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
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x25
	bl ov14_021F68C0
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F5FBC
	ldr r1, [r5, #0x34]
	ldr r0, _021EEDB4 ; =0x000088C8
	mov r2, #0
	strh r2, [r1, r0]
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EEDAE:
	mov r0, #0x79
	pop {r3, r4, r5, pc}
	nop
_021EEDB4: .word 0x000088C8
	thumb_func_end ov14_021EED28

	thumb_func_start ov14_021EEDB8
ov14_021EEDB8: ; 0x021EEDB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r4, [r1]
	cmp r4, #0x1e
	bhs _021EEDEA
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	b _021EEDF8
_021EEDEA:
	sub r4, #0x1e
	lsl r1, r4, #0x10
	lsr r4, r1, #0x10
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
_021EEDF8:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
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
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
	ldr r0, [r5, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021EEE78
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	b _021EEE82
_021EEE78:
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
_021EEE82:
	ldr r1, _021EEE90 ; =ov14_021E9450
	add r0, r5, #0
	mov r2, #0x7b
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021EEE90: .word ov14_021E9450
	thumb_func_end ov14_021EEDB8

