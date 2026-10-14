#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E740
	.extern ov65_0221E330
	.extern ov65_0221E684
	.extern ov65_0221E72C
	.extern ov65_0221FB90

	.text

	.text
	thumb_func_start ov65_0221E740
ov65_0221E740: ; 0x0221E740
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0
	ldr r0, _0221E838 ; =0x00003678
	mvn r1, r1
	str r1, [r5, r0]
	mov r6, #0
	bl sub_02037454
	cmp r0, #0
	ble _0221E77C
	ldr r7, _0221E83C ; =0x000035F8
	add r4, r5, #0
_0221E75A:
	ldr r0, [r4, r7]
	cmp r0, #2
	bne _0221E770
	ldr r0, _0221E838 ; =0x00003678
	lsl r1, r6, #2
	str r6, [r5, r0]
	mov r2, #0
	add r1, r5, r1
	sub r0, #0x80
	str r2, [r1, r0]
	b _0221E77C
_0221E770:
	add r4, r4, #4
	add r6, r6, #1
	bl sub_02037454
	cmp r6, r0
	blt _0221E75A
_0221E77C:
	ldr r0, _0221E838 ; =0x00003678
	mov r1, #0
	ldr r2, [r5, r0]
	mvn r1, r1
	cmp r2, r1
	bne _0221E7C2
	add r0, #0xc
	ldr r0, [r5, r0]
	bl DestroyMsgData
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl MessageFormat_Delete
	mov r0, #0x13
	bl sub_02037AC0
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221E840 ; =0x000005B4
	ldr r3, [r5, r3]
	add r0, r5, r0
	mov r1, #0x1c
	mov r2, #1
	bl ov65_0221FB90
	ldr r1, _0221E844 ; =ov65_0221E72C
	ldr r0, _0221E848 ; =0x00002220
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0221E7C2:
	ldr r0, [r5, #4]
	bl Save_Bag_Get
	ldr r1, _0221E84C ; =0x000001B5
	mov r2, #1
	mov r3, #0x1a
	bl Bag_HasItem
	cmp r0, #1
	bne _0221E7FE
	ldr r0, _0221E838 ; =0x00003678
	ldr r0, [r5, r0]
	bl sub_02034818
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl BufferPlayersName
	add r0, r5, #0
	mov r1, #0x3e
	bl ov65_0221E330
	ldr r1, _0221E850 ; =ov65_0221E684
	ldr r0, _0221E848 ; =0x00002220
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0221E7FE:
	ldr r0, [r5, #4]
	bl sub_0202C6F4
	add r6, r0, #0
	mov r4, #0
_0221E808:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	bne _0221E828
	mov r0, #0
	str r0, [sp]
	ldr r1, _0221E838 ; =0x00003678
	ldr r0, [r5, #4]
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x1a
	bl sub_0203A280
	b _0221E82E
_0221E828:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0221E808
_0221E82E:
	ldr r1, _0221E854 ; =ov65_0221E740
	ldr r0, _0221E848 ; =0x00002220
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221E838: .word 0x00003678
_0221E83C: .word 0x000035F8
_0221E840: .word 0x000005B4
_0221E844: .word ov65_0221E72C
_0221E848: .word 0x00002220
_0221E84C: .word 0x000001B5
_0221E850: .word ov65_0221E684
_0221E854: .word ov65_0221E740
	thumb_func_end ov65_0221E740

