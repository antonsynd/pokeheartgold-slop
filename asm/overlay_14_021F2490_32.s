#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F33B0

    .text

	thumb_func_start ov14_021F33B0
ov14_021F33B0: ; 0x021F33B0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #7]
	ldr r1, _021F33E4 ; =0x3CCCCCCD
	sub r0, r0, #2
	strb r0, [r4, #7]
	ldr r0, [r4, #8]
	bl _fadd
	ldr r1, _021F33E4 ; =0x3CCCCCCD
	str r0, [r4, #8]
	bl _fadd
	str r0, [r4, #8]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _021F33D6
	mov r0, #0
	pop {r4, pc}
_021F33D6:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F33E4: .word 0x3CCCCCCD
	thumb_func_end ov14_021F33B0

