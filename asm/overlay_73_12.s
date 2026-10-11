#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E6484
	.public ov73_021E6508
	.public ov73_021E7340
	.public ov73_021E7468

	.text

	thumb_func_start ov73_021E6484
ov73_021E6484: ; 0x021E6484
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov73_021E6508
	bl sub_0203769C
	cmp r0, #0
	bne _021E64A6
	bl ov73_021E7340
	cmp r0, #1
	beq _021E64AC
	add r0, r5, #0
	bl ov73_021E7468
	b _021E64AC
_021E64A6:
	add r0, r5, #0
	bl ov73_021E7468
_021E64AC:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6484

