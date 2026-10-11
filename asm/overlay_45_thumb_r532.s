#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230DF4
	.extern ov45_02230AA4
	.extern ov45_02230E28
	.extern ov45_02230E78

	.text

	.text
	thumb_func_start ov45_02230DF4
ov45_02230DF4: ; 0x02230DF4
	push {r4, lr}
	add r4, r0, #0
	bl ov45_02230AA4
	cmp r0, #0
	beq _02230E24
	ldr r0, [r4, #8]
	bl ov45_02230E78
	cmp r0, #0
	ldrb r1, [r4]
	bne _02230E18
	mov r0, #0x30
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4]
	b _02230E1E
_02230E18:
	mov r0, #0x30
	bic r1, r0
	strb r1, [r4]
_02230E1E:
	add r0, r4, #0
	bl ov45_02230E28
_02230E24:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov45_02230DF4

