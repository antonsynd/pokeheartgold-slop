#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6D14
	.extern ov14_021F7AC4

    .text

	.text
	thumb_func_start ov14_021F6D14
ov14_021F6D14: ; 0x021F6D14
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	blt _021F6D30
	cmp r4, #5
	bgt _021F6D30
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	b _021F6D3A
_021F6D30:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021F6D3A:
	cmp r6, #8
	bne _021F6D56
	cmp r4, #0
	bne _021F6D56
	ldr r1, [r5, #0x34]
	ldr r0, _021F6E60 ; =0x0000043C
	mov r2, #8
	ldr r4, [r1, r0]
	ldr r0, [r1, #0x2c]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
_021F6D56:
	cmp r4, #0
	blt _021F6D64
	cmp r4, #5
	bgt _021F6D64
	ldr r1, [r5, #0x34]
	ldr r0, _021F6E60 ; =0x0000043C
	str r4, [r1, r0]
_021F6D64:
	cmp r4, #0
	bne _021F6DC0
	cmp r6, #5
	bne _021F6DC0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r0, r0, #1
	cmp r0, #0x12
	blt _021F6D7C
	mov r1, #0
	b _021F6D84
_021F6D7C:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r1, r0, #1
_021F6D84:
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F49E0
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F4848
	add r0, r5, #0
	bl ov14_021F57B8
	ldr r0, [r5, #0x34]
	mov r1, #5
	mov r2, #4
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F6E64 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F6DC0:
	cmp r4, #5
	bne _021F6E1A
	cmp r6, #0
	bne _021F6E1A
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	sub r0, r0, #1
	bpl _021F6DD6
	mov r1, #0x11
	b _021F6DDE
_021F6DD6:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	sub r1, r0, #1
_021F6DDE:
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F49E0
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F4848
	add r0, r5, #0
	bl ov14_021F57B8
	ldr r0, [r5, #0x34]
	mov r1, #4
	mov r2, #2
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F6E64 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F6E1A:
	cmp r4, #0
	blt _021F6E4A
	cmp r4, #5
	bgt _021F6E4A
	cmp r6, #8
	beq _021F6E4A
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r0, r5, #0
	add r1, r4, r1
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
_021F6E4A:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F6E64 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
	nop
_021F6E60: .word 0x0000043C
_021F6E64: .word ov14_021E9F20
	thumb_func_end ov14_021F6D14

