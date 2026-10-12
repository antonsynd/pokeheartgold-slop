#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8544

    .text

	.text
	thumb_func_start ov14_021E8544
ov14_021E8544: ; 0x021E8544
	push {r3, lr}
	add r2, sp, #0
	mov r1, #3
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r1, sp, #0
	mov r0, #1
	ldrsb r1, [r1, r0]
	cmp r1, #0x20
	bne _021E855E
	mov r0, #0
_021E855E:
	pop {r3, pc}
	thumb_func_end ov14_021E8544

