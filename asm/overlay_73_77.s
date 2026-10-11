#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8D0C

	.text

	thumb_func_start ov73_021E8D0C
ov73_021E8D0C: ; 0x021E8D0C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x2c
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl ov00_021EC3F0
	mov r0, #2
	bl ov00_021EC454
	bl ov00_021EC4A4
	mov r0, #3
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov73_021E8D0C

