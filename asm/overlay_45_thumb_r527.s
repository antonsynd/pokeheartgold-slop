#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230CB0
	.extern ov45_02254F1C

	.text

	.text
	thumb_func_start ov45_02230CB0
ov45_02230CB0: ; 0x02230CB0
	push {r3, lr}
	ldrb r1, [r0]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bne _02230CD0
	ldrb r1, [r0, #1]
	lsl r2, r1, #0x1f
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _02230CD0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	lsl r2, r1, #2
	ldr r1, _02230CD4 ; =ov45_02254F1C
	ldr r1, [r1, r2]
	blx r1
_02230CD0:
	pop {r3, pc}
	nop
_02230CD4: .word ov45_02254F1C
	thumb_func_end ov45_02230CB0

