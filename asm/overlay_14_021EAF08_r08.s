#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EB290
	.extern ov14_021F7D50

    .text

	.text
	thumb_func_start ov14_021EB290
ov14_021EB290: ; 0x021EB290
	push {r3, lr}
	ldrb r2, [r0, #0x1e]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021EB2A4 ; =ov14_021F7D50
	ldr r1, [r1, r3]
	blx r1
	mov r0, #0xa
	pop {r3, pc}
	.balign 4, 0
_021EB2A4: .word ov14_021F7D50
	thumb_func_end ov14_021EB290

