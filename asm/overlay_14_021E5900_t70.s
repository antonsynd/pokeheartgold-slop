#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7EE0
	.public ov14_021E7F4C

    .text

	.text
	thumb_func_start ov14_021E7EE0
ov14_021E7EE0: ; 0x021E7EE0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r0, [r0, r2]
	cmp r0, #6
	beq _021E7F46
	sub r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	sub r3, r1, #2
	bl sub_020198FC
	add r5, sp, #4
	mov r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _021E7F46
	mov r3, #0
	ldrsb r3, [r5, r3]
	add r0, r4, #0
	mov r1, #0xa
	add r3, #0xf
	lsl r3, r3, #0x18
	mov r2, #0x18
	asr r3, r3, #0x18
	bl sub_020196E8
	mov r1, #0xa
	add r3, r1, #0
	add r0, r5, #0
	mov r2, #0
	ldrsb r0, [r0, r2]
	sub r3, #0xb
	sub r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, #0
	bl sub_020198FC
_021E7F46:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7EE0

	thumb_func_start ov14_021E7F4C
ov14_021E7F4C: ; 0x021E7F4C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0x18
	beq _021E7FB4
	mov r0, #0x18
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020198FC
	add r5, sp, #4
	mov r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _021E7FB4
	mov r3, #0
	ldrsb r3, [r5, r3]
	add r0, r4, #0
	mov r1, #0xa
	add r3, #0xf
	lsl r3, r3, #0x18
	mov r2, #0x18
	asr r3, r3, #0x18
	bl sub_020196E8
	add r0, r5, #0
	mov r2, #0
	ldrsb r1, [r0, r2]
	mov r0, #0x18
	mov r3, #1
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020198FC
_021E7FB4:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E7F4C

