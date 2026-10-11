#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_022302E4
	.extern _022577C0
	.extern ov45_0223023C

	.text

	.text
	thumb_func_start ov45_022302E4
ov45_022302E4: ; 0x022302E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02230364 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _02230368 ; =0x0000069E
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0223031E
	bl ov00_021E7144
	add r4, r0, #0
	cmp r4, #4
	bls _02230300
	bl GF_AssertFail
_02230300:
	ldr r0, _02230364 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0223036C ; =0x000005B8
	add r2, r1, r0
	add r0, #0xe4
	ldrh r1, [r1, r0]
	mov r0, #0x4c
	mul r0, r1
	add r0, r2, r0
	ldr r1, [r0, #8]
	cmp r1, r4
	beq _0223031E
	str r4, [r0, #8]
	bl ov45_02232BB0
_0223031E:
	mov r4, #0
	ldr r6, _02230364 ; =_022577C0
	ldr r7, _02230370 ; =0x000005FC
	add r5, r4, #0
_02230326:
	ldr r0, [r6]
	add r0, r0, r5
	ldrh r1, [r0, r7]
	cmp r1, #1
	bne _0223035A
	ldr r1, _02230374 ; =0x000005FE
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02230342
	ldr r1, _02230374 ; =0x000005FE
	ldrh r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02230374 ; =0x000005FE
	strh r2, [r0, r1]
_02230342:
	ldr r0, [r6]
	add r1, r4, #0
	bl ov45_0223023C
	ldr r1, [r6]
	ldr r2, _02230374 ; =0x000005FE
	add r1, r1, r5
	ldrh r2, [r1, r2]
	cmp r0, r2
	bhs _0223035A
	ldr r2, _02230374 ; =0x000005FE
	strh r0, [r1, r2]
_0223035A:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #3
	blt _02230326
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02230364: .word _022577C0
_02230368: .word 0x0000069E
_0223036C: .word 0x000005B8
_02230370: .word 0x000005FC
_02230374: .word 0x000005FE
	thumb_func_end ov45_022302E4

