#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230E28

	.text

	.text
	thumb_func_start ov45_02230E28
ov45_02230E28: ; 0x02230E28
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1e
	bne _02230E50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _02230E50
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02023EA4
	add r4, #0xc
	add r0, r4, #0
	mov r1, #1
	bl sub_020182A0
	pop {r4, pc}
_02230E50:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023EA4
	add r4, #0xc
	add r0, r4, #0
	mov r1, #0
	bl sub_020182A0
	pop {r4, pc}
	thumb_func_end ov45_02230E28

