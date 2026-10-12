#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8434
	.public ov14_021E84A4

    .text

	.text
	thumb_func_start ov14_021E8434
ov14_021E8434: ; 0x021E8434
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #3
	add r2, #1
	add r3, sp, #4
	add r5, r0, #0
	bl sub_02019B1C
	add r6, sp, #4
	mov r0, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0x15
	beq _021E849E
	mov r4, #0
	mov r7, #1
_021E8454:
	ldrsb r0, [r6, r7]
	mov r2, #0
	add r1, r4, #3
	sub r0, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mvn r2, r2
	mov r3, #0
	bl sub_020198FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _021E8454
	add r2, sp, #4
	add r0, r5, #0
	mov r1, #0xb
	add r2, #1
	add r3, sp, #4
	bl sub_02019B1C
	mov r1, #0xb
	add r3, r1, #0
	add r0, sp, #4
	mov r2, #0
	ldrsb r0, [r0, r2]
	sub r3, #0xc
	sub r0, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	bl sub_020198FC
_021E849E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8434

	thumb_func_start ov14_021E84A4
ov14_021E84A4: ; 0x021E84A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #3
	add r2, #1
	add r3, sp, #4
	add r5, r0, #0
	bl sub_02019B1C
	add r6, sp, #4
	mov r0, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0x20
	beq _021E850E
	mov r4, #0
	mov r7, #0x20
_021E84C4:
	mov r0, #1
	ldrsb r0, [r6, r0]
	add r1, r4, #3
	mov r2, #1
	sub r0, r7, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl sub_020198FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _021E84C4
	add r2, sp, #4
	add r0, r5, #0
	mov r1, #0xb
	add r2, #1
	add r3, sp, #4
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r1, [r0, r2]
	mov r0, #0x18
	mov r3, #1
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_020198FC
_021E850E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E84A4

