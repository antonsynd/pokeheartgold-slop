#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7278
	.extern ov14_021E60C0
	.extern ov14_021E71C8

    .text

	.text
	thumb_func_start ov14_021E7278
ov14_021E7278: ; 0x021E7278
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _021E7350 ; =0x000088DC
	ldr r4, [r1, r0]
	ldr r0, _021E7354 ; =0x00000222
	ldrh r5, [r4, #4]
	cmp r5, r0
	bne _021E728E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E728E:
	mov r0, #0
	str r0, [sp]
_021E7292:
	mov r0, #0x87
	lsl r0, r0, #2
	cmp r5, r0
	bhs _021E72CE
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	ldrb r0, [r7, #0x1f]
	add r2, r1, #0
	cmp r6, r0
	bne _021E72C2
	add r0, r7, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r2, r0
	bne _021E72C2
	mov r6, #0
	b _021E72EA
_021E72C2:
	add r0, r7, #0
	add r1, r6, #0
	bl ov14_021E60C0
	add r6, r0, #0
	b _021E72EA
_021E72CE:
	sub r2, r5, r0
	add r0, r7, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	cmp r2, r0
	bne _021E72E0
	mov r6, #0
	b _021E72EA
_021E72E0:
	add r0, r7, #0
	mov r1, #0xff
	bl ov14_021E60C0
	add r6, r0, #0
_021E72EA:
	cmp r6, #0
	beq _021E732E
	add r0, r6, #0
	mov r1, #0xac
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021E732E
	mov r5, #0
_021E72FE:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov14_021E71C8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7328
	mov r1, #1
	lsl r1, r0
	mov r0, #0xff
	ldrb r2, [r4, #6]
	eor r0, r1
	and r0, r2
	strb r0, [r4, #6]
_021E7328:
	add r5, r5, #1
	cmp r5, #4
	blo _021E72FE
_021E732E:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r5, [r4, #4]
	ldr r0, _021E7354 ; =0x00000222
	cmp r5, r0
	bne _021E7340
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7340:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0xf
	blo _021E7292
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7350: .word 0x000088DC
_021E7354: .word 0x00000222
	thumb_func_end ov14_021E7278

