#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8824

    .text

	.text
	thumb_func_start ov14_021E8824
ov14_021E8824: ; 0x021E8824
	push {r3, lr}
	ldr r1, _021E8848 ; =0x0000044E
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1d
	beq _021E8846
	mov r1, #0xc
	str r1, [sp]
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	sub r2, #0x11
	mov r3, #0
	bl sub_020198FC
_021E8846:
	pop {r3, pc}
	.balign 4, 0
_021E8848: .word 0x0000044E
	thumb_func_end ov14_021E8824

