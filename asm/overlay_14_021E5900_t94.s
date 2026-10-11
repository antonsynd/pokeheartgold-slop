#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E834C

    .text

	.text
	thumb_func_start ov14_021E834C
ov14_021E834C: ; 0x021E834C
	push {r3, lr}
	add r2, sp, #0
	mov r1, #0xb
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r1, sp, #0
	mov r0, #0
	ldrsb r1, [r1, r0]
	cmp r1, #0x15
	bne _021E8366
	mov r0, #1
_021E8366:
	pop {r3, pc}
	thumb_func_end ov14_021E834C

