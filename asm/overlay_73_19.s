#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E66F0
	.public ov73_021E67A8
	.public ov73_021E6890

	.text

	thumb_func_start ov73_021E6890
ov73_021E6890: ; 0x021E6890
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov73_021E67A8
	mov r0, #0xc6
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6890

