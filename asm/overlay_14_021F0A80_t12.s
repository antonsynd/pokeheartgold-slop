#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"
	.public ov14_021F0D58
	.extern ov14_021F0EE8

    .text

	.text
	thumb_func_start ov14_021F0D58
ov14_021F0D58: ; 0x021F0D58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021F0D6A
	mov r4, #0x82
	b _021F0D6C
_021F0D6A:
	mov r4, #0x29
_021F0D6C:
	add r0, r5, #0
	add r0, #0x25
	ldrb r7, [r0]
	mov r1, #6
	add r0, r7, #0
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r1, r6, r1
	cmp r1, r7
	beq _021F0D96
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
_021F0D96:
	add r0, r5, #0
	add r0, #0x25
	ldrb r1, [r0]
	ldrb r0, [r5, #0x1f]
	cmp r1, r0
	bne _021F0E4E
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0DEA
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r5, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F0EE8
	pop {r3, r4, r5, r6, r7, pc}
_021F0DEA:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F0E40
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r5, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	ldr r1, _021F0EE0 ; =ov14_021E9970
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
_021F0E40:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F0E4E:
	ldr r0, [r5, #0x34]
	mov r1, #0x2d
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #1
	bne _021F0E9E
	ldr r0, [r5, #0x34]
	mov r1, #0x2d
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
_021F0E9E:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0EB2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F0EB2:
	add r0, r5, #0
	bl ov14_021F604C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F0ED4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021F0ED4:
	ldr r1, _021F0EE4 ; =ov14_021E9920
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0EE0: .word ov14_021E9970
_021F0EE4: .word ov14_021E9920
	thumb_func_end ov14_021F0D58

