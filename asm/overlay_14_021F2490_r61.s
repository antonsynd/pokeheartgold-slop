#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3420
	.public ov14_021F3488
	.public ov14_021F34C8
	.public ov14_021F34DC
	.extern ov14_021F2A9C

    .text

	.text
	thumb_func_start ov14_021F3420
ov14_021F3420: ; 0x021F3420
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #1
	bne _021F3468
	cmp r4, r6
	bhs _021F3480
	ldr r7, _021F3484 ; =0x00004094
_021F3436:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	ldr r0, [r5, #0x34]
	bne _021F3454
	add r1, r0, r4
	ldrb r1, [r1, r7]
	mov r2, #1
	bl ov14_021F2A9C
	b _021F3460
_021F3454:
	ldr r1, _021F3484 ; =0x00004094
	add r2, r0, r4
	ldrb r1, [r2, r1]
	mov r2, #0
	bl ov14_021F2A9C
_021F3460:
	add r4, r4, #1
	cmp r4, r6
	blo _021F3436
	pop {r3, r4, r5, r6, r7, pc}
_021F3468:
	cmp r4, r6
	bhs _021F3480
_021F346C:
	ldr r0, [r5, #0x34]
	ldr r1, _021F3484 ; =0x00004094
	add r2, r0, r4
	ldrb r1, [r2, r1]
	add r2, r7, #0
	bl ov14_021F2A9C
	add r4, r4, #1
	cmp r4, r6
	blo _021F346C
_021F3480:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3484: .word 0x00004094
	thumb_func_end ov14_021F3420

	thumb_func_start ov14_021F3488
ov14_021F3488: ; 0x021F3488
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x80
	add r7, r2, #0
	tst r0, r5
	beq _021F349A
	mov r4, #1
	b _021F349C
_021F349A:
	mov r4, #0
_021F349C:
	mov r0, #1
	tst r0, r5
	beq _021F34B0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0x1e
	str r4, [sp]
	bl ov14_021F3420
_021F34B0:
	mov r0, #2
	tst r0, r5
	beq _021F34C4
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x1e
	mov r3, #0x24
	str r4, [sp]
	bl ov14_021F3420
_021F34C4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F3488

	thumb_func_start ov14_021F34C8
ov14_021F34C8: ; 0x021F34C8
	add r3, r0, r1
	ldr r1, _021F34D4 ; =0x00004094
	ldrb r1, [r3, r1]
	ldr r3, _021F34D8 ; =ov14_021F2A9C
	bx r3
	nop
_021F34D4: .word 0x00004094
_021F34D8: .word ov14_021F2A9C
	thumb_func_end ov14_021F34C8

	thumb_func_start ov14_021F34DC
ov14_021F34DC: ; 0x021F34DC
	push {r3, lr}
	add r2, r1, #0
	mov r1, #1
	add r3, r2, #1
	str r1, [sp]
	bl ov14_021F3420
	pop {r3, pc}
	thumb_func_end ov14_021F34DC

