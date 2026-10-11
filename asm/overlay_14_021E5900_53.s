#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E79D8
	.extern ov14_021E7940
	.extern ov14_021F7BD8

    .text

	.text
	thumb_func_start ov14_021E79D8
ov14_021E79D8: ; 0x021E79D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021E7A04 ; =ov14_021F7BD8
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
_021E79E2:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov14_021E7940
	cmp r0, #1
	bne _021E79F6
	add r4, #0x80
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E79F6:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _021E79E2
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7A04: .word ov14_021F7BD8
	thumb_func_end ov14_021E79D8

