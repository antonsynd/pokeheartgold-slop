#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2B88
	.public ov14_021F2C84
	.public ov14_021F34EC
	.public ov14_021F3714
	.public ov14_021F3C08
	.public ov14_021F3DE8
	.public ov14_021F41E4
	.public ov14_021F42EC

    .text

	thumb_func_start ov14_021F2B88
ov14_021F2B88: ; 0x021F2B88
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F41E4
	add r0, r4, #0
	bl ov14_021F42EC
	add r0, r4, #0
	bl ov14_021F2C84
	add r0, r4, #0
	bl ov14_021F3DE8
	add r0, r4, #0
	bl ov14_021F3714
	add r0, r4, #0
	bl ov14_021F34EC
	add r0, r4, #0
	bl ov14_021F3C08
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2B88

