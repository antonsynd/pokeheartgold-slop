#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C52C
	.extern ov70_0223CD28
	.extern ov70_0223EDE4
	.extern ov70_0223F1D8
	.extern ov70_0223F2BC
	.extern ov70_0223F960
	.extern ov70_02242144

	.text

	.text
	thumb_func_start ov70_0223C52C
ov70_0223C52C: ; 0x0223C52C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223C5FC ; =0x000011A8
	ldr r0, [r4, r0]
	bl ov70_02242144
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0223C54C
	add r0, r0, #1
	cmp r5, r0
	beq _0223C5F6
	b _0223C56E
_0223C54C:
	mov r0, #0
	bl ov70_0223CD28
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _0223C600 ; =0x000011C4
	ldr r3, [r4, r0]
	add r0, #0x70
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov70_0223F960
	b _0223C5F6
_0223C56E:
	mov r0, #0
	bl ov70_0223CD28
	ldr r0, _0223C604 ; =0x00000B8A
	mov r1, #0
	strh r5, [r4, r0]
	ldr r0, _0223C608 ; =0x00001068
	str r1, [r4, #0x2c]
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r3, #0
	ldr r0, _0223C60C ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _0223C610 ; =0x00000BA4
	ldr r0, _0223C608 ; =0x00001068
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r2, r5, #0
	bl ov70_0223F1D8
	add r0, r5, #0
	mov r1, #0x12
	bl GetMonBaseStat
	ldr r1, _0223C600 ; =0x000011C4
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r3, [r4, r1]
	add r1, #0x70
	add r0, r4, r1
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov70_0223F960
	ldr r1, _0223C600 ; =0x000011C4
	ldr r0, _0223C604 ; =0x00000B8A
	ldr r1, [r4, r1]
	add r0, r4, r0
	ldr r1, [r1, #0x20]
	bl ov70_0223EDE4
	cmp r0, #0
	beq _0223C5F6
	ldr r0, _0223C614 ; =0x00001088
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C60C ; =0x00010200
	mov r2, #0xba
	str r0, [sp, #8]
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	sub r2, #0x14
	ldr r0, _0223C614 ; =0x00001088
	ldrsb r2, [r4, r2]
	add r0, r4, r0
	mov r3, #1
	bl ov70_0223F2BC
_0223C5F6:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0223C5FC: .word 0x000011A8
_0223C600: .word 0x000011C4
_0223C604: .word 0x00000B8A
_0223C608: .word 0x00001068
_0223C60C: .word 0x00010200
_0223C610: .word 0x00000BA4
_0223C614: .word 0x00001088
	thumb_func_end ov70_0223C52C

