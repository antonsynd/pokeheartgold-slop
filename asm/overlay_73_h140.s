#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E926C
	.extern ov73_021EA0F0
	.extern ov73_021EA134

	.text

	.text
	thumb_func_start ov73_021E926C
ov73_021E926C: ; 0x021E926C
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r2, _021E9368 ; =gSystem
	mov r1, #0x40
	ldr r3, [r2, #0x4c]
	add r4, r0, #0
	tst r1, r3
	beq _021E92BA
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r1, r0
	ble _021E92A0
	add r0, r4, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0]
_021E92A0:
	ldr r0, _021E936C ; =0x00000DF8
	ldr r1, _021E9370 ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4]
	mov r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E9374 ; =0x000005DC
	bl PlaySE
	b _021E9360
_021E92BA:
	mov r1, #0x80
	tst r1, r3
	beq _021E92FC
	add r0, #0x9c
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bge _021E92E2
	add r0, r4, #0
	add r0, #0x98
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0]
_021E92E2:
	ldr r0, _021E936C ; =0x00000DF8
	ldr r1, _021E9370 ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4]
	mov r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E9374 ; =0x000005DC
	bl PlaySE
	b _021E9360
_021E92FC:
	ldr r2, [r2, #0x48]
	mov r1, #1
	tst r1, r2
	beq _021E9348
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov00_021ECB94
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x94
	add r2, #0x9c
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r2, [r2]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0
	bl sub_0202D720
	cmp r0, #0
	beq _021E9332
	mov r0, #0x14
	b _021E9334
_021E9332:
	mov r0, #0x10
_021E9334:
	mov r1, #0
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r2, r1, #0
	bl ov73_021EA134
	ldr r0, _021E9374 ; =0x000005DC
	bl PlaySE
	b _021E9360
_021E9348:
	mov r1, #2
	tst r1, r2
	beq _021E9360
	mov r1, #0
	add r2, r1, #0
	bl ov73_021EA134
	mov r0, #0x15
	str r0, [r4, #0x1c]
	ldr r0, _021E9374 ; =0x000005DC
	bl PlaySE
_021E9360:
	mov r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E9368: .word gSystem
_021E936C: .word 0x00000DF8
_021E9370: .word 0x00000BE8
_021E9374: .word 0x000005DC
	thumb_func_end ov73_021E926C

