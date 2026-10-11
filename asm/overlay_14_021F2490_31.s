#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3380

    .text

	thumb_func_start ov14_021F3380
ov14_021F3380: ; 0x021F3380
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #7]
	ldr r1, _021F33AC ; =0x3CCCCCCD
	add r0, r0, #1
	strb r0, [r4, #7]
	ldr r0, [r4, #8]
	bl _fsub
	str r0, [r4, #8]
	ldrb r0, [r4, #7]
	cmp r0, #0x28
	bne _021F339E
	mov r0, #0
	pop {r4, pc}
_021F339E:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F33AC: .word 0x3CCCCCCD
	thumb_func_end ov14_021F3380

