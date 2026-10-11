#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021EA324

	.text

	thumb_func_start ov73_021EA324
ov73_021EA324: ; 0x021EA324
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl Save_Rankings_Get
	ldr r0, [r4]
	str r0, [sp]
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x10]
	lsr r2, r2, #0x18
	bl Save_UpdateRankingsFromMixing
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov73_021EA324

