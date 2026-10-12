#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E80A8

    .text

	.text
	thumb_func_start ov14_021E80A8
ov14_021E80A8: ; 0x021E80A8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, sp, #0
	add r3, sp, #0
	mov r1, #1
	add r2, #3
	add r3, #2
	bl sub_02019B1C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	mov r0, #0x2f
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r0, sp, #0
	mov r1, #3
	ldrsb r2, [r0, r1]
	mov r1, #1
	ldrsb r1, [r0, r1]
	cmp r2, r1
	bne _021E8120
	mov r1, #2
	ldrsb r2, [r0, r1]
	mov r1, #0
	ldrsb r0, [r0, r1]
	cmp r2, r0
	beq _021E8126
_021E8120:
	add r0, r5, #0
	bl ov14_021F32E0
_021E8126:
	cmp r6, #0
	bne _021E8134
	cmp r4, #0
	bne _021E8134
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021E8134:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E80A8

