#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F1488
	.extern ov112_021FF2EC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F1488
ov112_021F1488: ; 0x021F1488
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r2, [sp, #8]
	add r6, r1, #0
	add r4, r3, #0
	str r0, [sp, #0xc]
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl String_New
	add r7, r0, #0
	ldrh r0, [r6]
	cmp r0, #0
	beq _021F14C6
	mov r2, #0
	cmp r4, #0
	ble _021F14C6
	ldr r0, _021F14FC ; =0x0000FFFF
	add r3, r6, #0
_021F14B2:
	ldrh r1, [r3]
	cmp r1, r0
	bne _021F14BE
	mov r0, #0
	str r0, [sp, #0xc]
	b _021F14C6
_021F14BE:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, r4
	blt _021F14B2
_021F14C6:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F14D6
	ldr r1, _021F1500 ; =ov112_021FF2EC
	add r0, r7, #0
	bl CopyU16ArrayToString
	b _021F14DE
_021F14D6:
	add r0, r7, #0
	add r1, r6, #0
	bl CopyU16ArrayToString
_021F14DE:
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r5, #0x58]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl BufferString
	add r0, r7, #0
	bl String_Delete
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F14FC: .word 0x0000FFFF
_021F1500: .word ov112_021FF2EC
	thumb_func_end ov112_021F1488

