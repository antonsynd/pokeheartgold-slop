#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EFDE4.inc"
	.include "global.inc"
	.public ov14_021F028C
	.public ov14_021F0314
	.extern ov14_021F0234

    .text

	.text
	thumb_func_start ov14_021F028C
ov14_021F028C: ; 0x021F028C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x1f]
	add r4, r1, #0
	cmp r0, #0
	bne _021F029C
	mov r0, #0x11
	b _021F029E
_021F029C:
	sub r0, r0, #1
_021F029E:
	strb r0, [r5, #0x1f]
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F2DE8
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov14_021E783C
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F0302
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r0, [r5]
	ldr r0, [r0, #8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F0302
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
_021F0302:
	ldr r1, _021F0310 ; =ov14_021E92AC
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F0310: .word ov14_021E92AC
	thumb_func_end ov14_021F028C

	thumb_func_start ov14_021F0314
ov14_021F0314: ; 0x021F0314
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x1f]
	add r4, r1, #0
	cmp r0, #0x11
	bne _021F0324
	mov r0, #0
	b _021F0326
_021F0324:
	add r0, r0, #1
_021F0326:
	strb r0, [r5, #0x1f]
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F2DE8
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov14_021E783C
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #4
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F038A
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r0, [r5]
	ldr r0, [r0, #8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F038A
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
_021F038A:
	ldr r1, _021F0398 ; =ov14_021E9370
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F0398: .word ov14_021E9370
	thumb_func_end ov14_021F0314

